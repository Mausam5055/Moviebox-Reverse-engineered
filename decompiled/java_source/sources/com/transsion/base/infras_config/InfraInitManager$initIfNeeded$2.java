package com.transsion.base.infras_config;

import com.transsion.base.infras_config.model.ConfigInitData;
import com.transsion.base.infras_config.model.ConfigLocalState;
import gj.b;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "Lkotlin/Result;", "Lcom/transsion/base/infras_config/model/ConfigInitData;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lkotlin/Result;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.base.infras_config.InfraInitManager$initIfNeeded$2", f = "InfraInitManager.kt", l = {154}, m = "invokeSuspend")
final class InfraInitManager$initIfNeeded$2 extends SuspendLambda implements Function2<n0, Continuation<? super Result<? extends ConfigInitData>>, Object> {
    final /* synthetic */ String $baseUrl;
    final /* synthetic */ long $minIntervalMs;
    final /* synthetic */ List<ConfigLocalState> $sourceVersions;
    final /* synthetic */ String $version;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InfraInitManager$initIfNeeded$2(long j11, List<ConfigLocalState> list, String str, String str2, Continuation<? super InfraInitManager$initIfNeeded$2> continuation) {
        super(2, continuation);
        this.$minIntervalMs = j11;
        this.$sourceVersions = list;
        this.$version = str;
        this.$baseUrl = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new InfraInitManager$initIfNeeded$2(this.$minIntervalMs, this.$sourceVersions, this.$version, this.$baseUrl, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Result<ConfigInitData>> continuation) {
        return ((InfraInitManager$initIfNeeded$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object value;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            long jCurrentTimeMillis = System.currentTimeMillis();
            b bVar = b.f63623a;
            long jD = bVar.d();
            if (jD <= 0 || jCurrentTimeMillis - jD >= this.$minIntervalMs) {
                lg.a.C0828a.f(lg.a.f68839a, "InfraInitManager", "initIfNeeded() expired or never initialized, will request from network", false, 4, null);
            } else {
                ConfigInitData configInitDataB = bVar.b(this.$sourceVersions);
                if (configInitDataB != null) {
                    lg.a.C0828a.z(lg.a.f68839a, "InfraInitManager", "initIfNeeded() hit cache, sourceCount=" + this.$sourceVersions.size() + ", version=" + this.$version, false, 4, null);
                    return Result.m453boximpl(Result.m454constructorimpl(configInitDataB));
                }
                lg.a.C0828a.z(lg.a.f68839a, "InfraInitManager", "initIfNeeded() cache miss, will request from network", false, 4, null);
            }
            InfraInitManager infraInitManager = InfraInitManager.f42995a;
            List<ConfigLocalState> list = this.$sourceVersions;
            String str = this.$version;
            String str2 = this.$baseUrl;
            this.label = 1;
            Object objE = infraInitManager.e(list, str, str2, this);
            if (objE == objF) {
                return objF;
            }
            value = objE;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            value = ((Result) obj).getValue();
        }
        return Result.m453boximpl(value);
    }
}
