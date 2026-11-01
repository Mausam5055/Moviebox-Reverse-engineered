package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.f0;
import androidx.compose.ui.input.pointer.h0;
import androidx.compose.ui.input.pointer.w;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
public abstract class ScrollableKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Function1 f2685a = new Function1<w, Boolean>() { // from class: androidx.compose.foundation.gestures.ScrollableKt$CanDragCalculation$1
        @Override // kotlin.jvm.functions.Function1
        public final Boolean invoke(w wVar) {
            return Boolean.valueOf(!h0.g(wVar.n(), h0.f4998a.b()));
        }
    };

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final k f2686b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final androidx.compose.ui.j f2687c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final c f2688d = new c();

    public static final class a implements androidx.compose.ui.j {
        a() {
        }

        @Override // kotlin.coroutines.CoroutineContext
        public Object fold(Object obj, Function2 function2) {
            return androidx.compose.ui.j.a.a(this, obj, function2);
        }

        @Override // kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
        public CoroutineContext.Element get(CoroutineContext.Key key) {
            return androidx.compose.ui.j.a.b(this, key);
        }

        @Override // kotlin.coroutines.CoroutineContext.Element
        public /* synthetic */ CoroutineContext.Key getKey() {
            return androidx.compose.ui.i.a(this);
        }

        @Override // androidx.compose.ui.j
        public float k() {
            return 1.0f;
        }

        @Override // kotlin.coroutines.CoroutineContext
        public CoroutineContext minusKey(CoroutineContext.Key key) {
            return androidx.compose.ui.j.a.c(this, key);
        }

        @Override // kotlin.coroutines.CoroutineContext
        public CoroutineContext plus(CoroutineContext coroutineContext) {
            return androidx.compose.ui.j.a.d(this, coroutineContext);
        }
    }

    public static final class b implements k {
        b() {
        }

        @Override // androidx.compose.foundation.gestures.k
        public float a(float f11) {
            return f11;
        }
    }

    public static final class c implements o0.e {
        c() {
        }

        @Override // o0.n
        public float C0() {
            return 1.0f;
        }

        @Override // o0.e
        public /* synthetic */ float E0(float f11) {
            return o0.d.e(this, f11);
        }

        @Override // o0.n
        public /* synthetic */ long H(float f11) {
            return o0.m.b(this, f11);
        }

        @Override // o0.n
        public /* synthetic */ float J(long j11) {
            return o0.m.a(this, j11);
        }

        @Override // o0.e
        public /* synthetic */ long Q(float f11) {
            return o0.d.g(this, f11);
        }

        @Override // o0.e
        public /* synthetic */ long Q0(long j11) {
            return o0.d.f(this, j11);
        }

        @Override // o0.e
        public /* synthetic */ int c0(float f11) {
            return o0.d.a(this, f11);
        }

        @Override // o0.e
        public float getDensity() {
            return 1.0f;
        }

        @Override // o0.e
        public /* synthetic */ float h0(long j11) {
            return o0.d.d(this, j11);
        }

        @Override // o0.e
        public /* synthetic */ float x0(int i11) {
            return o0.d.c(this, i11);
        }

        @Override // o0.e
        public /* synthetic */ float y0(float f11) {
            return o0.d.b(this, f11);
        }
    }

    public static final androidx.compose.ui.j e() {
        return f2687c;
    }

    public static final androidx.compose.ui.f f(androidx.compose.ui.f fVar, o oVar, Orientation orientation, f0 f0Var, boolean z10, boolean z11, g gVar, p.i iVar, d dVar) {
        return fVar.e(new ScrollableElement(oVar, orientation, f0Var, z10, z11, gVar, iVar, dVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object g(ScrollingLogic scrollingLogic, long j11, Continuation continuation) throws Throwable {
        ScrollableKt$semanticsScrollBy$1 scrollableKt$semanticsScrollBy$1;
        Ref.FloatRef floatRef;
        if (continuation instanceof ScrollableKt$semanticsScrollBy$1) {
            scrollableKt$semanticsScrollBy$1 = (ScrollableKt$semanticsScrollBy$1) continuation;
            int i11 = scrollableKt$semanticsScrollBy$1.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                scrollableKt$semanticsScrollBy$1.label = i11 - Integer.MIN_VALUE;
            } else {
                scrollableKt$semanticsScrollBy$1 = new ScrollableKt$semanticsScrollBy$1(continuation);
            }
        } else {
            scrollableKt$semanticsScrollBy$1 = new ScrollableKt$semanticsScrollBy$1(continuation);
        }
        Object obj = scrollableKt$semanticsScrollBy$1.result;
        Object objF = IntrinsicsKt.f();
        int i12 = scrollableKt$semanticsScrollBy$1.label;
        if (i12 == 0) {
            ResultKt.b(obj);
            floatRef = new Ref.FloatRef();
            MutatePriority mutatePriority = MutatePriority.Default;
            ScrollableKt$semanticsScrollBy$2 scrollableKt$semanticsScrollBy$2 = new ScrollableKt$semanticsScrollBy$2(scrollingLogic, j11, floatRef, null);
            scrollableKt$semanticsScrollBy$1.L$0 = scrollingLogic;
            scrollableKt$semanticsScrollBy$1.L$1 = floatRef;
            scrollableKt$semanticsScrollBy$1.label = 1;
            if (scrollingLogic.v(mutatePriority, scrollableKt$semanticsScrollBy$2, scrollableKt$semanticsScrollBy$1) == objF) {
                return objF;
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Ref.FloatRef floatRef2 = (Ref.FloatRef) scrollableKt$semanticsScrollBy$1.L$1;
            ScrollingLogic scrollingLogic2 = (ScrollingLogic) scrollableKt$semanticsScrollBy$1.L$0;
            ResultKt.b(obj);
            floatRef = floatRef2;
            scrollingLogic = scrollingLogic2;
        }
        return y.g.d(scrollingLogic.B(floatRef.element));
    }
}
