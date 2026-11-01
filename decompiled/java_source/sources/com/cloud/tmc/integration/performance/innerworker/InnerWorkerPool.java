package com.cloud.tmc.integration.performance.innerworker;

import android.app.Application;
import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.model.InnerWarmup;
import com.cloud.tmc.integration.model.PrepareCallbackParam;
import com.cloud.tmc.integration.performance.InnerWarmupSettingData;
import com.cloud.tmc.integration.performance.WarmUpCallback;
import com.cloud.tmc.integration.performance.WarmupExtension;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.kernel.proxy.TmcProxy;
import com.cloud.tmc.kernel.service.ConfigService;
import com.cloud.tmc.kernel.utils.ProcessUtils;
import com.cloud.tmc.kernel.worker.JSI;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.cloud.tmc.miniutils.util.GsonUtils;
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
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u0017\u001a\u00020\u0018H\u0016J\u0012\u0010\u0019\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0002J\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u00102\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\b\u0010\u001d\u001a\u00020\u0018H\u0016J\u001a\u0010\u001e\u001a\u00020\u00182\u0006\u0010\f\u001a\u00020\r2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u001f\u001a\u00020\u00182\u0006\u0010 \u001a\u00020\u0005H\u0016J\u0012\u0010!\u001a\u00020\u00182\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082D¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u00100\u0012j\b\u0012\u0004\u0012\u00020\u0010`\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerPool;", "Lcom/cloud/tmc/integration/performance/innerworker/IInnerWorkerPool;", "Lcom/cloud/tmc/integration/performance/WarmupExtension;", "()V", "TAG", "", "context", "Landroid/app/Application;", "creatingWorker", "Ljava/util/concurrent/atomic/AtomicBoolean;", "innerWorkerWarmupManager", "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerWarmupManager;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/cloud/tmc/integration/performance/innerworker/InnerWorkerListener;", "unUsedWorkerQueue", "Ljava/util/LinkedList;", "Lcom/cloud/tmc/kernel/worker/JSI;", "usedWorkerList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "createWorker", "", TmcConstants.KEY_SYNC, PushConstants.PROVIDER_FIELD_DESTROY, "", "existWorker", "frameworkVersion", "getWorker", "init", "preWarmupWorkerFail", "registerListener", "removeWorker", "workerId", "warmupWorker", "param", "Lcom/cloud/tmc/integration/model/PrepareCallbackParam;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class InnerWorkerPool implements IInnerWorkerPool, WarmupExtension {
    private Application context;
    private InnerWorkerWarmupManager innerWorkerWarmupManager;
    private InnerWorkerListener listener;
    private final String TAG = "InnerWarmup";
    private final ArrayList<JSI> usedWorkerList = new ArrayList<>();
    private final LinkedList<JSI> unUsedWorkerQueue = new LinkedList<>();
    private AtomicBoolean creatingWorker = new AtomicBoolean(false);

    private final boolean existWorker(String frameworkVersion) {
        if (this.unUsedWorkerQueue.size() <= 0) {
            return false;
        }
        JSI jsiPeek = this.unUsedWorkerQueue.peek();
        if (!(jsiPeek != null ? Intrinsics.c(jsiPeek.warmupSuccess(), Boolean.TRUE) : false)) {
            return false;
        }
        JSI jsiPeek2 = this.unUsedWorkerQueue.peek();
        if (!(jsiPeek2 != null ? Intrinsics.c(jsiPeek2.isRenderProcessGone(), Boolean.TRUE) : false)) {
            if (isValid(frameworkVersion, jsiPeek2 != null ? jsiPeek2.getFrameworkVersion() : null)) {
                return true;
            }
        }
        JSI jsiPoll = this.unUsedWorkerQueue.poll();
        if (jsiPoll == null) {
            return false;
        }
        jsiPoll.destroy();
        return false;
    }

    @Override // com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool
    public boolean createWorker(boolean sync) {
        try {
            Application application = this.context;
            if (application != null) {
                TmcLogger.d(this.TAG, "InnerWorkerPool => createWorker");
                String configString = ((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_INNER_WARMUP, MiniAppConfigHelper.DEFAULT_INNER_WARMUP);
                InnerWarmup innerWarmup = (InnerWarmup) GsonUtils.fromJson(configString, InnerWarmup.class);
                String str = this.TAG;
                boolean z10 = innerWarmup.getInnerWarmUpWorkerEnable() && this.unUsedWorkerQueue.size() < innerWarmup.getWorkerMaxWarmupSize() && !this.creatingWorker.get();
                TmcLogger.d(str, "InnerWorkerPool => createWorker ret:" + configString + ", canCreate:" + z10 + ", processName:" + ProcessUtils.getProcessName());
                if (innerWarmup.getInnerWarmUpWorkerEnable() && this.unUsedWorkerQueue.size() < innerWarmup.getWorkerMaxWarmupSize() && !this.creatingWorker.get()) {
                    this.creatingWorker.set(true);
                    k.d(o0.a(y0.b()), null, null, new InnerWorkerPool$createWorker$1$1(this, application, null), 3, null);
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        InnerWorkerListener innerWorkerListener = this.listener;
        if (innerWorkerListener != null) {
            innerWorkerListener.warmupFail(1);
        }
        this.listener = null;
        return false;
    }

    @Override // com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool
    public void destroy() {
        TmcLogger.d(this.TAG, "InnerWorkerPool => destroy");
        Iterator<T> it = this.usedWorkerList.iterator();
        while (it.hasNext()) {
            ((JSI) it.next()).destroy();
        }
        this.usedWorkerList.clear();
        Iterator<T> it2 = this.unUsedWorkerQueue.iterator();
        while (it2.hasNext()) {
            ((JSI) it2.next()).destroy();
        }
        this.unUsedWorkerQueue.clear();
        this.innerWorkerWarmupManager = null;
        this.context = null;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x006b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:19:0x006d  */
    @Override // com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool
    public JSI getWorker(String frameworkVersion) {
        TmcLogger.d(this.TAG, "InnerWorkerPool => getWorker unUsedWorkerQueue = " + this.unUsedWorkerQueue.size());
        JSI jsi = null;
        if (this.unUsedWorkerQueue.size() > 0) {
            Boolean boolWarmupSuccess = this.unUsedWorkerQueue.peek().warmupSuccess();
            Intrinsics.g(boolWarmupSuccess, "unUsedWorkerQueue.peek().warmupSuccess()");
            if (boolWarmupSuccess.booleanValue()) {
                JSI jsiPoll = this.unUsedWorkerQueue.poll();
                if (!(jsiPoll != null ? Intrinsics.c(jsiPoll.isRenderProcessGone(), Boolean.TRUE) : false)) {
                    if (isValid(frameworkVersion, jsiPoll != null ? jsiPoll.getFrameworkVersion() : null)) {
                        this.usedWorkerList.add(jsiPoll);
                        jsi = jsiPoll;
                    } else if (jsiPoll != null) {
                        jsiPoll.destroy();
                    }
                } else if (jsiPoll != null) {
                    jsiPoll.destroy();
                }
            }
        }
        TmcLogger.d(this.TAG, "InnerWorkerPool => getWorker success:" + (jsi != null));
        return jsi;
    }

    @Override // com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool
    public void init(Application context) {
        Intrinsics.h(context, "context");
        TmcLogger.d(this.TAG, "worker init");
        this.context = context;
    }

    @Override // com.cloud.tmc.integration.performance.WarmupExtension
    public boolean isValid(String str, String str2) {
        return WarmupExtension.DefaultImpls.isValid(this, str, str2);
    }

    @Override // com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool
    public void preWarmupWorkerFail() {
        TmcLogger.d(this.TAG, "InnerWorkerPool => preWarmupWorkerFail unUsedWorkerQueue = " + this.unUsedWorkerQueue.size());
        InnerWorkerListener innerWorkerListener = this.listener;
        if (innerWorkerListener != null) {
            innerWorkerListener.warmupFail(2);
        }
        this.listener = null;
        if (this.unUsedWorkerQueue.size() > 0) {
            int size = this.unUsedWorkerQueue.size() - 1;
            JSI jsi = this.unUsedWorkerQueue.get(size);
            Intrinsics.g(jsi, "unUsedWorkerQueue[lastIndex]");
            this.unUsedWorkerQueue.remove(size);
            jsi.destroy();
        }
        this.creatingWorker.set(false);
    }

    @Override // com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool
    public void registerListener(InnerWorkerListener listener, String frameworkVersion) {
        Intrinsics.h(listener, "listener");
        if (existWorker(frameworkVersion)) {
            listener.warmupSuccess();
            return;
        }
        if (!this.creatingWorker.get()) {
            listener.warmupFail(0);
            return;
        }
        this.listener = listener;
        try {
            new Timer().schedule(new TimerTask() { // from class: com.cloud.tmc.integration.performance.innerworker.InnerWorkerPool.registerListener.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    InnerWorkerListener innerWorkerListener = InnerWorkerPool.this.listener;
                    if (innerWorkerListener != null) {
                        innerWorkerListener.warmupFail(3);
                    }
                    InnerWorkerPool.this.listener = null;
                    cancel();
                }
            }, ((InnerWarmupSettingData) GsonUtils.fromJson(((ConfigService) TmcProxy.get(ConfigService.class)).getConfigString(LauncherMiniAppConfigHelper.KEY_WARMUP_SETTING, MiniAppConfigHelper.DEFAULT_WARMUP_SETTING), InnerWarmupSettingData.class)).getWorkerWaitTime());
        } catch (Throwable unused) {
            InnerWorkerListener innerWorkerListener = this.listener;
            if (innerWorkerListener != null) {
                innerWorkerListener.warmupFail(4);
            }
            this.listener = null;
        }
    }

    @Override // com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool
    public void removeWorker(String workerId) {
        Intrinsics.h(workerId, "workerId");
        TmcLogger.d(this.TAG, "InnerWorkerPool => removeWorker workerId = " + workerId);
        JSI jsi = null;
        for (JSI jsi2 : this.usedWorkerList) {
            if (Intrinsics.c(jsi2.getWorkerId(), workerId)) {
                jsi = jsi2;
            }
        }
        if (jsi != null) {
            jsi.destroy();
            this.usedWorkerList.remove(jsi);
        }
    }

    @Override // com.cloud.tmc.integration.performance.innerworker.IInnerWorkerPool
    public void warmupWorker(PrepareCallbackParam param) {
        InnerWorkerWarmupManager innerWorkerWarmupManager;
        TmcLogger.d(this.TAG, "InnerWorkerPool => warmupWorker unUsedWorkerQueue = " + this.unUsedWorkerQueue.size() + " , canWarmup:" + (this.creatingWorker.get() && this.unUsedWorkerQueue.size() > 0));
        if (!this.creatingWorker.get() || this.unUsedWorkerQueue.size() <= 0 || (innerWorkerWarmupManager = this.innerWorkerWarmupManager) == null) {
            return;
        }
        JSI last = this.unUsedWorkerQueue.getLast();
        Intrinsics.g(last, "unUsedWorkerQueue.last");
        innerWorkerWarmupManager.warmup(last, param, new WarmUpCallback() { // from class: com.cloud.tmc.integration.performance.innerworker.InnerWorkerPool.warmupWorker.1
            @Override // com.cloud.tmc.integration.performance.WarmUpCallback
            public void warmupResult(boolean result) {
                if (!result) {
                    TmcLogger.d(InnerWorkerPool.this.TAG, "InnerWorkerPool => warmupWorker fail unUsedWorkerQueue = " + InnerWorkerPool.this.unUsedWorkerQueue.size());
                    InnerWorkerPool.this.preWarmupWorkerFail();
                    return;
                }
                TmcLogger.d(InnerWorkerPool.this.TAG, "InnerWorkerPool => warmupWorker success unUsedWorkerQueue = " + InnerWorkerPool.this.unUsedWorkerQueue.size());
                if (InnerWorkerPool.this.unUsedWorkerQueue.size() > 0) {
                    ((JSI) InnerWorkerPool.this.unUsedWorkerQueue.getLast()).setWarmupSuccess();
                    InnerWorkerListener innerWorkerListener = InnerWorkerPool.this.listener;
                    if (innerWorkerListener != null) {
                        innerWorkerListener.loadWorkerFrameworkSuccess();
                    }
                    InnerWorkerPool.this.listener = null;
                }
                InnerWorkerPool.this.creatingWorker.set(false);
            }
        }, this.listener);
    }
}
