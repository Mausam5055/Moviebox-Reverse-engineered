package com.transsion.base.infras_config;

import com.transsion.base.infras_config.model.ConfigInitData;
import com.transsion.base.infras_config.model.ConfigLocalState;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lkotlinx/coroutines/n0;", "Lkotlin/Result;", "Lcom/transsion/base/infras_config/model/ConfigInitData;", "<anonymous>", "(Lkotlinx/coroutines/n0;)Lkotlin/Result;"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.base.infras_config.InfraInitManager$init$2", f = "InfraInitManager.kt", l = {}, m = "invokeSuspend")
final class InfraInitManager$init$2 extends SuspendLambda implements Function2<n0, Continuation<? super Result<? extends ConfigInitData>>, Object> {
    final /* synthetic */ String $baseUrl;
    final /* synthetic */ List<ConfigLocalState> $sourceVersions;
    final /* synthetic */ String $version;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InfraInitManager$init$2(List<ConfigLocalState> list, String str, String str2, Continuation<? super InfraInitManager$init$2> continuation) {
        super(2, continuation);
        this.$sourceVersions = list;
        this.$version = str;
        this.$baseUrl = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        InfraInitManager$init$2 infraInitManager$init$2 = new InfraInitManager$init$2(this.$sourceVersions, this.$version, this.$baseUrl, continuation);
        infraInitManager$init$2.L$0 = obj;
        return infraInitManager$init$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Result<ConfigInitData>> continuation) {
        return ((InfraInitManager$init$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM454constructorimpl;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        List<ConfigLocalState> list = this.$sourceVersions;
        String str = this.$version;
        String str2 = this.$baseUrl;
        try {
            Result.Companion companion = Result.INSTANCE;
            Object objA = InfraInitManager.f42995a.h(list, str, str2).a();
            Intrinsics.g(objA, "blockingFirst(...)");
            objM454constructorimpl = Result.m454constructorimpl((ConfigInitData) objA);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM454constructorimpl = Result.m454constructorimpl(ResultKt.a(th2));
        }
        return Result.m453boximpl(objM454constructorimpl);
    }
}
