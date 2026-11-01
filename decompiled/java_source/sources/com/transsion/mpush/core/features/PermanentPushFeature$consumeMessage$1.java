package com.transsion.mpush.core.features;

import android.content.Context;
import com.transsion.mpush.api.PermanentPushMessage;
import com.transsion.mpush.core.db.PushDatabase;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.mpush.core.features.PermanentPushFeature$consumeMessage$1", f = "PermanentPushFeature.kt", l = {276}, m = "invokeSuspend")
@SourceDebugExtension
final class PermanentPushFeature$consumeMessage$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $id;
    int label;
    final /* synthetic */ PermanentPushFeature this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PermanentPushFeature$consumeMessage$1(PermanentPushFeature permanentPushFeature, String str, Continuation<? super PermanentPushFeature$consumeMessage$1> continuation) {
        super(2, continuation);
        this.this$0 = permanentPushFeature;
        this.$id = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PermanentPushFeature$consumeMessage$1(this.this$0, this.$id, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PermanentPushFeature$consumeMessage$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Context context;
        Object next;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            CopyOnWriteArrayList copyOnWriteArrayList = this.this$0.f47537f;
            String str = this.$id;
            Iterator it = copyOnWriteArrayList.iterator();
            do {
                context = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((PermanentPushMessage) next).getSubjectId(), str));
            PermanentPushMessage permanentPushMessage = (PermanentPushMessage) next;
            if (permanentPushMessage != null) {
                this.this$0.f47537f.remove(permanentPushMessage);
                PushDatabase.Companion companion = PushDatabase.INSTANCE;
                Context context2 = this.this$0.f47533b;
                if (context2 == null) {
                    Intrinsics.z("context");
                } else {
                    context = context2;
                }
                companion.b(context).k0().a(permanentPushMessage);
                if (this.this$0.f47537f.size() < this.this$0.f47540i) {
                    PermanentPushFeature permanentPushFeature = this.this$0;
                    this.label = 1;
                    if (permanentPushFeature.k(this) == objF) {
                        return objF;
                    }
                } else {
                    this.this$0.o();
                }
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f67061a;
    }
}
