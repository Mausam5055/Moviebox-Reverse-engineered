package androidx.compose.foundation;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.v1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.AbstractClickableNode$handlePressInteraction$2$1", f = "Clickable.kt", l = {1139, 1141, 1148, 1149, 1158}, m = "invokeSuspend")
final class AbstractClickableNode$handlePressInteraction$2$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ p.i $interactionSource;
    final /* synthetic */ long $offset;
    final /* synthetic */ androidx.compose.foundation.gestures.i $this_handlePressInteraction;
    private /* synthetic */ Object L$0;
    boolean Z$0;
    int label;
    final /* synthetic */ AbstractClickableNode this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbstractClickableNode$handlePressInteraction$2$1(androidx.compose.foundation.gestures.i iVar, long j11, p.i iVar2, AbstractClickableNode abstractClickableNode, Continuation<? super AbstractClickableNode$handlePressInteraction$2$1> continuation) {
        super(2, continuation);
        this.$this_handlePressInteraction = iVar;
        this.$offset = j11;
        this.$interactionSource = iVar2;
        this.this$0 = abstractClickableNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AbstractClickableNode$handlePressInteraction$2$1 abstractClickableNode$handlePressInteraction$2$1 = new AbstractClickableNode$handlePressInteraction$2$1(this.$this_handlePressInteraction, this.$offset, this.$interactionSource, this.this$0, continuation);
        abstractClickableNode$handlePressInteraction$2$1.L$0 = obj;
        return abstractClickableNode$handlePressInteraction$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AbstractClickableNode$handlePressInteraction$2$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0088  */
    /* JADX WARN: Code duplicated, block: B:28:0x00a0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:29:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ae A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        t1 t1VarD;
        Object objF0;
        boolean z10;
        p.k.b bVar;
        p.k.c cVar;
        p.i iVar;
        p.k.c cVar2;
        p.i iVar2;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                t1VarD = (t1) this.L$0;
                ResultKt.b(obj);
                objF0 = obj;
            } else if (i11 == 2) {
                z10 = this.Z$0;
                ResultKt.b(obj);
                if (z10) {
                    bVar = new p.k.b(this.$offset, null);
                    cVar = new p.k.c(bVar);
                    iVar = this.$interactionSource;
                    this.L$0 = cVar;
                    this.label = 3;
                    if (iVar.c(bVar, this) == objF) {
                        return objF;
                    }
                    cVar2 = cVar;
                    iVar2 = this.$interactionSource;
                    this.L$0 = null;
                    this.label = 4;
                    if (iVar2.c(cVar2, this) == objF) {
                        return objF;
                    }
                }
            } else if (i11 == 3) {
                cVar2 = (p.k.c) this.L$0;
                ResultKt.b(obj);
                iVar2 = this.$interactionSource;
                this.L$0 = null;
                this.label = 4;
                if (iVar2.c(cVar2, this) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 4 && i11 != 5) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            this.this$0.A = null;
            return Unit.f67061a;
        }
        ResultKt.b(obj);
        t1VarD = kotlinx.coroutines.k.d((n0) this.L$0, null, null, new AbstractClickableNode$handlePressInteraction$2$1$delayJob$1(this.this$0, this.$offset, this.$interactionSource, null), 3, null);
        androidx.compose.foundation.gestures.i iVar3 = this.$this_handlePressInteraction;
        this.L$0 = t1VarD;
        this.label = 1;
        objF0 = iVar3.f0(this);
        if (objF0 == objF) {
            return objF;
        }
        boolean zBooleanValue = ((Boolean) objF0).booleanValue();
        if (t1VarD.isActive()) {
            this.L$0 = null;
            this.Z$0 = zBooleanValue;
            this.label = 2;
            if (v1.g(t1VarD, this) == objF) {
                return objF;
            }
            z10 = zBooleanValue;
            if (z10) {
                bVar = new p.k.b(this.$offset, null);
                cVar = new p.k.c(bVar);
                iVar = this.$interactionSource;
                this.L$0 = cVar;
                this.label = 3;
                if (iVar.c(bVar, this) == objF) {
                    return objF;
                }
                cVar2 = cVar;
                iVar2 = this.$interactionSource;
                this.L$0 = null;
                this.label = 4;
                if (iVar2.c(cVar2, this) == objF) {
                    return objF;
                }
            }
        } else {
            p.k.b bVar2 = this.this$0.A;
            if (bVar2 != null) {
                p.i iVar4 = this.$interactionSource;
                p.f cVar3 = zBooleanValue ? new p.k.c(bVar2) : new p.k.a(bVar2);
                this.L$0 = null;
                this.label = 5;
                if (iVar4.c(cVar3, this) == objF) {
                    return objF;
                }
            }
        }
        this.this$0.A = null;
        return Unit.f67061a;
    }
}
