package com.cloud.tmc.miniapp;

import android.content.Context;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.cloud.tmc.ad.IAdManagerProxy;
import com.cloud.tmc.ad.bridge.AdAthenaBridge;
import com.cloud.tmc.ad.bridge.AdBridge;
import com.cloud.tmc.integration.MsgDispatcher;
import com.cloud.tmc.integration.bridge.AppBridge;
import com.cloud.tmc.integration.bridge.AppOptionsBridge;
import com.cloud.tmc.integration.bridge.AudioEffectBridge;
import com.cloud.tmc.integration.bridge.AudioRecordBridge;
import com.cloud.tmc.integration.bridge.BatteryBridge;
import com.cloud.tmc.integration.bridge.CommunicationBridge;
import com.cloud.tmc.integration.bridge.FileBridge;
import com.cloud.tmc.integration.bridge.ForegroundAudioBridge;
import com.cloud.tmc.integration.bridge.FrameworkStorageBridge;
import com.cloud.tmc.integration.bridge.GetClipboardBridge;
import com.cloud.tmc.integration.bridge.GetSdkVersionBridge;
import com.cloud.tmc.integration.bridge.GetSystemInfoBridge;
import com.cloud.tmc.integration.bridge.GlobalStorageBridge;
import com.cloud.tmc.integration.bridge.HardwareBridge;
import com.cloud.tmc.integration.bridge.ImageSelectBridge;
import com.cloud.tmc.integration.bridge.InnerWarmupBridge;
import com.cloud.tmc.integration.bridge.KeyboardBridge;
import com.cloud.tmc.integration.bridge.LatestUseBridge;
import com.cloud.tmc.integration.bridge.LocalStorageBridge;
import com.cloud.tmc.integration.bridge.LocationBridge;
import com.cloud.tmc.integration.bridge.MakePhoneCallBridge;
import com.cloud.tmc.integration.bridge.NativeRequestBridge;
import com.cloud.tmc.integration.bridge.NavigateBridge;
import com.cloud.tmc.integration.bridge.NavigationBarBridge;
import com.cloud.tmc.integration.bridge.NetworkBridge;
import com.cloud.tmc.integration.bridge.OfflineAppBridge;
import com.cloud.tmc.integration.bridge.PayBridge;
import com.cloud.tmc.integration.bridge.PerfBridge;
import com.cloud.tmc.integration.bridge.PrefetchDataBridge;
import com.cloud.tmc.integration.bridge.PullRefreshBridge;
import com.cloud.tmc.integration.bridge.ReportBridge;
import com.cloud.tmc.integration.bridge.ScreenBridge;
import com.cloud.tmc.integration.bridge.ScreenShotBridge;
import com.cloud.tmc.integration.bridge.SendToSmsBridge;
import com.cloud.tmc.integration.bridge.SetClipboardBridge;
import com.cloud.tmc.integration.bridge.ShareBridge;
import com.cloud.tmc.integration.bridge.SystemAbilityBridge;
import com.cloud.tmc.integration.bridge.TouchEventBridge;
import com.cloud.tmc.integration.bridge.VibrateBridge;
import com.cloud.tmc.integration.bridge.WebViewAbilityBridge;
import com.cloud.tmc.integration.bridge.WifiBridge;
import com.cloud.tmc.integration.core.TmcEngineFactory;
import com.cloud.tmc.integration.defaultImpl.AdsenseManager;
import com.cloud.tmc.integration.defaultImpl.ConfigServiceImpl;
import com.cloud.tmc.integration.defaultImpl.DefaultBridgeFactory;
import com.cloud.tmc.integration.defaultImpl.DefaultImageLoaderImpl;
import com.cloud.tmc.integration.defaultImpl.DefaultWebViewDownloadImpl;
import com.cloud.tmc.integration.defaultImpl.InjectJSProxyImp;
import com.cloud.tmc.integration.defaultImpl.LocalChannelImp;
import com.cloud.tmc.integration.defaultImpl.NativePermissionImpl;
import com.cloud.tmc.integration.defaultImpl.OnRenderProcessGoneManager;
import com.cloud.tmc.integration.defaultImpl.RenderFactory;
import com.cloud.tmc.integration.defaultImpl.RenderWebviewStrategyCache;
import com.cloud.tmc.integration.defaultImpl.RequestConfigManager;
import com.cloud.tmc.integration.defaultImpl.TmcFileImpl;
import com.cloud.tmc.integration.defaultImpl.TmcKVStorageImpl;
import com.cloud.tmc.integration.defaultImpl.TmcPathImpl;
import com.cloud.tmc.integration.defaultImpl.TmcPerformanceAndErrorTracker;
import com.cloud.tmc.integration.defaultImpl.VibrateProxyImpl;
import com.cloud.tmc.integration.defaultImpl.WorkerManagerFactory;
import com.cloud.tmc.integration.dispatch.BridgeDispatcher;
import com.cloud.tmc.integration.internalBridge.GetAppConfigBridge;
import com.cloud.tmc.integration.internalBridge.GetPackageFileBridge;
import com.cloud.tmc.integration.internalBridge.NativeLogBridge;
import com.cloud.tmc.integration.internalBridge.OfflineDownloadBridge;
import com.cloud.tmc.integration.internalBridge.RegisterWorkerBridge;
import com.cloud.tmc.integration.invoke.DefaultExtensionInvokerFactory;
import com.cloud.tmc.integration.invoke.ExtensionInvokerFactory;
import com.cloud.tmc.integration.invoke.extension.ExtensionPoint;
import com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool;
import com.cloud.tmc.integration.performance.innerrender.InnerRenderPool;
import com.cloud.tmc.integration.performance.innerwebview.IInnerH5WebviewPool;
import com.cloud.tmc.integration.performance.innerwebview.InnerH5WebviewPool;
import com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool;
import com.cloud.tmc.integration.performance.innerworker.InnerWorkerPool;
import com.cloud.tmc.integration.performance.render.IRenderPool;
import com.cloud.tmc.integration.performance.render.RenderPool;
import com.cloud.tmc.integration.performance.worker.IWorkerPool;
import com.cloud.tmc.integration.performance.worker.WorkerPool;
import com.cloud.tmc.integration.performanceanalyse.screen.IScreenInspectProxy;
import com.cloud.tmc.integration.permission.proxy.AuthenticationProxy;
import com.cloud.tmc.integration.proxy.AnimtionProxy;
import com.cloud.tmc.integration.proxy.AuthorityProxy;
import com.cloud.tmc.integration.proxy.DialogProxy;
import com.cloud.tmc.integration.proxy.FileProxy;
import com.cloud.tmc.integration.proxy.IAdActivityGetProxy;
import com.cloud.tmc.integration.proxy.IAdsenseProxy;
import com.cloud.tmc.integration.proxy.IAppInfoManagerProxy;
import com.cloud.tmc.integration.proxy.IFragmentManagerFactory;
import com.cloud.tmc.integration.proxy.IKeyboardProxy;
import com.cloud.tmc.integration.proxy.IRefreshProxy;
import com.cloud.tmc.integration.proxy.IRequestConfigProxy;
import com.cloud.tmc.integration.proxy.ITaskQueueProxy;
import com.cloud.tmc.integration.proxy.IUpdateLoadingStepProxy;
import com.cloud.tmc.integration.proxy.ImageSelectProxy;
import com.cloud.tmc.integration.proxy.LauncherReportProxy;
import com.cloud.tmc.integration.proxy.NativePermissionProxy;
import com.cloud.tmc.integration.proxy.PathProxy;
import com.cloud.tmc.integration.proxy.ReportFactoryProxy;
import com.cloud.tmc.integration.proxy.ReportProxy;
import com.cloud.tmc.integration.proxy.StartActivityProxy;
import com.cloud.tmc.integration.proxy.ToastProxy;
import com.cloud.tmc.integration.proxy.VibrateProxy;
import com.cloud.tmc.integration.resource.BaseResourceProcessor;
import com.cloud.tmc.integration.resource.FileResourceManager;
import com.cloud.tmc.integration.resource.ImageResourceManager;
import com.cloud.tmc.integration.resource.PackageResourceManager;
import com.cloud.tmc.integration.structure.VirtualAppManager;
import com.cloud.tmc.integration.structure.impl.VirtualAppManagerImpl;
import com.cloud.tmc.kernel.bridge.IMsgDispatcher;
import com.cloud.tmc.kernel.coreimpl.DefaultEngineRouterManager;
import com.cloud.tmc.kernel.coreimpl.DefaultExecutorService;
import com.cloud.tmc.kernel.coreimpl.eventcenter.DefaultEventCenterFactory;
import com.cloud.tmc.kernel.engine.EngineRouterManager;
import com.cloud.tmc.kernel.executor.IExecutorService;
import com.cloud.tmc.kernel.extension.BridgeExtension;
import com.cloud.tmc.kernel.extension.DefaultExtensionManager;
import com.cloud.tmc.kernel.extension.ExtensionManager;
import com.cloud.tmc.kernel.extension.ExtensionRegistry;
import com.cloud.tmc.kernel.extension.TmcManifest;
import com.cloud.tmc.kernel.extension.registry.DefaultExtensionRegistry;
import com.cloud.tmc.kernel.intf.IPackageConfig;
import com.cloud.tmc.kernel.minicover.NativeComponentProxy;
import com.cloud.tmc.kernel.node.IGetNodeSource;
import com.cloud.tmc.kernel.node.NodeInstance;
import com.cloud.tmc.kernel.proxy.IBridgeFactory;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.core.IEngineFactory;
import com.cloud.tmc.kernel.proxy.env.IApplicationContextGetter;
import com.cloud.tmc.kernel.proxy.eventcenter.IEventCenterFactory;
import com.cloud.tmc.kernel.proxy.imageloader.ImageLoaderProxy;
import com.cloud.tmc.kernel.proxy.offline.IOfflineManagerProxy;
import com.cloud.tmc.kernel.proxy.perf.IPerformanceAndErrorTracker;
import com.cloud.tmc.kernel.proxy.performanceanalyse.BuildConfigProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ICommunicationTimeProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.LogEProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceImprovesProxy;
import com.cloud.tmc.kernel.proxy.render.IWebViewDownloadProxy;
import com.cloud.tmc.kernel.proxy.render.IWebViewFactory;
import com.cloud.tmc.kernel.proxy.renderprocess.IOnRenderProcessGoneProxy;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.proxy.worker.IWorkerFactory;
import com.cloud.tmc.kernel.proxy.worker.JSAheadParamsProxy;
import com.cloud.tmc.kernel.resource.IFileResourceManager;
import com.cloud.tmc.kernel.resource.IImageResourceManager;
import com.cloud.tmc.kernel.resource.IPackageResourceManager;
import com.cloud.tmc.kernel.resource.IResourceProcessor;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.miniapp.ad.AdActivityGetImp;
import com.cloud.tmc.miniapp.ad.AdManager;
import com.cloud.tmc.miniapp.bluetooth.BluetoothImp;
import com.cloud.tmc.miniapp.bluetooth.IBluetooth;
import com.cloud.tmc.miniapp.bridge.AppManagerDataProviderBridge;
import com.cloud.tmc.miniapp.bridge.MiniAppUpdateBridge;
import com.cloud.tmc.miniapp.bridge.NavigateMiniAppBridge;
import com.cloud.tmc.miniapp.bridge.NotifyMessageBridge;
import com.cloud.tmc.miniapp.bridge.PermissionScopeBridge;
import com.cloud.tmc.miniapp.bridge.PrefetchStrategyBridge;
import com.cloud.tmc.miniapp.bridge.PrivacyBridge;
import com.cloud.tmc.miniapp.bridge.ShowToastBridge;
import com.cloud.tmc.miniapp.bridge.TabBarBridge;
import com.cloud.tmc.miniapp.defaultimpl.AnimtionProxyImpl;
import com.cloud.tmc.miniapp.defaultimpl.AthenaReport;
import com.cloud.tmc.miniapp.defaultimpl.AuthorityProxyImpl;
import com.cloud.tmc.miniapp.defaultimpl.BuildConfigProxyImp;
import com.cloud.tmc.miniapp.defaultimpl.DefaultAuthenticationProxyImpl;
import com.cloud.tmc.miniapp.defaultimpl.DefaultClientStarter;
import com.cloud.tmc.miniapp.defaultimpl.DefaultDialogProxy;
import com.cloud.tmc.miniapp.defaultimpl.DefaultLauncherMiniActivityProxy;
import com.cloud.tmc.miniapp.defaultimpl.GetNodeSourceImpl;
import com.cloud.tmc.miniapp.defaultimpl.JSAheadParamsProxyImp;
import com.cloud.tmc.miniapp.defaultimpl.KeyboardImpl;
import com.cloud.tmc.miniapp.defaultimpl.LauncherReportImpl;
import com.cloud.tmc.miniapp.defaultimpl.MonitorWebviewManagerImp;
import com.cloud.tmc.miniapp.defaultimpl.NativeComponentProxyImp;
import com.cloud.tmc.miniapp.defaultimpl.RefreshProxyImpl;
import com.cloud.tmc.miniapp.defaultimpl.ReportFactory;
import com.cloud.tmc.miniapp.defaultimpl.TaskQueueProxyImpl;
import com.cloud.tmc.miniapp.defaultimpl.TmcApplicationContextGetter;
import com.cloud.tmc.miniapp.defaultimpl.TmcFragmentManagerFactory;
import com.cloud.tmc.miniapp.defaultimpl.TmcImageSelectImpl;
import com.cloud.tmc.miniapp.defaultimpl.TmcOfflineManagerProxyImpl;
import com.cloud.tmc.miniapp.defaultimpl.ToastImp;
import com.cloud.tmc.miniapp.defaultimpl.UpdateLoadingStepProxyImpl;
import com.cloud.tmc.miniapp.defaultimpl.WebViewImp;
import com.cloud.tmc.miniapp.defaultimpl.WorkerImp;
import com.cloud.tmc.miniapp.performanceanalyse.CommunicationTime;
import com.cloud.tmc.miniapp.performanceanalyse.LogEReportManager;
import com.cloud.tmc.miniapp.performanceanalyse.PerformanceTrack;
import com.cloud.tmc.miniapp.performanceanalyse.PerformanceUtils;
import com.cloud.tmc.miniapp.performanceanalyse.screen.ScreenInspectHelper;
import com.cloud.tmc.miniapp.prepare.impl.TmcAppInfoManagerImpl;
import com.cloud.tmc.miniapp.prepare.impl.TmcResourceManagerImpl;
import com.cloud.tmc.miniapp.prepare.manager.TmcAppInfoManager;
import com.cloud.tmc.miniapp.prepare.manager.TmcResourceManager;
import com.cloud.tmc.miniapp.proxy.IClientStarter;
import com.cloud.tmc.render.ILocalChannelProxy;
import com.cloud.tmc.render.IMonitorWebviewManagerProxy;
import com.cloud.tmc.render.IRenderFactory;
import com.cloud.tmc.render.IRenderWebivewStrategyCache;
import com.cloud.tmc.render.proxy.InjectJSProxy;
import com.cloud.tmc.worker.IWorkerManagerFactory;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Keep
public class TmcInitializer {
    private static final String TAG = "TmcInitializer";
    private static boolean alreadyInited;
    private static boolean alreadySetupProxy;
    private static ExtensionManager sExtensionManager;

