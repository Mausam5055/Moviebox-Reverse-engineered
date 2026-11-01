package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.c5;
import androidx.compose.ui.graphics.d5;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.q4;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class n extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List f4861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4862c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j1 f4863d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final float f4864e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final j1 f4865f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final float f4866g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final float f4867h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f4868i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f4869j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final float f4870k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final float f4871l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final float f4872m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final float f4873n;

    private n(String str, List list, int i11, j1 j1Var, float f11, j1 j1Var2, float f12, float f13, int i12, int i13, float f14, float f15, float f16, float f17) {
        super(null);
        this.f4860a = str;
        this.f4861b = list;
        this.f4862c = i11;
        this.f4863d = j1Var;
        this.f4864e = f11;
        this.f4865f = j1Var2;
        this.f4866g = f12;
        this.f4867h = f13;
        this.f4868i = i12;
        this.f4869j = i13;
        this.f4870k = f14;
        this.f4871l = f15;
        this.f4872m = f16;
        this.f4873n = f17;
    }

    public /* synthetic */ n(String str, List list, int i11, j1 j1Var, float f11, j1 j1Var2, float f12, float f13, int i12, int i13, float f14, float f15, float f16, float f17, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, list, i11, j1Var, f11, j1Var2, f12, f13, i12, i13, f14, f15, f16, f17);
    }

    public final j1 a() {
        return this.f4863d;
    }

    public final float c() {
        return this.f4864e;
    }

    public final String e() {
        return this.f4860a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && n.class == obj.getClass()) {
            n nVar = (n) obj;
            return Intrinsics.c(this.f4860a, nVar.f4860a) && Intrinsics.c(this.f4863d, nVar.f4863d) && this.f4864e == nVar.f4864e && Intrinsics.c(this.f4865f, nVar.f4865f) && this.f4866g == nVar.f4866g && this.f4867h == nVar.f4867h && c5.e(this.f4868i, nVar.f4868i) && d5.e(this.f4869j, nVar.f4869j) && this.f4870k == nVar.f4870k && this.f4871l == nVar.f4871l && this.f4872m == nVar.f4872m && this.f4873n == nVar.f4873n && q4.d(this.f4862c, nVar.f4862c) && Intrinsics.c(this.f4861b, nVar.f4861b);
        }
        return false;
    }

    public final List f() {
        return this.f4861b;
    }

    public final int h() {
        return this.f4862c;
    }

    public int hashCode() {
        int iHashCode = ((this.f4860a.hashCode() * 31) + this.f4861b.hashCode()) * 31;
        j1 j1Var = this.f4863d;
        int iHashCode2 = (((iHashCode + (j1Var != null ? j1Var.hashCode() : 0)) * 31) + Float.floatToIntBits(this.f4864e)) * 31;
        j1 j1Var2 = this.f4865f;
        return ((((((((((((((((((iHashCode2 + (j1Var2 != null ? j1Var2.hashCode() : 0)) * 31) + Float.floatToIntBits(this.f4866g)) * 31) + Float.floatToIntBits(this.f4867h)) * 31) + c5.f(this.f4868i)) * 31) + d5.f(this.f4869j)) * 31) + Float.floatToIntBits(this.f4870k)) * 31) + Float.floatToIntBits(this.f4871l)) * 31) + Float.floatToIntBits(this.f4872m)) * 31) + Float.floatToIntBits(this.f4873n)) * 31) + q4.e(this.f4862c);
    }

    public final j1 j() {
        return this.f4865f;
    }

    public final float l() {
        return this.f4866g;
    }

    public final int m() {
        return this.f4868i;
    }

    public final int n() {
        return this.f4869j;
    }

    public final float o() {
        return this.f4870k;
    }

    public final float p() {
        return this.f4867h;
    }

    public final float q() {
        return this.f4872m;
    }

    public final float r() {
        return this.f4873n;
    }

    public final float s() {
        return this.f4871l;
    }
}
