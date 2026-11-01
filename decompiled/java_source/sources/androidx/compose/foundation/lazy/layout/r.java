package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.layout.o0;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final class r implements q, androidx.compose.ui.layout.x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LazyLayoutItemContentFactory f3068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o0 f3069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final m f3070c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashMap f3071d = new HashMap();

    public r(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, o0 o0Var) {
        this.f3068a = lazyLayoutItemContentFactory;
        this.f3069b = o0Var;
        this.f3070c = (m) lazyLayoutItemContentFactory.d().invoke();
    }

    @Override // o0.n
    public float C0() {
        return this.f3069b.C0();
    }

    @Override // o0.e
    public float E0(float f11) {
        return this.f3069b.E0(f11);
    }

    @Override // o0.n
    public long H(float f11) {
        return this.f3069b.H(f11);
    }

    @Override // o0.n
    public float J(long j11) {
        return this.f3069b.J(j11);
    }

    @Override // androidx.compose.ui.layout.x
    public androidx.compose.ui.layout.v M0(int i11, int i12, Map map, Function1 function1, Function1 function2) {
        return this.f3069b.M0(i11, i12, map, function1, function2);
    }

    @Override // o0.e
    public long Q(float f11) {
        return this.f3069b.Q(f11);
    }

    @Override // o0.e
    public long Q0(long j11) {
        return this.f3069b.Q0(j11);
    }

    @Override // androidx.compose.foundation.lazy.layout.q
    public List S(int i11, long j11) {
        List list = (List) this.f3071d.get(Integer.valueOf(i11));
        if (list != null) {
            return list;
        }
        Object objB = this.f3070c.b(i11);
        List listE = this.f3069b.E(objB, this.f3068a.b(i11, objB, this.f3070c.c(i11)));
        int size = listE.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i12 = 0; i12 < size; i12++) {
            arrayList.add(((androidx.compose.ui.layout.s) listE.get(i12)).P(j11));
        }
        this.f3071d.put(Integer.valueOf(i11), arrayList);
        return arrayList;
    }

    @Override // androidx.compose.ui.layout.j
    public boolean W() {
        return this.f3069b.W();
    }

    @Override // o0.e
    public int c0(float f11) {
        return this.f3069b.c0(f11);
    }

    @Override // o0.e
    public float getDensity() {
        return this.f3069b.getDensity();
    }

    @Override // androidx.compose.ui.layout.j
    public LayoutDirection getLayoutDirection() {
        return this.f3069b.getLayoutDirection();
    }

    @Override // o0.e
    public float h0(long j11) {
        return this.f3069b.h0(j11);
    }

    @Override // androidx.compose.ui.layout.x
    public androidx.compose.ui.layout.v p0(int i11, int i12, Map map, Function1 function1) {
        return this.f3069b.p0(i11, i12, map, function1);
    }

    @Override // o0.e
    public float x0(int i11) {
        return this.f3069b.x0(i11);
    }

    @Override // o0.e
    public float y0(float f11) {
        return this.f3069b.y0(f11);
    }
}
