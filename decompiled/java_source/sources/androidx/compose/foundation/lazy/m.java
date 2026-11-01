package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes.dex */
public final class m implements l, androidx.compose.ui.layout.v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final n f3091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f3092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f3093c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f3094d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f3095e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f3096f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final n0 f3097g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final o0.e f3098h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final long f3099i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final List f3100j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final int f3101k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final int f3102l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final int f3103m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final boolean f3104n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Orientation f3105o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f3106p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f3107q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final /* synthetic */ androidx.compose.ui.layout.v f3108r;

    private m(n nVar, int i11, boolean z10, float f11, androidx.compose.ui.layout.v vVar, float f12, boolean z11, n0 n0Var, o0.e eVar, long j11, List list, int i12, int i13, int i14, boolean z12, Orientation orientation, int i15, int i16) {
        this.f3091a = nVar;
        this.f3092b = i11;
        this.f3093c = z10;
        this.f3094d = f11;
        this.f3095e = f12;
        this.f3096f = z11;
        this.f3097g = n0Var;
        this.f3098h = eVar;
        this.f3099i = j11;
        this.f3100j = list;
        this.f3101k = i12;
        this.f3102l = i13;
        this.f3103m = i14;
        this.f3104n = z12;
        this.f3105o = orientation;
        this.f3106p = i15;
        this.f3107q = i16;
        this.f3108r = vVar;
    }

    public /* synthetic */ m(n nVar, int i11, boolean z10, float f11, androidx.compose.ui.layout.v vVar, float f12, boolean z11, n0 n0Var, o0.e eVar, long j11, List list, int i12, int i13, int i14, boolean z12, Orientation orientation, int i15, int i16, DefaultConstructorMarker defaultConstructorMarker) {
        this(nVar, i11, z10, f11, vVar, f12, z11, n0Var, eVar, j11, list, i12, i13, i14, z12, orientation, i15, i16);
    }

    @Override // androidx.compose.foundation.lazy.l
    public long a() {
        return o0.u.a(getWidth(), getHeight());
    }

    @Override // androidx.compose.foundation.lazy.l
    public int b() {
        return this.f3106p;
    }

    @Override // androidx.compose.foundation.lazy.l
    public int c() {
        return this.f3102l;
    }

    @Override // androidx.compose.foundation.lazy.l
    public int d() {
        return this.f3103m;
    }

    @Override // androidx.compose.foundation.lazy.l
    public int e() {
        return -g();
    }

    @Override // androidx.compose.foundation.lazy.l
    public int f() {
        return this.f3107q;
    }

    @Override // androidx.compose.foundation.lazy.l
    public int g() {
        return this.f3101k;
    }

    @Override // androidx.compose.ui.layout.v
    public int getHeight() {
        return this.f3108r.getHeight();
    }

    @Override // androidx.compose.foundation.lazy.l
    public Orientation getOrientation() {
        return this.f3105o;
    }

    @Override // androidx.compose.ui.layout.v
    public int getWidth() {
        return this.f3108r.getWidth();
    }

    @Override // androidx.compose.foundation.lazy.l
    public List h() {
        return this.f3100j;
    }

    public final boolean i() {
        n nVar = this.f3091a;
        return ((nVar != null ? nVar.getIndex() : 0) == 0 && this.f3092b == 0) ? false : true;
    }

    public final boolean j() {
        return this.f3093c;
    }

    public final long k() {
        return this.f3099i;
    }

    public final float l() {
        return this.f3094d;
    }

    public final n0 m() {
        return this.f3097g;
    }

    public final o0.e n() {
        return this.f3098h;
    }

    public final n o() {
        return this.f3091a;
    }

    public final int p() {
        return this.f3092b;
    }

    public final float q() {
        return this.f3095e;
    }

    public final boolean r(int i11, boolean z10) {
        n nVar;
        boolean z11 = false;
        z11 = false;
        z11 = false;
        z11 = false;
        z11 = false;
        z11 = false;
        z11 = false;
        z11 = false;
        z11 = false;
        if (!this.f3096f && !h().isEmpty() && (nVar = this.f3091a) != null) {
            int iH = nVar.h();
            int i12 = this.f3092b - i11;
            if (i12 >= 0 && i12 < iH) {
                n nVar2 = (n) CollectionsKt.i0(h());
                n nVar3 = (n) CollectionsKt.u0(h());
                if (!nVar2.p() && !nVar3.p() && (i11 >= 0 ? Math.min(g() - nVar2.g(), c() - nVar3.g()) > i11 : Math.min((nVar2.g() + nVar2.h()) - g(), (nVar3.g() + nVar3.h()) - c()) > (-i11))) {
                    this.f3092b -= i11;
                    List listH = h();
                    int size = listH.size();
                    for (int i13 = 0; i13 < size; i13++) {
                        ((n) listH.get(i13)).l(i11, z10);
                    }
                    this.f3094d = i11;
                    z11 = true;
                    z11 = true;
                    z11 = true;
                    if (!this.f3093c && i11 > 0) {
                        this.f3093c = true;
                    }
                }
            }
        }
        return z11;
    }

    @Override // androidx.compose.ui.layout.v
    public Map v() {
        return this.f3108r.v();
    }

    @Override // androidx.compose.ui.layout.v
    public void w() {
        this.f3108r.w();
    }

    @Override // androidx.compose.ui.layout.v
    public Function1 x() {
        return this.f3108r.x();
    }
}
