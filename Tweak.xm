#import <UIKit/UIKit.h>
#import "SparkColourPickerUtils.h"

NSDictionary* prefs = [NSDictionary dictionaryWithContentsOfFile: @"/var/mobile/Library/Preferences/com.masonnacs.musiplus.plist"];
UIColor* selectedColorB = [SparkColourPickerUtils colourWithString: [prefs objectForKey:@"bcolor"] withFallback: @"#1a0014"];
UIColor* selectedColorF = [SparkColourPickerUtils colourWithString: [prefs objectForKey:@"fcolor"] withFallback: @"#ffd3f6"];

//@interface MSearchLoadingImageView
//     @property(nonatomic, copy, readwrite) UIColor* backgroundColor;
//@end

@interface MAdBannerView
     @property(nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end

%hook MDarkTheme
- (id)backgroundColor {
      return selectedColorB;
}
- (id)tintColor {
      return selectedColorF;
}
%end

//%hook MSearchLoadingImageView
//- (void)layoutSubviews {
//      self.backgroundColor = selectedColorF;
//}
//%end

%hook MAdBannerView
- (void)layoutSubviews {
      self.hidden = YES;
}
%end

%hook MPGoogleAdMobRewardedVideoCustomEvent
- (bool)hasAdAvailable {
    return 0;
}
%end

%hook UnityAdsInterstitialCustomEvent
- (bool)hasAdAvailable {
    return 0;
}
%end

%hook MNativeAdTableViewController
- (bool)hasAdToShow {
    return 0;
}
%end

%hook AppLovinRewardedVideoCustomEvent
- (bool)hasAdAvailable {
    return 0;
}
%end

%hook TapjoyRewardedVideoCustomEvent
- (bool)hasAdAvailable {
    return 0;
}
%end

%hook FacebookRewardedVideoCustomEvent
- (bool)hasAdAvailable {
    return 0;
}
%end

%hook InneractiveRewardedVideoCustomEvent
- (bool)hasAdAvailable {
    return 0;
}
%end

%hook InMobiRewardedCustomEvent
- (bool)hasAdAvailable {
    return 0;
}
%end

%hook VungleRewardedVideoCustomEvent
- (bool)hasAdAvailable {
    return 0;
}
%end

%hook MNativeAdInstance
- (bool)hasAdToShow {
    return 0;
}
%end

%hook MPVerizonRewardedVideoCustomEvent
- (bool)hasAdAvailable {
    return 0;
}
%end

%hook UnityAdsRewardedVideoCustomEvent
- (bool)hasAdAvailable {
    return 0;
}
%end

%hook MPMoPubRewardedPlayableCustomEvent
- (bool)hasAdAvailable {
    return 0;
}
%end

%hook MPMoPubRewardedVideoCustomEvent
- (bool)hasAdAvailable {
    return 0;
}
%end

%hook MPRewardedVideoAdapter
- (bool)hasAdAvailable {
    return 0;
}
%end

%hook MPRewardedVideoAdManager
- (bool)hasAdAvailable {
    return 0;
}
%end

%hook MPRewardedVideoCustomEvent
- (bool)hasAdAvailable {
    return 0;
}
%end

%hook MPVASTInterstitialCustomEvent
- (bool)hasAdAvailable {
    return 0;
}
%end

%hook MPVASTInterstitialCustomEvent
- (void)setHasAdAvailable:(bool)arg1 {
    arg1 = 0;
    return %orig;
}
%end

%hook MPRewardedVideo
+ (bool)hasAdAvailableForAdUnitID:(id)arg1 {
    return 0;
}
%end

%hook FBAdMultiProductView
- (bool)hasAdMedia {
    return 0;
}
%end

%hook FBMediaView
- (bool)hasAdMedia {
    return 0;
}
%end

%hook MAdMobInterstitialAdController
- (bool)isReady {
    return 0;
}
%end

%hook MAmazonInterstitialAdController
- (bool)isReady {
    return 0;
}
%end

%hook MMoPubInterstitialAdController
- (bool)isReady {
    return 0;
}
%end

%hook MoPub_InternalAvidAdSession
- (bool)isReady {
    return 0;
}
%end

%hook MoPub_InternalAvidAdSession
- (void)setIsReady:(bool)arg1 {
    arg1 = 0;
    return %orig;
}
%end

%hook MoPub_AvidProvider
- (bool)isReady {
    return 0;
}
%end

%hook MPBannerAdManager
- (bool)requestingAdapterIsReadyToBePresented {
    return 0;
}
%end

%hook MoPub_AvidEventDispatcher
- (bool)isReadyEventReceived {
    return 0;
}
%end

%hook ALIncentivizedInterstitialAd
- (bool)isReadyForDisplay {
    return 0;
}
%end

%hook ALAdView
- (bool)isReadyForDisplay {
    return 0;
}
%end

%hook ALInterstitialAd
- (bool)isReadyForDisplay {
    return 0;
}
%end

%hook ALMediatedAd
- (bool)isReady {
    return 0;
}
%end

%hook ALStoreProductViewControllerWrapper
- (bool)isReady {
    return 0;
}
%end

%hook MAFullscreenAdController
- (bool)isReady {
    return 0;
}
%end

%hook MAInterstitialAd
- (bool)isReady {
    return 0;
}
%end

%hook ALStoreKitProductViewController
- (bool)isReady {
    return 0;
}
%end

%hook MAAd
- (bool)isReady {
    return 0;
}
%end

%hook MARewardedAd
- (bool)isReady {
    return 0;
}
%end

%hook GADRewardBasedVideoAd
- (bool)isReady {
    return 0;
}
%end

%hook GADRewardedAd
- (bool)isReady {
    return 0;
}
%end

%hook GADInterstitial
- (bool)isReady {
    return 0;
}
%end

%hook IAMRAIDProtocolController
- (bool)clientIsReady {
    return %orig;
}
%end

%hook IAMRAIDProtocolController
- (void)setClientIsReady:(bool)arg1 {
    return %orig;
}
%end

%hook IMInterstitial
- (bool)isReady {
    return 0;
}
%end

%hook IMInterstitial
- (void)setIsReady:(bool)arg1 {
    arg1 = 0;
    return %orig;
}
%end

%hook IMNative
- (bool)isReady {
    return 0;
}
%end

%hook IMNative
- (void)setIsReady:(bool)arg1 {
    arg1 = 0;
    return %orig;
}
%end

%hook IMInterstitialAdUnit
- (bool)isReady {
    return 0;
}
%end

%hook VungleAdPart
- (bool)isReady {
    return 0;
}
%end

%hook VungleOperation
- (bool)isReady {
    return 0;
}
%end

%hook UnityAds
+ (bool)isReady {
    return 0;
}
%end

%hook UADSPlacement
+ (bool)isReady:(id)arg1 {
    return 0;
}
%end

%hook UADSPlacement
+ (bool)isReady {
    return 0;
}
%end

%hook UnityMonetization
+ (bool)isReady:(id)arg1 {
    return 0;
}
%end

%hook UMONPlacementContents
+ (bool)isReady:(id)arg1 {
    return 0;
}
%end

%hook UMONNotAvailablePlacementContent
- (bool)isReady {
    return 0;
}
%end

%hook UMONPlacementContent
- (bool)isReady {
    return 0;
}
%end

%hook UMONNoFillPlacementContent
- (bool)isReady {
    return 0;
}
%end

%hook FBAdDSLBridgeViewController
- (bool)isReadyToPresent {
    return 0;
}
%end

%hook FBAdOnDeviceHistoryDataManager
- (bool)isReady {
    return 0;
}
%end

%hook FBAdOnDeviceHistoryDataManager
- (void)setIsReady:(bool)arg1 {
    arg1 = 0;
    return %orig;
}
%end

%hook FBAdReportingConfig
- (bool)isReadyForFullscreen {
    return 0;
}
%end

%hook FBAdReportingConfig
- (bool)isReadyForNonFullscreen {
    return 0;
}
%end

%hook FBInterstitialAd
- (bool)isReady {
    return 0;
}
%end

%hook FBRewardedVideoAd
- (bool)isReady {
    return 0;
}
%end

%hook FNFIOSurfacePlayerLayer
- (bool)isReadyForDisplay {
    return 0;
}
%end

%hook FBAdDSLViewController
- (bool)isReadyToPresent {
    return 0;
}
%end

%hook FBAdSyncBundleImpl
- (bool)isReady {
    return 0;
}
%end
