package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.a0;
import androidx.compose.foundation.lazy.layout.z;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    public static final class a implements z {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ LazyListState f2945a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f2946b;

        a(LazyListState lazyListState, boolean z10) {
            this.f2945a = lazyListState;
            this.f2946b = z10;
        }

        @Override // androidx.compose.foundation.lazy.layout.z
        public int a() {
            return this.f2945a.t().e() + this.f2945a.t().b();
        }

        @Override // androidx.compose.foundation.lazy.layout.z
        public float b() {
            return a0.a(this.f2945a.o(), this.f2945a.p(), this.f2945a.d());
        }

        @Override // androidx.compose.foundation.lazy.layout.z
        public Object c(int i11, Continuation continuation) {
            Object objH = LazyListState.H(this.f2945a, i11, 0, continuation, 2, null);
            return objH == IntrinsicsKt.f() ? objH : Unit.f67061a;
        }

        @Override // androidx.compose.foundation.lazy.layout.z
        public androidx.compose.ui.semantics.b d() {
            return this.f2946b ? new androidx.compose.ui.semantics.b(-1, 1) : new androidx.compose.ui.semantics.b(1, -1);
        }

        @Override // androidx.compose.foundation.lazy.layout.z
        public int e() {
            return this.f2945a.t().getOrientation() == Orientation.Vertical ? o0.t.f(this.f2945a.t().a()) : o0.t.g(this.f2945a.t().a());
        }

        @Override // androidx.compose.foundation.lazy.layout.z
        public float f() {
            return a0.b(this.f2945a.o(), this.f2945a.p());
        }
    }

    public static final z a(LazyListState lazyListState, boolean z10) {
        return new a(lazyListState, z10);
    }
}
