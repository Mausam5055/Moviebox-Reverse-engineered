package com.cloud.tmc.integration.performance.offscreen.webview;

import android.app.Activity;
import android.os.Bundle;
import android.os.Looper;
import android.view.View;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.chain.insert.AppInsertState;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.model.OffScreenRender;
import com.cloud.tmc.integration.model.PrepareContext;
import com.cloud.tmc.integration.performance.innerwebview.IInnerH5WebviewPool;
import com.cloud.tmc.integration.performance.offscreen.IOffScreenProxy;
import com.cloud.tmc.integration.proxy.PreHtmStrategyProxy;
import com.cloud.tmc.kernel.constants.PageType;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.ChainPoint;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PerformanceAnalyseProxy;
import com.cloud.tmc.kernel.proxy.performanceanalyse.PointAnalyseType;
import com.cloud.tmc.kernel.proxy.storage.KVStorageProxy;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.render.LoadParams;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.EncryptUtils;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.cloud.tmc.render.system.ShellWebView;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u001a\u001a\u00020\u0004H\u0016J\u0010\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0004H\u0002J*\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\"\u0010\"\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0016\u0010%\u001a\u00020\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00170&H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u00120\u0014j\b\u0012\u0004\u0012\u00020\u0012`\u0015X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/cloud/tmc/integration/performance/offscreen/webview/OffScreenWebviewPool;", "Lcom/cloud/tmc/integration/performance/offscreen/IOffScreenProxy;", "()V", "TAG", "", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "", "grayScale", "", "maxSize", "", "offScreenRenderIng", "Ljava/util/concurrent/atomic/AtomicBoolean;", "retryPageType", "Lcom/cloud/tmc/kernel/constants/PageType;", "retryRenderUrl", "unUsedOffScreenRenderQueue", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "Lcom/cloud/tmc/kernel/render/IRender;", "usedOffScreenRenderList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", PushConstants.PROVIDER_FIELD_DESTROY, "", EventConstants.ADDRESS_RENDER, "getOffScreenRender", "url", "isRendered", LauncherMiniAppConfigHelper.KEY_OFF_SCREEN_RENDER, "pageType", "activity", "Landroid/app/Activity;", "context", "Lcom/cloud/tmc/integration/model/PrepareContext;", "retryOffScreenRender", "tag", "", "runOnMain", "Lkotlin/Function0;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class OffScreenWebviewPool implements IOffScreenProxy {
    private static boolean enable;
    private static float grayScale;
    private static int maxSize;
    private static PageType retryPageType;
    private static String retryRenderUrl;
    public static final OffScreenWebviewPool INSTANCE = new OffScreenWebviewPool();
    private static final String TAG = "OffScreenWebviewPool";
    private static final ArrayList<IRender> usedOffScreenRenderList = new ArrayList<>();
    private static final ConcurrentLinkedQueue<IRender> unUsedOffScreenRenderQueue = new ConcurrentLinkedQueue<>();
    private static AtomicBoolean offScreenRenderIng = new AtomicBoolean(false);

    private OffScreenWebviewPool() {
    }

    private final boolean isRendered(String url) {
        Iterator<IRender> it = unUsedOffScreenRenderQueue.iterator();
        Intrinsics.g(it, "unUsedOffScreenRenderQueue.iterator()");
        while (it.hasNext()) {
            if (Intrinsics.c(it.next().getCurrentUri(), url)) {
                return true;
            }
        }
        return false;
    }

    private final void runOnMain(final Function0<Unit> render) {
        if (Intrinsics.c(Looper.myLooper(), Looper.getMainLooper())) {
            render.invoke();
        } else {
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.performance.offscreen.webview.a
                @Override // java.lang.Runnable
                public final void run() {
                    OffScreenWebviewPool.runOnMain$lambda$1(render);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void runOnMain$lambda$1(Function0 render) {
        Intrinsics.h(render, "$render");
        render.invoke();
    }

    @Override // com.cloud.tmc.integration.performance.offscreen.IOffScreenProxy
    public void destroy(IRender render) {
        TmcLogger.d(TAG, PushConstants.PROVIDER_FIELD_DESTROY);
        if (render == null) {
            return;
        }
        try {
            Iterator<IRender> it = usedOffScreenRenderList.iterator();
            Intrinsics.g(it, "usedOffScreenRenderList.iterator()");
            while (it.hasNext()) {
                IRender next = it.next();
                Intrinsics.g(next, "iterator.next()");
                IRender iRender = next;
                if (iRender.hashCode() == render.hashCode()) {
                    iRender.destroy();
                    it.remove();
                    return;
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.cloud.tmc.integration.performance.offscreen.IOffScreenProxy
    public IRender getOffScreenRender(String url) {
        Intrinsics.h(url, "url");
        TmcLogger.d(TAG, "getOffScreenRender -> " + url + ", enable: " + enable);
        IRender iRender = null;
        if (!enable) {
            return null;
        }
        try {
            Iterator<IRender> it = unUsedOffScreenRenderQueue.iterator();
            Intrinsics.g(it, "unUsedOffScreenRenderQueue.iterator()");
            while (it.hasNext()) {
                IRender next = it.next();
                if (Intrinsics.c(next.getCurrentUri(), String.valueOf(url))) {
                    try {
                        usedOffScreenRenderList.add(next);
                        it.remove();
                        return next;
                    } catch (Throwable th2) {
                        th = th2;
                        iRender = next;
                        TmcLogger.d(TAG, "getOffScreenRender -> " + th);
                        return iRender;
                    }
                }
            }
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.cloud.tmc.integration.performance.offscreen.IOffScreenProxy
    public void offScreenRender(final String url, final PageType pageType, final Activity activity, final PrepareContext context) {
        Intrinsics.h(url, "url");
        Intrinsics.h(pageType, "pageType");
        Intrinsics.h(activity, "activity");
        OffScreenRender offScreenRender = (OffScreenRender) GsonUtils.fromJson(((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_OFF_SCREEN_RENDER, MiniAppConfigHelper.DEFAULT_KEY_OFF_SCREEN_RENDER), OffScreenRender.class);
        if (offScreenRender != null) {
            enable = offScreenRender.getEnable();
            maxSize = offScreenRender.getMaxSize();
            grayScale = offScreenRender.getGrayScale();
        }
        String str = TAG;
        TmcLogger.d(str, "offScreenRender -> url:" + url + ", pageType:" + pageType + ", enable: " + enable + ", maxSize: " + maxSize + ", grayScale:" + grayScale);
        if (enable) {
            double dNextDouble = new SecureRandom().nextDouble();
            TmcLogger.d(str, "offScreenRender -> createGrayNum:" + dNextDouble);
            float f11 = grayScale;
            if (f11 == 0.0f || dNextDouble > f11) {
                TmcLogger.d(str, "offScreenRender -> 未命中灰度测试");
                return;
            }
            if (offScreenRenderIng.getAndSet(true)) {
                TmcLogger.d(str, "offScreenRender -> 正在离屏渲染中，本次操作不再继续执行");
            } else if (!isRendered(url)) {
                runOnMain(new Function0<Unit>() { // from class: com.cloud.tmc.integration.performance.offscreen.webview.OffScreenWebviewPool.offScreenRender.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Object invoke() {
                        m246invoke();
                        return Unit.f67061a;
                    }

                    /* JADX WARN: Code duplicated, block: B:35:0x0116 A[PHI: r8
  0x0116: PHI (r8v1 java.lang.String) = (r8v0 java.lang.String), (r8v3 java.lang.String) binds: [B:37:0x011b, B:32:0x0111] A[DONT_GENERATE, DONT_INLINE]] */
                    /* JADX INFO: renamed from: invoke, reason: collision with other method in class */
                    public final void m246invoke() {
                        String str2;
                        boolean z10;
                        Bundle startParams;
                        IRender webview = ((IInnerH5WebviewPool) TmcProxy.get(IInnerH5WebviewPool.class)).getWebview(activity);
                        if (webview == null) {
                            TmcLogger.d(OffScreenWebviewPool.TAG, "offScreenRender -> 获取预热webview失败，本次操作不再继续执行");
                            OffScreenWebviewPool.retryRenderUrl = url;
                            OffScreenWebviewPool.retryPageType = pageType;
                            OffScreenWebviewPool.offScreenRenderIng.set(false);
                            return;
                        }
                        if (OffScreenWebviewPool.unUsedOffScreenRenderQueue.size() > OffScreenWebviewPool.maxSize) {
                            OffScreenWebviewPool.unUsedOffScreenRenderQueue.remove();
                        }
                        OffScreenWebviewPool.unUsedOffScreenRenderQueue.add(webview);
                        ((IInnerH5WebviewPool) TmcProxy.get(IInnerH5WebviewPool.class)).removeWebview(webview, false);
                        LoadParams loadParams = new LoadParams();
                        String str3 = url;
                        loadParams.url = str3;
                        loadParams.pagePath = str3;
                        boolean configTargetBool = MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_ENABLE_SHELL_PRE_REQUEST, true);
                        Bundle bundle = new Bundle();
                        bundle.putBoolean(ChainPoint.APP_OFF_SCREEN_RENDER, true);
                        AppInsertState appInsertState = new AppInsertState(bundle);
                        PrepareContext prepareContext = context;
                        appInsertState.setChainContext(prepareContext != null ? prepareContext.getAppChainContext() : null);
                        bundle.putString(ChainPoint.TYPE, "app");
                        String str4 = ChainPoint.CHAIN_ID;
                        PrepareContext prepareContext2 = context;
                        bundle.putString(str4, (prepareContext2 == null || (startParams = prepareContext2.getStartParams()) == null) ? null : startParams.getString(TmcConstants.EXTRA_UNIQUE_CHAIN_ID, TmcConstants.COLD_OPEN_TYPE));
                        PerformanceAnalyseProxy performanceAnalyseProxy = (PerformanceAnalyseProxy) TmcProxy.get(PerformanceAnalyseProxy.class);
                        PrepareContext prepareContext3 = context;
                        String str5 = "";
                        performanceAnalyseProxy.record(prepareContext3 != null ? prepareContext3.getAppId() : null, PointAnalyseType.POINT_CHAIN_INSERT, "", bundle);
                        TmcLogger.d(OffScreenWebviewPool.TAG, "offScreenRender -> enablePreRequest:" + configTargetBool);
                        if (configTargetBool) {
                            String md5 = EncryptUtils.encryptMD5ToString(loadParams.url);
                            TmcLogger.d(OffScreenWebviewPool.TAG, "offScreenRender -> getHtml key:" + md5);
                            PageType pageType2 = pageType;
                            if (pageType2 == PageType.H5) {
                                String string = ((KVStorageProxy) TmcProxy.get(KVStorageProxy.class)).getString(activity, TmcConstants.KEY_LATEST_SYNC_SHARPNEWS, md5);
                                str5 = string != null ? string : "";
                                if (str5.length() > 0) {
                                    str2 = str5;
                                } else {
                                    z10 = false;
                                    str2 = str5;
                                }
                            } else if (pageType2 == PageType.H5_SHELL) {
                                PreHtmStrategyProxy preHtmStrategyProxy = (PreHtmStrategyProxy) TmcProxy.get(PreHtmStrategyProxy.class);
                                Activity activity2 = activity;
                                Intrinsics.g(md5, "md5");
                                String preHtmlCache = preHtmStrategyProxy.getPreHtmlCache(activity2, md5, 1, true);
                                TmcLogger.d(OffScreenWebviewPool.TAG, "offScreenRender -> H5_SHELL check preHtml :" + preHtmlCache);
                                str2 = preHtmlCache;
                                z10 = preHtmlCache.length() > 0;
                            } else {
                                z10 = false;
                                str2 = str5;
                            }
                            if (z10) {
                                TmcLogger.d(OffScreenWebviewPool.TAG, "offScreenRender -> loadDataWithBaseURL");
                                View view = webview.getView();
                                ShellWebView shellWebView = view instanceof ShellWebView ? (ShellWebView) view : null;
                                if (shellWebView != null) {
                                    shellWebView.setLoadDataWithBaseURL(true);
                                }
                                webview.loadDataWithBaseURL(loadParams, str2, "text/html", "UTF-8", null);
                            } else {
                                TmcLogger.d(OffScreenWebviewPool.TAG, "offScreenRender -> loadUrl: getLocalHtml fail ");
                                webview.load(loadParams);
                            }
                        } else {
                            TmcLogger.d(OffScreenWebviewPool.TAG, "offScreenRender -> loadUrl ");
                            webview.load(loadParams);
                        }
                        View view2 = webview.getView();
                        ShellWebView shellWebView2 = view2 instanceof ShellWebView ? (ShellWebView) view2 : null;
                        if (shellWebView2 != null) {
                            shellWebView2.setOffScreenRender(true);
                        }
                        OffScreenWebviewPool.offScreenRenderIng.set(false);
                    }
                });
            } else {
                TmcLogger.d(str, "offScreenRender -> 当前url已被离屏渲染过，本次操作不再继续执行");
                offScreenRenderIng.set(false);
            }
        }
    }

    @Override // com.cloud.tmc.integration.performance.offscreen.IOffScreenProxy
    public void retryOffScreenRender(Activity activity, Object tag, PrepareContext context) {
        PageType pageType;
        Intrinsics.h(activity, "activity");
        Intrinsics.h(tag, "tag");
        String str = TAG;
        TmcLogger.d(str, "retryOffScreenRender -> " + tag + ", enable: " + enable);
        if (!enable) {
            retryRenderUrl = null;
            retryPageType = null;
            return;
        }
        String str2 = retryRenderUrl;
        if (str2 == null || (pageType = retryPageType) == null) {
            return;
        }
        retryRenderUrl = null;
        retryPageType = null;
        TmcLogger.d(str, "real retryOffScreenRender -> " + tag);
        offScreenRender(str2, pageType, activity, context);
    }
}
