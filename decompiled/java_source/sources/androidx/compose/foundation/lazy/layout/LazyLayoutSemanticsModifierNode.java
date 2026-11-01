package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.node.h1;
import androidx.compose.ui.node.i1;
import androidx.compose.ui.node.j1;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
final class LazyLayoutSemanticsModifierNode extends androidx.compose.ui.f.c implements i1 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Function0 f2994n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private z f2995o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Orientation f2996p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f2997q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f2998r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private androidx.compose.ui.semantics.g f2999s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final Function1 f3000t = new Function1<Object, Integer>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsModifierNode$indexForKeyMapping$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Integer invoke(Object obj) {
            m mVar = (m) this.this$0.f2994n.invoke();
            int itemCount = mVar.getItemCount();
            int i11 = 0;
            while (i11 < itemCount) {
                if (Intrinsics.c(mVar.b(i11), obj)) {
                    return Integer.valueOf(i11);
                }
                i11++;
            }
            i11 = -1;
            return Integer.valueOf(i11);
        }
    };

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Function1 f3001u;

    public LazyLayoutSemanticsModifierNode(Function0 function0, z zVar, Orientation orientation, boolean z10, boolean z11) {
        this.f2994n = function0;
        this.f2995o = zVar;
        this.f2996p = orientation;
        this.f2997q = z10;
        this.f2998r = z11;
        I1();
    }

    private final androidx.compose.ui.semantics.b F1() {
        return this.f2995o.d();
    }

    private final boolean G1() {
        return this.f2996p == Orientation.Vertical;
    }

    private final void I1() {
        this.f2999s = new androidx.compose.ui.semantics.g(new Function0<Float>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                return Float.valueOf(this.this$0.f2995o.f());
            }
        }, new Function0<Float>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                return Float.valueOf(this.this$0.f2995o.b());
            }
        }, this.f2998r);
        this.f3001u = this.f2997q ? new Function1<Integer, Boolean>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3

            /* JADX INFO: renamed from: androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2, reason: invalid class name */
            @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {1, 8, 0})
            @DebugMetadata(c = "androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsModifierNode$updateCachedSemanticsValues$3$2", f = "LazyLayoutSemantics.kt", l = {Sdk$SDKError.Reason.AD_IS_PLAYING_VALUE}, m = "invokeSuspend")
            static final class AnonymousClass2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
                final /* synthetic */ int $index;
                int label;
                final /* synthetic */ LazyLayoutSemanticsModifierNode this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                AnonymousClass2(LazyLayoutSemanticsModifierNode lazyLayoutSemanticsModifierNode, int i11, Continuation<? super AnonymousClass2> continuation) {
                    super(2, continuation);
                    this.this$0 = lazyLayoutSemanticsModifierNode;
                    this.$index = i11;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new AnonymousClass2(this.this$0, this.$index, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
                    return ((AnonymousClass2) create(n0Var, continuation)).invokeSuspend(Unit.f67061a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) throws Throwable {
                    Object objF = IntrinsicsKt.f();
                    int i11 = this.label;
                    if (i11 == 0) {
                        ResultKt.b(obj);
                        z zVar = this.this$0.f2995o;
                        int i12 = this.$index;
                        this.label = 1;
                        if (zVar.c(i12, this) == objF) {
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

            {
                super(1);
            }

            public final Boolean invoke(int i11) {
                m mVar = (m) this.this$0.f2994n.invoke();
                if (i11 >= 0 && i11 < mVar.getItemCount()) {
                    kotlinx.coroutines.k.d(this.this$0.d1(), null, null, new AnonymousClass2(this.this$0, i11, null), 3, null);
                    return Boolean.TRUE;
                }
                throw new IllegalArgumentException(("Can't scroll to index " + i11 + ", it is out of bounds [0, " + mVar.getItemCount() + ')').toString());
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                return invoke(((Number) obj).intValue());
            }
        } : null;
    }

    public final void H1(Function0 function0, z zVar, Orientation orientation, boolean z10, boolean z11) {
        this.f2994n = function0;
        this.f2995o = zVar;
        if (this.f2996p != orientation) {
            this.f2996p = orientation;
            j1.b(this);
        }
        if (this.f2997q == z10 && this.f2998r == z11) {
            return;
        }
        this.f2997q = z10;
        this.f2998r = z11;
        I1();
        j1.b(this);
    }

    @Override // androidx.compose.ui.node.i1
    public /* synthetic */ boolean O() {
        return h1.a(this);
    }

    @Override // androidx.compose.ui.node.i1
    public void R0(androidx.compose.ui.semantics.n nVar) {
        SemanticsPropertiesKt.J(nVar, true);
        SemanticsPropertiesKt.k(nVar, this.f3000t);
        if (G1()) {
            androidx.compose.ui.semantics.g gVar = this.f2999s;
            if (gVar == null) {
                Intrinsics.z("scrollAxisRange");
                gVar = null;
            }
            SemanticsPropertiesKt.K(nVar, gVar);
        } else {
            androidx.compose.ui.semantics.g gVar2 = this.f2999s;
            if (gVar2 == null) {
                Intrinsics.z("scrollAxisRange");
                gVar2 = null;
            }
            SemanticsPropertiesKt.x(nVar, gVar2);
        }
        Function1 function1 = this.f3001u;
        if (function1 != null) {
            SemanticsPropertiesKt.t(nVar, null, function1, 1, null);
        }
        SemanticsPropertiesKt.h(nVar, null, new Function0<Float>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsModifierNode$applySemantics$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Float invoke() {
                return Float.valueOf(this.this$0.f2995o.e() - this.this$0.f2995o.a());
            }
        }, 1, null);
        SemanticsPropertiesKt.u(nVar, F1());
    }

    @Override // androidx.compose.ui.node.i1
    public /* synthetic */ boolean W0() {
        return h1.b(this);
    }

    @Override // androidx.compose.ui.f.c
    public boolean i1() {
        return false;
    }
}
