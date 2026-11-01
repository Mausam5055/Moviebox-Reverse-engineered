package androidx.compose.ui.layout;

import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.ViewCompat;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class c implements j, x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final androidx.compose.ui.node.y f5161a;

    public static final class a implements v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f5162a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f5163b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Map f5164c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Function1 f5165d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Function1 f5166e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ c f5167f;

        a(int i11, int i12, Map map, Function1 function1, Function1 function2, c cVar) {
            this.f5166e = function2;
            this.f5167f = cVar;
            this.f5162a = i11;
            this.f5163b = i12;
            this.f5164c = map;
            this.f5165d = function1;
        }

        @Override // androidx.compose.ui.layout.v
        public int getHeight() {
            return this.f5163b;
        }

        @Override // androidx.compose.ui.layout.v
        public int getWidth() {
            return this.f5162a;
        }

        @Override // androidx.compose.ui.layout.v
        public Map v() {
            return this.f5164c;
        }

        @Override // androidx.compose.ui.layout.v
        public void w() {
            this.f5166e.invoke(this.f5167f.v().d1());
        }

        @Override // androidx.compose.ui.layout.v
        public Function1 x() {
            return this.f5165d;
        }
    }

    public c(androidx.compose.ui.node.y yVar, b bVar) {
        this.f5161a = yVar;
    }

    public final void B(b bVar) {
    }

    @Override // o0.n
    public float C0() {
        return this.f5161a.C0();
    }

    @Override // o0.e
    public float E0(float f11) {
        return this.f5161a.E0(f11);
    }

    @Override // o0.n
    public long H(float f11) {
        return this.f5161a.H(f11);
    }

    @Override // o0.n
    public float J(long j11) {
        return this.f5161a.J(j11);
    }

    @Override // androidx.compose.ui.layout.x
    public v M0(int i11, int i12, Map map, Function1 function1, Function1 function2) {
        if (!((i11 & ViewCompat.MEASURED_STATE_MASK) == 0 && ((-16777216) & i12) == 0)) {
            g0.a.b("Size(" + i11 + " x " + i12 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new a(i11, i12, map, function1, function2, this);
    }

    @Override // o0.e
    public long Q(float f11) {
        return this.f5161a.Q(f11);
    }

    @Override // o0.e
    public long Q0(long j11) {
        return this.f5161a.Q0(j11);
    }

    @Override // androidx.compose.ui.layout.j
    public boolean W() {
        return false;
    }

    @Override // o0.e
    public int c0(float f11) {
        return this.f5161a.c0(f11);
    }

    @Override // o0.e
    public float getDensity() {
        return this.f5161a.getDensity();
    }

    @Override // androidx.compose.ui.layout.j
    public LayoutDirection getLayoutDirection() {
        return this.f5161a.getLayoutDirection();
    }

    @Override // o0.e
    public float h0(long j11) {
        return this.f5161a.h0(j11);
    }

    public final b n() {
        return null;
    }

    @Override // androidx.compose.ui.layout.x
    public v p0(int i11, int i12, Map map, Function1 function1) {
        return this.f5161a.p0(i11, i12, map, function1);
    }

    public final androidx.compose.ui.node.y v() {
        return this.f5161a;
    }

    @Override // o0.e
    public float x0(int i11) {
        return this.f5161a.x0(i11);
    }

    @Override // o0.e
    public float y0(float f11) {
        return this.f5161a.y0(f11);
    }

    public long z() {
        androidx.compose.ui.node.j0 j0VarU1 = this.f5161a.U1();
        Intrinsics.e(j0VarU1);
        v vVarB1 = j0VarU1.b1();
        return o0.u.a(vVarB1.getWidth(), vVarB1.getHeight());
    }
}