    public static ExtensionManager getExtensionManager() {
        return sExtensionManager;
    }

    public static synchronized void init(Context context) {
        init(context, null);
    }

    public static synchronized void init(Context context, @Nullable ExtensionManager extensionManager) {
        ExtensionRegistry extensionRegistry;
        if (alreadyInited) {
            return;
        }
        alreadyInited = true;
        setupProxy(context);
        if (extensionManager != null) {
            try {
                extensionRegistry = extensionManager.getExtensionRegistry();
            } catch (Throwable th2) {
                OooO00o.OooO00o("setup ExtensionManager exception!").append(Log.getStackTraceString(th2));
                throw new IllegalStateException("setup ExtensionManager exception!", th2);
            }
        } else {
            extensionRegistry = null;
        }
        if (extensionRegistry == null) {
            extensionRegistry = new DefaultExtensionRegistry();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(AppOptionsBridge.class);
        arrayList.add(FileBridge.class);
        arrayList.add(GetClipboardBridge.class);
        arrayList.add(GetSdkVersionBridge.class);
        arrayList.add(GetSystemInfoBridge.class);
        arrayList.add(ImageSelectBridge.class);
        arrayList.add(KeyboardBridge.class);
        arrayList.add(LocalStorageBridge.class);
        arrayList.add(FrameworkStorageBridge.class);
        arrayList.add(MakePhoneCallBridge.class);
        arrayList.add(NativeRequestBridge.class);
        arrayList.add(AppBridge.class);
        arrayList.add(NavigateBridge.class);
        arrayList.add(NavigationBarBridge.class);
        arrayList.add(PerfBridge.class);
        arrayList.add(PullRefreshBridge.class);
        arrayList.add(SendToSmsBridge.class);
        arrayList.add(SetClipboardBridge.class);
        arrayList.add(ShareBridge.class);
        arrayList.add(VibrateBridge.class);
        arrayList.add(NetworkBridge.class);
        arrayList.add(BatteryBridge.class);
        arrayList.add(ScreenBridge.class);
        arrayList.add(PayBridge.class);
        arrayList.add(ForegroundAudioBridge.class);
        arrayList.add(AudioEffectBridge.class);
        arrayList.add(LatestUseBridge.class);
        arrayList.add(InnerWarmupBridge.class);
        arrayList.add(CommunicationBridge.class);
        arrayList.add(WifiBridge.class);
        arrayList.add(ReportBridge.class);
        arrayList.add(ScreenShotBridge.class);
        arrayList.add(TouchEventBridge.class);
        arrayList.add(AudioRecordBridge.class);
        arrayList.add(PrefetchDataBridge.class);
        arrayList.add(SystemAbilityBridge.class);
        arrayList.add(HardwareBridge.class);
        arrayList.add(WebViewAbilityBridge.class);
        arrayList.add(AdBridge.class);
        arrayList.add(AdAthenaBridge.class);
        arrayList.add(GetAppConfigBridge.class);
        arrayList.add(GetPackageFileBridge.class);
        arrayList.add(NativeLogBridge.class);
        arrayList.add(RegisterWorkerBridge.class);
        arrayList.add(OfflineDownloadBridge.class);
        arrayList.add(PermissionScopeBridge.class);
        arrayList.add(NavigateMiniAppBridge.class);
        arrayList.add(TabBarBridge.class);
        arrayList.add(ShowToastBridge.class);
        arrayList.add(PrivacyBridge.class);
        arrayList.add(GlobalStorageBridge.class);
        arrayList.add(NotifyMessageBridge.class);
        arrayList.add(MiniAppUpdateBridge.class);
        arrayList.add(AppManagerDataProviderBridge.class);
        arrayList.add(LocationBridge.class);
        arrayList.add(PrefetchStrategyBridge.class);
        arrayList.add(OfflineAppBridge.class);
        registerBridge(extensionRegistry, arrayList);
        if (extensionManager == null) {
            extensionManager = new DefaultExtensionManager(extensionRegistry);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("register bridge done with jsapi count: ");
        sb2.append(extensionRegistry.getActionCount());
        BridgeDispatcher.getInstance().bindExtensionManager(extensionManager);
        ExtensionPoint.bind(extensionManager);
        NodeInstance.bindExtensionManager(extensionManager);
        sExtensionManager = extensionManager;
    }

    private static void registerBridge(@NonNull ExtensionRegistry extensionRegistry, @NonNull List<Class<? extends BridgeExtension>> list) {
        Iterator<Class<? extends BridgeExtension>> it = list.iterator();
        while (it.hasNext()) {
            Class<? extends BridgeExtension> next = it.next();
            it.remove();
            try {
                TmcManifest.BridgeExtensionManifest bridgeExtensionManifestMake = TmcManifest.BridgeExtensionManifest.make(next);
                extensionRegistry.register(bridgeExtensionManifestMake.target, bridgeExtensionManifestMake.scope);
            } catch (Throwable th2) {
                OooO00o.OooO00o("Failed to register bridge!").append(Log.getStackTraceString(th2));
            }
        }
    }

    public static synchronized void reset() {
        alreadyInited = false;
        alreadySetupProxy = false;
    }

    public static synchronized void setupProxy(final Context context) {
        if (alreadySetupProxy) {
            return;
        }
        alreadySetupProxy = true;
        try {
            TmcProxy.sApplicationContext = new WeakReference<>(context.getApplicationContext());
            TmcProxy.set(IApplicationContextGetter.class, new TmcApplicationContextGetter());
            TmcProxy.set(PerformanceAnalyseProxy.class, new PerformanceTrack());
            TmcProxy.set(BuildConfigProxy.class, new BuildConfigProxyImp());
            TmcProxy.set(IPackageConfig.class, new GlobalPackageConfig());
            TmcProxy.set(IWorkerFactory.class, new WorkerImp());
            TmcProxy.set(IWebViewFactory.class, new WebViewImp());
            TmcProxy.set(ToastProxy.class, new ToastImp());
            TmcProxy.set(IRefreshProxy.class, new RefreshProxyImpl());
            TmcProxy.set(JSAheadParamsProxy.class, new JSAheadParamsProxyImp());
            TmcProxy.set(IRenderPool.class, new RenderPool());
            TmcProxy.set(IRenderFactory.class, new RenderFactory());
            TmcProxy.set(IWorkerManagerFactory.class, new WorkerManagerFactory());
            TmcProxy.set(IWorkerPool.class, new WorkerPool());
            TmcProxy.set(IKeyboardProxy.class, new KeyboardImpl());
            TmcProxy.setLazy(ICommunicationTimeProxy.class, new TmcProxy.LazyGetter<ICommunicationTimeProxy>() { // from class: com.cloud.tmc.miniapp.TmcInitializer.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                public ICommunicationTimeProxy get() {
                    return new CommunicationTime();
                }
            });
            TmcProxy.setLazy(IScreenInspectProxy.class, new TmcProxy.LazyGetter<IScreenInspectProxy>() { // from class: com.cloud.tmc.miniapp.TmcInitializer.2
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                public IScreenInspectProxy get() {
                    return new ScreenInspectHelper();
                }
            });
            TmcProxy.set(IOfflineManagerProxy.class, new TmcOfflineManagerProxyImpl());
            TmcProxy.set(IAdActivityGetProxy.class, new AdActivityGetImp());
            TmcProxy.set(ReportFactoryProxy.class, new ReportFactory());
            TmcProxy.set(IOnRenderProcessGoneProxy.class, new OnRenderProcessGoneManager());
            TmcProxy.set(IAdManagerProxy.class, new AdManager());
            TmcProxy.setLazy(LogEProxy.class, new TmcProxy.LazyGetter<LogEProxy>() { // from class: com.cloud.tmc.miniapp.TmcInitializer.3
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                public LogEProxy get() {
                    return new LogEReportManager();
                }
            });
            TmcProxy.set(IAdsenseProxy.class, new AdsenseManager());
            TmcProxy.set(IRequestConfigProxy.class, new RequestConfigManager());
            TmcProxy.set(IInnerRenderPool.class, new InnerRenderPool());
            TmcProxy.set(IInnerWorkerPool.class, new InnerWorkerPool());
            TmcProxy.set(IInnerH5WebviewPool.class, new InnerH5WebviewPool());
            TmcProxy.set(PerformanceImprovesProxy.class, new PerformanceUtils());
            TmcProxy.setLazy(ILocalChannelProxy.class, new TmcProxy.LazyGetter<ILocalChannelProxy>() { // from class: com.cloud.tmc.miniapp.TmcInitializer.4
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                public ILocalChannelProxy get() {
                    return new LocalChannelImp();
                }
            });
            TmcProxy.setLazy(IMonitorWebviewManagerProxy.class, new TmcProxy.LazyGetter<IMonitorWebviewManagerProxy>() { // from class: com.cloud.tmc.miniapp.TmcInitializer.5
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                public IMonitorWebviewManagerProxy get() {
                    return new MonitorWebviewManagerImp();
                }
            });
            TmcProxy.set(KVStorageProxy.class, new TmcKVStorageImpl());
            TmcProxy.set(IEventCenterFactory.class, new DefaultEventCenterFactory());
            TmcProxy.set(IFileResourceManager.class, new FileResourceManager());
            TmcProxy.set(IImageResourceManager.class, new ImageResourceManager());
            TmcProxy.set(IPackageResourceManager.class, new PackageResourceManager());
            TmcProxy.set(IResourceProcessor.class, new BaseResourceProcessor());
            TmcProxy.setLazy(IPerformanceAndErrorTracker.class, new TmcProxy.LazyGetter<IPerformanceAndErrorTracker>() { // from class: com.cloud.tmc.miniapp.TmcInitializer.6
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                public IPerformanceAndErrorTracker get() {
                    return new TmcPerformanceAndErrorTracker();
                }
            });
            TmcProxy.setLazy(IEngineFactory.class, new TmcProxy.LazyGetter<IEngineFactory>() { // from class: com.cloud.tmc.miniapp.TmcInitializer.7
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                public IEngineFactory get() {
                    return new TmcEngineFactory();
                }
            });
            TmcProxy.set(IBridgeFactory.class, new DefaultBridgeFactory());
            TmcProxy.set(EngineRouterManager.class, new DefaultEngineRouterManager());
            TmcProxy.set(IMsgDispatcher.class, new MsgDispatcher());
            TmcProxy.set(IClientStarter.class, new DefaultClientStarter());
            TmcProxy.set(IFragmentManagerFactory.class, new TmcFragmentManagerFactory());
            TmcProxy.set(ExtensionInvokerFactory.class, new DefaultExtensionInvokerFactory());
            TmcProxy.set(IExecutorService.class, new DefaultExecutorService());
            TmcProxy.set(InjectJSProxy.class, new InjectJSProxyImp());
            TmcProxy.setLazy(AuthenticationProxy.class, new TmcProxy.LazyGetter<AuthenticationProxy>() { // from class: com.cloud.tmc.miniapp.TmcInitializer.8
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                public AuthenticationProxy get() {
                    return new DefaultAuthenticationProxyImpl(context);
                }
            });
            TmcProxy.setLazy(IBluetooth.class, new TmcProxy.LazyGetter<IBluetooth>() { // from class: com.cloud.tmc.miniapp.TmcInitializer.9
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                public IBluetooth get() {
                    return new BluetoothImp();
                }
            });
            TmcProxy.setLazy(IRenderWebivewStrategyCache.class, new TmcProxy.LazyGetter<IRenderWebivewStrategyCache>() { // from class: com.cloud.tmc.miniapp.TmcInitializer.10
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                public IRenderWebivewStrategyCache get() {
                    return new RenderWebviewStrategyCache();
                }
            });
            TmcProxy.set(DialogProxy.class, new DefaultDialogProxy());
            TmcProxy.set(ReportProxy.class, new AthenaReport());
            TmcProxy.set(StartActivityProxy.class, new DefaultLauncherMiniActivityProxy());
            TmcProxy.set(ConfigService.class, new ConfigServiceImpl());
            TmcProxy.setLazy(VibrateProxy.class, new TmcProxy.LazyGetter<VibrateProxy>() { // from class: com.cloud.tmc.miniapp.TmcInitializer.11
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                public VibrateProxy get() {
                    return new VibrateProxyImpl();
                }
            });
            TmcProxy.set(NativePermissionProxy.class, new NativePermissionImpl());
            TmcProxy.set(ImageLoaderProxy.class, new DefaultImageLoaderImpl());
            TmcProxy.set(PathProxy.class, new TmcPathImpl());
            TmcProxy.set(FileProxy.class, new TmcFileImpl());
            TmcAppInfoManagerImpl tmcAppInfoManagerImpl = new TmcAppInfoManagerImpl();
            TmcProxy.set(IAppInfoManagerProxy.class, tmcAppInfoManagerImpl);
            TmcProxy.set(TmcAppInfoManager.class, tmcAppInfoManagerImpl);
            TmcProxy.set(TmcResourceManager.class, new TmcResourceManagerImpl());
            TmcProxy.set(AnimtionProxy.class, new AnimtionProxyImpl());
            TmcProxy.setLazy(ImageSelectProxy.class, new TmcProxy.LazyGetter<ImageSelectProxy>() { // from class: com.cloud.tmc.miniapp.TmcInitializer.12
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                public ImageSelectProxy get() {
                    return new TmcImageSelectImpl();
                }
            });
            TmcProxy.set(IUpdateLoadingStepProxy.class, new UpdateLoadingStepProxyImpl());
            TmcProxy.set(LauncherReportProxy.class, new LauncherReportImpl());
            TmcProxy.set(VirtualAppManager.class, new VirtualAppManagerImpl());
            TmcProxy.setLazy(NativeComponentProxy.class, new TmcProxy.LazyGetter<NativeComponentProxy>() { // from class: com.cloud.tmc.miniapp.TmcInitializer.13
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                public NativeComponentProxy get() {
                    return new NativeComponentProxyImp();
                }
            });
            TmcProxy.setLazy(IGetNodeSource.class, new TmcProxy.LazyGetter() { // from class: com.cloud.tmc.miniapp.h
                @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                public final Object get() {
                    return new GetNodeSourceImpl();
                }
            });
            TmcProxy.setLazy(ITaskQueueProxy.class, new TmcProxy.LazyGetter() { // from class: com.cloud.tmc.miniapp.i
                @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                public final Object get() {
                    return new TaskQueueProxyImpl();
                }
            });
            TmcProxy.setLazy(AuthorityProxy.class, new TmcProxy.LazyGetter() { // from class: com.cloud.tmc.miniapp.j
                @Override // com.cloud.tmc.kernel.proxy.TmcProxy.LazyGetter
                public final Object get() {
                    return new AuthorityProxyImpl();
                }
            });
            TmcProxy.set(IWebViewDownloadProxy.class, new DefaultWebViewDownloadImpl());
        } catch (Throwable th2) {
            OooO00o.OooO00o("setupProxy error!").append(Log.getStackTraceString(th2));
        }
    }
}
