package com.transsion.push;

import com.transsion.mpush.api.LocalPushMessage;
import com.transsion.mpush.core.db.PushDatabase;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.push.PushTestActivity$seedLocalPushFromPreset$2", f = "PushTestActivity.kt", l = {321, 322}, m = "invokeSuspend")
final class PushTestActivity$seedLocalPushFromPreset$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<LocalPushMessage> $seeded;
    Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PushTestActivity$seedLocalPushFromPreset$2(List<LocalPushMessage> list, Continuation<? super PushTestActivity$seedLocalPushFromPreset$2> continuation) {
        super(2, continuation);
        this.$seeded = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PushTestActivity$seedLocalPushFromPreset$2(this.$seeded, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PushTestActivity$seedLocalPushFromPreset$2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        mn.a aVarJ0;
        List<LocalPushMessage> list;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                aVarJ0 = (mn.a) this.L$1;
                list = (List) this.L$0;
                ResultKt.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        PushDatabase pushDatabaseD = ln.a.f68978a.d();
        if (pushDatabaseD == null || (aVarJ0 = pushDatabaseD.j0()) == null) {
            return null;
        }
        List<LocalPushMessage> list2 = this.$seeded;
        this.L$0 = list2;
        this.L$1 = aVarJ0;
        this.label = 1;
        if (aVarJ0.a(this) == objF) {
            return objF;
        }
        list = list2;
        this.L$0 = null;
        this.L$1 = null;
        this.label = 2;
        if (aVarJ0.b(list, this) == objF) {
            return objF;
        }
        return Unit.f67061a;
    }
}
