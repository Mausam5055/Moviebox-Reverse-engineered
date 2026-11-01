package com.wecloud.load.lib;

import android.util.Log;
import com.transsion.base.infras_config.InfraInitManager;
import com.transsion.base.infras_config.model.ConfigLocalState;
import com.transsion.base.infras_config.model.InfrasSourceType;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.wecloud.load.lib.StProbeIntegration$initStProbeConfig$2", f = "StProbeIntegration.kt", l = {Sdk$SDKError.Reason.TPAT_ERROR_VALUE}, m = "invokeSuspend")
final class StProbeIntegration$initStProbeConfig$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $baseUrl;
    final /* synthetic */ String $globalVersion;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StProbeIntegration$initStProbeConfig$2(String str, String str2, Continuation<? super StProbeIntegration$initStProbeConfig$2> continuation) {
        super(2, continuation);
        this.$globalVersion = str;
        this.$baseUrl = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new StProbeIntegration$initStProbeConfig$2(this.$globalVersion, this.$baseUrl, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((StProbeIntegration$initStProbeConfig$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF;
        Object objF2 = IntrinsicsKt.f();
        int i11 = this.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                List listE = CollectionsKt.e(new ConfigLocalState(InfrasSourceType.ST_PROBER, null));
                InfraInitManager infraInitManager = InfraInitManager.f42995a;
                String str = this.$globalVersion;
                String str2 = this.$baseUrl;
                this.label = 1;
                objF = infraInitManager.f(listE, (4 & 2) != 0 ? null : str, (4 & 4) != 0 ? 3600000L : 0L, (4 & 8) != 0 ? null : str2, this);
                if (objF == objF2) {
                    return objF2;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                objF = ((Result) obj).getValue();
            }
            String strM462toStringimpl = Result.m462toStringimpl(objF);
            StringBuilder sb2 = new StringBuilder();
            sb2.append("initStProbeConfig: initIfNeeded returned=");
            sb2.append(strM462toStringimpl);
            StProbeIntegration.StProbeConfigs stProbeConfigsH = StProbeIntegration.f60834a.h();
            if (stProbeConfigsH == null) {
                Log.w("StProbeIntegration", "initStProbeConfig: init succeeded but cache configs is null");
                return Unit.f67061a;
            }
            List<StProbeIntegration.ProbeLinkDto> proberLinks = stProbeConfigsH.getProberLinks();
            int size = proberLinks != null ? proberLinks.size() : 0;
            String version = stProbeConfigsH.getVersion();
            StringBuilder sb3 = new StringBuilder();
            sb3.append("initStProbeConfig: cached ST_PROBER configs loaded, version=");
            sb3.append(version);
            sb3.append(", links=");
            sb3.append(size);
            return Unit.f67061a;
        } catch (Throwable th2) {
            Log.w("StProbeIntegration", "initStProbeConfig failed: " + th2.getClass().getName() + ": " + th2.getMessage(), th2);
        }
    }
}
