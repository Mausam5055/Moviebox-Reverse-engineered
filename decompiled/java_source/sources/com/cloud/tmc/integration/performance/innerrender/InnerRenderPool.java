package com.cloud.tmc.integration.performance.innerrender;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.view.KeyEvent;
import android.view.View;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.InnerWarmup;
import com.cloud.tmc.integration.model.PrepareCallbackParam;
import com.cloud.tmc.integration.performance.InnerWarmupSettingData;
import com.cloud.tmc.integration.performance.WarmUpCallback;
import com.cloud.tmc.integration.performance.WarmupExtension;
import com.cloud.tmc.integration.performance.WarmupType;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.proxy.renderprocess.IRenderProcessListener;
import com.cloud.tmc.kernel.render.IRender;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.ExecutorUtils;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.GsonUtils;
import com.cloud.tmc.miniutils.util.SystemUtils;
import com.cloud.tmc.render.SystemRender;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.transsion.push.PushConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0002J\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0006\u001a\u00020\u001c2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\u001e\u001a\u00020\u0018H\u0016J\b\u0010\u001f\u001a\u00020\u0018H\u0002J\u0012\u0010 \u001a\u00020\u00182\b\u0010!\u001a\u0004\u0018\u00010\"H\u0002J\"\u0010#\u001a\u00020\u00182\u0006\u0010\f\u001a\u00020\r2\u0006\u0010$\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010%\u001a\u00020\u00182\b\u0010&\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010'\u001a\u00020\u00182\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u0012j\b\u0012\u0004\u0012\u00020\u0010`\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderPool;", "Lcom/cloud/tmc/integration/performance/innerrender/IInnerRenderPool;", "Lcom/cloud/tmc/integration/performance/WarmupExtension;", "()V", "TAG", "", "context", "Landroid/app/Application;", "creatingRender", "Ljava/util/concurrent/atomic/AtomicBoolean;", "innerRenderWarmupManager", "Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderWarmupManager;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/integration/performance/innerrender/InnerRenderListener;", "unUsedRenderQueue", "Ljava/util/LinkedList;", "Lcom/cloud/tmc/kernel/render/IRender;", "usedRenderList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "createRender", "", TmcConstants.KEY_SYNC, PushConstants.PROVIDER_FIELD_DESTROY, "", "existRender", "frameworkVersion", "getRender", "Landroid/app/Activity;", "init", "preWarmupRenderFail", "realCreateRender", "realWarmupRender", "param", "Lcom/cloud/tmc/integration/model/PrepareCallbackParam;", "registerListener", "homePage", "removeRender", "renderId", "warmupRender", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class InnerRenderPool implements IInnerRenderPool, WarmupExtension {
    private Application context;
    private InnerRenderWarmupManager innerRenderWarmupManager;
    private InnerRenderListener listener;
    private final String TAG = "InnerWarmup";
    private final ArrayList<IRender> usedRenderList = new ArrayList<>();
    private final LinkedList<IRender> unUsedRenderQueue = new LinkedList<>();
    private AtomicBoolean creatingRender = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createRender$lambda$0(InnerRenderPool this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.realCreateRender();
    }

    private final boolean existRender(String frameworkVersion) {
        IRender iRenderPeek;
        if (this.unUsedRenderQueue.size() <= 0 || (iRenderPeek = this.unUsedRenderQueue.peek()) == null || !iRenderPeek.getWarmupSuccess()) {
            return false;
        }
        IRender iRenderPeek2 = this.unUsedRenderQueue.peek();
        KeyEvent.Callback view = iRenderPeek2 != null ? iRenderPeek2.getView() : null;
        IRenderProcessListener iRenderProcessListener = view instanceof IRenderProcessListener ? (IRenderProcessListener) view : null;
        if (!(iRenderProcessListener != null ? Intrinsics.c(iRenderProcessListener.isRenderProcessGone(), Boolean.TRUE) : false)) {
            if (isValid(frameworkVersion, iRenderPeek2 != null ? iRenderPeek2.getFrameworkVersion() : null)) {
                return true;
            }
        }
        IRender iRenderPoll = this.unUsedRenderQueue.poll();
        if (iRenderPoll == null) {
            return false;
        }
        iRenderPoll.destroy();
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void preWarmupRenderFail$lambda$4(IRender render) {
        Intrinsics.h(render, "$render");
        render.destroy();
    }

    private final void realCreateRender() {
        SystemRender systemRender = new SystemRender(new MutableContextWrapper(this.context), null, null, null, 0, 16, null);
        systemRender.setWarmup(2);
        this.unUsedRenderQueue.add(systemRender);
        InnerRenderListener innerRenderListener = this.listener;
        if (innerRenderListener != null) {
            innerRenderListener.createRenderSuccess();
        }
        TmcLogger.d(this.TAG, "InnerRenderPool => addRender unUsedRenderQueue = " + this.unUsedRenderQueue.size());
        InnerRenderWarmupManager innerRenderWarmupManager = new InnerRenderWarmupManager();
        this.innerRenderWarmupManager = innerRenderWarmupManager;
        Application application = this.context;
        if (application != null) {
            innerRenderWarmupManager.preWarmup(application, WarmupType.INNER_RENNDER.getType());
        }
    }

    private final void realWarmupRender(PrepareCallbackParam param) {
        if (!this.creatingRender.get() || this.unUsedRenderQueue.size() <= 0) {
            return;
        }
        IRender iRenderPeek = this.unUsedRenderQueue.peek();
        if (iRenderPeek != null) {
            iRenderPeek.setDarkTheme(SystemUtils.darkThemeIsEnabled(this.context));
        }
        InnerRenderWarmupManager innerRenderWarmupManager = this.innerRenderWarmupManager;
        if (innerRenderWarmupManager != null) {
            IRender last = this.unUsedRenderQueue.getLast();
            Intrinsics.g(last, "unUsedRenderQueue.last");
            innerRenderWarmupManager.warmUp(last, param, new WarmUpCallback() { // from class: com.cloud.tmc.integration.performance.innerrender.InnerRenderPool.realWarmupRender.1
                @Override // com.cloud.tmc.integration.performance.WarmUpCallback
                public void warmupResult(boolean result) {
                    if (!result) {
                        TmcLogger.d(InnerRenderPool.this.TAG, "InnerRenderPool => warmupRender fail unUsedRenderQueue = " + InnerRenderPool.this.unUsedRenderQueue.size());
                        InnerRenderPool.this.preWarmupRenderFail();
                        return;
                    }
                    TmcLogger.d(InnerRenderPool.this.TAG, "InnerRenderPool => warmupRender success unUsedRenderQueue = " + InnerRenderPool.this.unUsedRenderQueue.size());
                    if (InnerRenderPool.this.unUsedRenderQueue.size() > 0) {
                        ((IRender) InnerRenderPool.this.unUsedRenderQueue.getLast()).setWarupSuccess();
                        InnerRenderListener innerRenderListener = InnerRenderPool.this.listener;
                        if (innerRenderListener != null) {
                            innerRenderListener.loadRenderFrameworkSuccess();
                        }
                        InnerRenderPool.this.listener = null;
                    }
                    InnerRenderPool.this.creatingRender.set(false);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void warmupRender$lambda$3(InnerRenderPool this$0, PrepareCallbackParam prepareCallbackParam) {
        Intrinsics.h(this$0, "this$0");
        this$0.realWarmupRender(prepareCallbackParam);
    }

    @Override // com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool
    public boolean createRender(boolean sync) {
        TmcLogger.d(this.TAG, "InnerRenderPool => createRender");
        try {
            String configString = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_INNER_WARMUP, MiniAppConfigHelper.DEFAULT_INNER_WARMUP);
            InnerWarmup innerWarmup = (InnerWarmup) GsonUtils.fromJson(configString, InnerWarmup.class);
            String str = this.TAG;
            boolean z10 = innerWarmup.getInnerWarmUpRenderEnable() && this.unUsedRenderQueue.size() < innerWarmup.getRenderMaxWarmupSize() && !this.creatingRender.get();
            TmcLogger.d(str, "InnerRenderPool => createRender ret:" + configString + ", canCreate:" + z10 + ", processName:" + ProcessUtils.getProcessName());
            if (innerWarmup.getInnerWarmUpRenderEnable() && this.unUsedRenderQueue.size() < innerWarmup.getRenderMaxWarmupSize() && !this.creatingRender.get()) {
                this.creatingRender.set(true);
                ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.performance.innerrender.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        InnerRenderPool.createRender$lambda$0(this.f23415a);
                    }
                });
                return true;
            }
        } catch (Throwable unused) {
        }
        InnerRenderListener innerRenderListener = this.listener;
        if (innerRenderListener != null) {
            innerRenderListener.warmupFail(1);
        }
        this.listener = null;
        return false;
    }

    @Override // com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool
    public void destroy() {
        TmcLogger.d(this.TAG, "InnerRenderPool => destroy");
        Iterator<T> it = this.usedRenderList.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            IRender iRender = (IRender) it.next();
            View view = iRender.getView();
            Context context = view != null ? view.getContext() : null;
            MutableContextWrapper mutableContextWrapper = context instanceof MutableContextWrapper ? (MutableContextWrapper) context : null;
            if (mutableContextWrapper != null) {
                mutableContextWrapper.setBaseContext(this.context);
            }
            iRender.destroy();
        }
        this.usedRenderList.clear();
        Iterator<T> it2 = this.unUsedRenderQueue.iterator();
        while (it2.hasNext()) {
            ((IRender) it2.next()).destroy();
        }
        this.unUsedRenderQueue.clear();
        this.innerRenderWarmupManager = null;
        this.context = null;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00b1  */
    @Override // com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool
    public IRender getRender(Activity context, String frameworkVersion) {
        IRender iRenderPeek;
        View view;
        Intrinsics.h(context, "context");
        TmcLogger.d(this.TAG, "InnerRenderPool => getRender unUsedRenderQueue = " + this.unUsedRenderQueue.size());
        IRender iRender = null;
        iRender = null;
        iRender = null;
        iRender = null;
        if (this.unUsedRenderQueue.size() > 0 && (iRenderPeek = this.unUsedRenderQueue.peek()) != null && iRenderPeek.getWarmupSuccess()) {
            IRender iRenderPoll = this.unUsedRenderQueue.poll();
            Object view2 = iRenderPoll != null ? iRenderPoll.getView() : null;
            IRenderProcessListener iRenderProcessListener = view2 instanceof IRenderProcessListener ? (IRenderProcessListener) view2 : null;
            if (iRenderProcessListener != null ? Intrinsics.c(iRenderProcessListener.isRenderProcessGone(), Boolean.TRUE) : false) {
                iRenderPoll.destroy();
            } else {
                if (isValid(frameworkVersion, iRenderPoll != null ? iRenderPoll.getFrameworkVersion() : null)) {
                    if (iRenderPoll != null ? Intrinsics.c(iRenderPoll.isDarkTheme(), Boolean.valueOf(SystemUtils.darkThemeIsEnabled(context))) : false) {
                        Context context2 = (iRenderPoll == null || (view = iRenderPoll.getView()) == null) ? null : view.getContext();
                        MutableContextWrapper mutableContextWrapper = context2 instanceof MutableContextWrapper ? (MutableContextWrapper) context2 : null;
                        if (mutableContextWrapper != null) {
                            mutableContextWrapper.setBaseContext(context);
                        }
                        if (iRenderPoll != null) {
                            iRenderPoll.setActivity(context);
                        }
                        this.usedRenderList.add(iRenderPoll);
                        iRender = iRenderPoll;
                    } else {
                        iRenderPoll.destroy();
                    }
                } else {
                    iRenderPoll.destroy();
                }
            }
        }
        TmcLogger.d(this.TAG, "InnerRenderPool => getRender success:" + (iRender != null));
        return iRender;
    }

    @Override // com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool
    public void init(Application context) {
        Intrinsics.h(context, "context");
        TmcLogger.d(this.TAG, "render init");
        this.context = context;
    }

    @Override // com.cloud.tmc.integration.performance.WarmupExtension
    public boolean isValid(String str, String str2) {
        return WarmupExtension.DefaultImpls.isValid(this, str, str2);
    }

    @Override // com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool
    public void preWarmupRenderFail() {
        TmcLogger.d(this.TAG, "InnerRenderPool => preWarmupFail unUsedRenderQueue = " + this.unUsedRenderQueue.size());
        InnerRenderListener innerRenderListener = this.listener;
        if (innerRenderListener != null) {
            innerRenderListener.warmupFail(2);
        }
        this.listener = null;
        if (this.unUsedRenderQueue.size() > 0) {
            int size = this.unUsedRenderQueue.size() - 1;
            IRender iRender = this.unUsedRenderQueue.get(size);
            Intrinsics.g(iRender, "unUsedRenderQueue[lastIndex]");
            final IRender iRender2 = iRender;
            this.unUsedRenderQueue.remove(size);
            ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.performance.innerrender.c
                @Override // java.lang.Runnable
                public final void run() {
                    InnerRenderPool.preWarmupRenderFail$lambda$4(iRender2);
                }
            });
        }
        this.creatingRender.set(false);
    }

    @Override // com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool
    public void registerListener(InnerRenderListener listener, boolean homePage, String frameworkVersion) {
        Intrinsics.h(listener, "listener");
        if (existRender(frameworkVersion)) {
            listener.warmupSuccess();
            return;
        }
        if (!this.creatingRender.get()) {
            listener.warmupFail(0);
            return;
        }
        this.listener = listener;
        try {
            new Timer().schedule(new TimerTask() { // from class: com.cloud.tmc.integration.performance.innerrender.InnerRenderPool.registerListener.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    InnerRenderListener innerRenderListener = InnerRenderPool.this.listener;
                    if (innerRenderListener != null) {
                        innerRenderListener.warmupFail(3);
                    }
                    InnerRenderPool.this.listener = null;
                    cancel();
                }
            }, homePage ? ((InnerWarmupSettingData) GsonUtils.fromJson(((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_WARMUP_SETTING, MiniAppConfigHelper.DEFAULT_WARMUP_SETTING), InnerWarmupSettingData.class)).getRenderWaitTime() : 0L);
        } catch (Throwable unused) {
            InnerRenderListener innerRenderListener = this.listener;
            if (innerRenderListener != null) {
                innerRenderListener.warmupFail(4);
            }
            this.listener = null;
        }
    }

    @Override // com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool
    public void removeRender(String renderId) {
        TmcLogger.d(this.TAG, "InnerRenderPool => removeRender renderId = " + renderId);
        IRender iRender = null;
        for (IRender iRender2 : this.usedRenderList) {
            if (Intrinsics.c(iRender2.getRenderId(), renderId)) {
                iRender = iRender2;
            }
        }
        if (iRender != null) {
            View view = iRender.getView();
            Context context = view != null ? view.getContext() : null;
            MutableContextWrapper mutableContextWrapper = context instanceof MutableContextWrapper ? (MutableContextWrapper) context : null;
            if (mutableContextWrapper != null) {
                mutableContextWrapper.setBaseContext(this.context);
            }
            iRender.destroy();
            this.usedRenderList.remove(iRender);
        }
    }

    @Override // com.cloud.tmc.integration.performance.innerrender.IInnerRenderPool
    public void warmupRender(final PrepareCallbackParam param) {
        TmcLogger.d(this.TAG, "InnerRenderPool => warmupRender unUsedRenderQueue = " + this.unUsedRenderQueue.size() + " , canWarmup:" + (this.creatingRender.get() && this.unUsedRenderQueue.size() > 0));
        ExecutorUtils.runOnMain(new Runnable() { // from class: com.cloud.tmc.integration.performance.innerrender.a
            @Override // java.lang.Runnable
            public final void run() {
                InnerRenderPool.warmupRender$lambda$3(this.f23413a, param);
            }
        });
    }
}
