package com.cloud.tmc.integration.processor;

import com.cloud.tmc.integration.BuildConfig;
import com.cloud.tmc.integration.MiniAppConfigHelper;
import com.cloud.tmc.integration.processor.intercept.IBackPressedIntercept;
import com.cloud.tmc.integration.processor.intercept.RealBackPressedInterceptChain;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.launcherlib.LauncherMiniAppConfigHelper;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010 \n\u0002\b\u0003\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0005H\u0016J\u000e\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u001a\u0010\u000f\u001a\u00020\u0010*\b\u0012\u0004\u0012\u00020\u00050\u00112\u0006\u0010\u0012\u001a\u00020\u0005H\u0002R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/cloud/tmc/integration/processor/BackPressedProcessor;", "Lcom/cloud/tmc/integration/processor/IBackPressedProcessor;", "()V", "intercepts", "", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept;", "addInterceptors", "", "intercept", "getInterceptors", "removeInterceptors", "startBackPressedInterceptorChain", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Result;", "params", "Lcom/cloud/tmc/integration/processor/intercept/IBackPressedIntercept$Params;", "checkContains", "", "", "element", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 8, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class BackPressedProcessor implements IBackPressedProcessor {
    private static final String TAG = "BackPressedProcessor";
    private final List<IBackPressedIntercept> intercepts = new ArrayList();

    /* JADX WARN: Code duplicated, block: B:13:0x002c A[RETURN, SYNTHETIC] */
    private final boolean checkContains(List<? extends IBackPressedIntercept> list, IBackPressedIntercept iBackPressedIntercept) {
        if (!list.contains(iBackPressedIntercept)) {
            for (Object obj : list) {
                if (Intrinsics.c(((IBackPressedIntercept) obj).getInterceptName(), iBackPressedIntercept.getInterceptName())) {
                    if (obj != null) {
                        return false;
                    }
                }
            }
            obj = null;
            if (obj != null) {
                return false;
            }
        }
        return true;
    }

    @Override // com.cloud.tmc.integration.processor.IBackPressedProcessor
    public void addInterceptors(IBackPressedIntercept intercept) {
        Intrinsics.h(intercept, "intercept");
        if (checkContains(this.intercepts, intercept)) {
            return;
        }
        int i11 = 0;
        for (Object obj : this.intercepts) {
            int i12 = i11 + 1;
            if (i11 < 0) {
                CollectionsKt.u();
            }
            if (intercept.getPriority() < ((IBackPressedIntercept) obj).getPriority()) {
                this.intercepts.add(i11, intercept);
            }
            i11 = i12;
        }
        this.intercepts.add(intercept);
    }

    @Override // com.cloud.tmc.integration.processor.IBackPressedProcessor
    public List<IBackPressedIntercept> getInterceptors() {
        ArrayList arrayList = new ArrayList();
        CollectionsKt.B(arrayList, this.intercepts);
        return arrayList;
    }

    @Override // com.cloud.tmc.integration.processor.IBackPressedProcessor
    public void removeInterceptors(IBackPressedIntercept intercept) {
        Object next;
        Intrinsics.h(intercept, "intercept");
        if (checkContains(this.intercepts, intercept)) {
            Iterator<T> it = this.intercepts.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((IBackPressedIntercept) next).getInterceptName(), intercept.getInterceptName()));
            IBackPressedIntercept iBackPressedIntercept = (IBackPressedIntercept) next;
            if (iBackPressedIntercept != null) {
                this.intercepts.remove(iBackPressedIntercept);
            }
        }
    }

    @Override // com.cloud.tmc.integration.processor.IBackPressedProcessor
    public IBackPressedIntercept.Result startBackPressedInterceptorChain(IBackPressedIntercept.Params params) {
        boolean configTargetBool;
        Intrinsics.h(params, "params");
        try {
            configTargetBool = MiniAppConfigHelper.INSTANCE.getConfigTargetBool(LauncherMiniAppConfigHelper.KEY_MINI_BACK_INTERCEPTOR_ENABLE, true);
        } catch (Throwable th2) {
            TmcLogger.e(TAG, th2);
            configTargetBool = true;
        }
        TmcLogger.d(TAG, "enable: " + configTargetBool);
        if (!configTargetBool) {
            return new IBackPressedIntercept.Result(false, 1, null);
        }
        ArrayList arrayList = new ArrayList();
        CollectionsKt.B(arrayList, getInterceptors());
        try {
            return new RealBackPressedInterceptChain(arrayList, 0, params).proceed(params);
        } catch (Throwable th3) {
            TmcLogger.e(TAG, th3);
            return new IBackPressedIntercept.Result(false, 1, null);
        }
    }
}
