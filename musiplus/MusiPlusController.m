#include "MusiPlusController.h"
#import <spawn.h>

@implementation MusiPlusController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];

    UIBarButtonItem *respringButton = [[UIBarButtonItem alloc] initWithTitle:@"Respring" style:UIBarButtonItemStylePlain target:self action:@selector(respring)];
    self.navigationItem.rightBarButtonItem = respringButton;
}

- (NSArray *)specifiers {
    if (!_specifiers) {
        _specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
    }

    return _specifiers;
}

-(void)gitHubM {
  [[UIApplication sharedApplication]
  openURL: [NSURL URLWithString:@"https://github.com/MasonNacs"]
  options:@{}
  completionHandler:nil];
}

-(void)gitHubS {
  [[UIApplication sharedApplication]
  openURL: [NSURL URLWithString:@"https://github.com/Skittyblock"]
  options:@{}
  completionHandler:nil];
}

-(void)gitHubSp {
  [[UIApplication sharedApplication]
  openURL: [NSURL URLWithString:@"https://github.com/SparkDev97"]
  options:@{}
  completionHandler:nil];
}

- (void)respring {
    pid_t pid;
    const char *args[] = {"killall", "-9", "backboardd", NULL};
    posix_spawn(&pid, "/usr/bin/killall", NULL, NULL, (char *const *)args, NULL);
}

@end
