package androidx.compose.material;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "androidx.compose.material.SliderKt$SliderThumb$1$1$1", f = "Slider.kt", l = {704}, m = "invokeSuspend")
final class SliderKt$SliderThumb$1$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final /* synthetic */ p.i $interactionSource;
    final /* synthetic */ SnapshotStateList $interactions;
    int label;

    static final class a implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ SnapshotStateList f3384a;

        a(SnapshotStateList snapshotStateList) {
            this.f3384a = snapshotStateList;
        }

        @Override // kotlinx.coroutines.flow.c
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object emit(p.f fVar, Continuation continuation) {
            if (fVar instanceof p.k.b) {
                this.f3384a.add(fVar);
            } else if (fVar instanceof p.k.c) {
                this.f3384a.remove(((p.k.c) fVar).a());
            } else if (fVar instanceof p.k.a) {
                this.f3384a.remove(((p.k.a) fVar).a());
            } else if (fVar instanceof p.a.b) {
                this.f3384a.add(fVar);
            } else if (fVar instanceof p.a.c) {
                this.f3384a.remove(((p.a.c) fVar).a());
            } else if (fVar instanceof p.a.C0879a) {
                this.f3384a.remove(((p.a.C0879a) fVar).a());
            }
            return Unit.f67061a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SliderKt$SliderThumb$1$1$1(p.i iVar, SnapshotStateList snapshotStateList, Continuation<? super SliderKt$SliderThumb$1$1$1> continuation) {
        super(2, continuation);
        this.$interactionSource = iVar;
        this.$interactions = snapshotStateList;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SliderKt$SliderThumb$1$1$1(this.$interactionSource, this.$interactions, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SliderKt$SliderThumb$1$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            kotlinx.coroutines.flow.b bVarB = this.$interactionSource.b();
            a aVar = new a(this.$interactions);
            this.label = 1;
            if (bVarB.a(aVar, this) == objF) {
                return objF;
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
