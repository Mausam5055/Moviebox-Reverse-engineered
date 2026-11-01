package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import o0.z;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0002\u001a\u00020\u00002\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lo0/z;", "velocity", "<anonymous>", "(Lo0/z;)Lo0/z;"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollingLogic$onDragStopped$performFling$1", f = "Scrollable.kt", l = {745, 748, 751}, m = "invokeSuspend")
final class ScrollingLogic$onDragStopped$performFling$1 extends SuspendLambda implements Function2<z, Continuation<? super z>, Object> {
    /* synthetic */ long J$0;
    long J$1;
    int label;
    final /* synthetic */ ScrollingLogic this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollingLogic$onDragStopped$performFling$1(ScrollingLogic scrollingLogic, Continuation<? super ScrollingLogic$onDragStopped$performFling$1> continuation) {
        super(2, continuation);
        this.this$0 = scrollingLogic;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ScrollingLogic$onDragStopped$performFling$1 scrollingLogic$onDragStopped$performFling$1 = new ScrollingLogic$onDragStopped$performFling$1(this.this$0, continuation);
        scrollingLogic$onDragStopped$performFling$1.J$0 = ((z) obj).n();
        return scrollingLogic$onDragStopped$performFling$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return m35invokesFctU(((z) obj).n(), (Continuation) obj2);
    }

    /* JADX INFO: renamed from: invoke-sF-c-tU, reason: not valid java name */
    public final Object m35invokesFctU(long j11, Continuation<? super z> continuation) {
        return ((ScrollingLogic$onDragStopped$performFling$1) create(z.b(j11), continuation)).invokeSuspend(Unit.f67061a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0087 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x0088  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objC;
        long j11;
        Object objN;
        long j12;
        long j13;
        long jN;
        Object objA;
        long j14;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 != 0) {
            if (i11 == 1) {
                j11 = this.J$0;
                ResultKt.b(obj);
                objC = obj;
            } else if (i11 == 2) {
                j12 = this.J$1;
                long j15 = this.J$0;
                ResultKt.b(obj);
                objN = obj;
                j13 = j15;
                jN = ((z) objN).n();
                NestedScrollDispatcher nestedScrollDispatcher = this.this$0.f2698f;
                long jK = z.k(j12, jN);
                this.J$0 = j13;
                this.J$1 = jN;
                this.label = 3;
                objA = nestedScrollDispatcher.a(jK, jN, this);
                if (objA == objF) {
                    return objF;
                }
                j14 = j13;
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                long j16 = this.J$1;
                j14 = this.J$0;
                ResultKt.b(obj);
                jN = j16;
                objA = obj;
            }
            return z.b(z.k(j14, z.k(jN, ((z) objA).n())));
        }
        ResultKt.b(obj);
        long j17 = this.J$0;
        NestedScrollDispatcher nestedScrollDispatcher2 = this.this$0.f2698f;
        this.J$0 = j17;
        this.label = 1;
        objC = nestedScrollDispatcher2.c(j17, this);
        if (objC == objF) {
            return objF;
        }
        j11 = j17;
        long jK2 = z.k(j11, ((z) objC).n());
        ScrollingLogic scrollingLogic = this.this$0;
        this.J$0 = j11;
        this.J$1 = jK2;
        this.label = 2;
        objN = scrollingLogic.n(jK2, this);
        if (objN == objF) {
            return objF;
        }
        j12 = jK2;
        j13 = j11;
        jN = ((z) objN).n();
        NestedScrollDispatcher nestedScrollDispatcher3 = this.this$0.f2698f;
        long jK3 = z.k(j12, jN);
        this.J$0 = j13;
        this.J$1 = jN;
        this.label = 3;
        objA = nestedScrollDispatcher3.a(jK3, jN, this);
        if (objA == objF) {
            return objF;
        }
        j14 = j13;
        return z.b(z.k(j14, z.k(jN, ((z) objA).n())));
    }
}
