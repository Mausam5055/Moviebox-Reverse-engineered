package r3;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f74045f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f74047h;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f74054o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f74040a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f74041b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Set f74042c = Collections.emptySet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f74043d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f74044e = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f74046g = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f74048i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f74049j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f74050k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f74051l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f74052m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f74053n = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f74055p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f74056q = false;

    private static int B(int i11, String str, String str2, int i12) {
        if (str.isEmpty() || i11 == -1) {
            return i11;
        }
        if (str.equals(str2)) {
            return i11 + i12;
        }
        return -1;
    }

    public c A(boolean z10) {
        this.f74050k = z10 ? 1 : 0;
        return this;
    }

    public int a() {
        if (this.f74048i) {
            return this.f74047h;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public boolean b() {
        return this.f74056q;
    }

    public int c() {
        if (this.f74046g) {
            return this.f74045f;
        }
        throw new IllegalStateException("Font color not defined");
    }

    public String d() {
        return this.f74044e;
    }

    public float e() {
        return this.f74054o;
    }

    public int f() {
        return this.f74053n;
    }

    public int g() {
        return this.f74055p;
    }

    public int h(String str, String str2, Set set, String str3) {
        if (this.f74040a.isEmpty() && this.f74041b.isEmpty() && this.f74042c.isEmpty() && this.f74043d.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int iB = B(B(B(0, this.f74040a, str, 1073741824), this.f74041b, str2, 2), this.f74043d, str3, 4);
        if (iB == -1 || !set.containsAll(this.f74042c)) {
            return 0;
        }
        return iB + (this.f74042c.size() * 4);
    }

    public int i() {
        int i11 = this.f74051l;
        if (i11 == -1 && this.f74052m == -1) {
            return -1;
        }
        return (i11 == 1 ? 1 : 0) | (this.f74052m == 1 ? 2 : 0);
    }

    public boolean j() {
        return this.f74048i;
    }

    public boolean k() {
        return this.f74046g;
    }

    public boolean l() {
        return this.f74049j == 1;
    }

    public boolean m() {
        return this.f74050k == 1;
    }

    public c n(int i11) {
        this.f74047h = i11;
        this.f74048i = true;
        return this;
    }

    public c o(boolean z10) {
        this.f74051l = z10 ? 1 : 0;
        return this;
    }

    public c p(boolean z10) {
        this.f74056q = z10;
        return this;
    }

    public c q(int i11) {
        this.f74045f = i11;
        this.f74046g = true;
        return this;
    }

    public c r(String str) {
        this.f74044e = str == null ? null : com.google.common.base.a.e(str);
        return this;
    }

    public c s(float f11) {
        this.f74054o = f11;
        return this;
    }

    public c t(int i11) {
        this.f74053n = i11;
        return this;
    }

    public c u(boolean z10) {
        this.f74052m = z10 ? 1 : 0;
        return this;
    }

    public c v(int i11) {
        this.f74055p = i11;
        return this;
    }

    public void w(String[] strArr) {
        this.f74042c = new HashSet(Arrays.asList(strArr));
    }

    public void x(String str) {
        this.f74040a = str;
    }

    public void y(String str) {
        this.f74041b = str;
    }

    public void z(String str) {
        this.f74043d = str;
    }
}
