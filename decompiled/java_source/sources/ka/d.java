package ka;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f66693f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f66695h;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private float f66702o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f66688a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f66689b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Set f66690c = Collections.emptySet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f66691d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f66692e = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f66694g = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f66696i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f66697j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f66698k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f66699l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f66700m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f66701n = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f66703p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f66704q = false;

    private static int B(int i11, String str, String str2, int i12) {
        if (str.isEmpty() || i11 == -1) {
            return i11;
        }
        if (str.equals(str2)) {
            return i11 + i12;
        }
        return -1;
    }

    public d A(boolean z10) {
        this.f66698k = z10 ? 1 : 0;
        return this;
    }

    public int a() {
        if (this.f66696i) {
            return this.f66695h;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public boolean b() {
        return this.f66704q;
    }

    public int c() {
        if (this.f66694g) {
            return this.f66693f;
        }
        throw new IllegalStateException("Font color not defined");
    }

    public String d() {
        return this.f66692e;
    }

    public float e() {
        return this.f66702o;
    }

    public int f() {
        return this.f66701n;
    }

    public int g() {
        return this.f66703p;
    }

    public int h(String str, String str2, Set set, String str3) {
        if (this.f66688a.isEmpty() && this.f66689b.isEmpty() && this.f66690c.isEmpty() && this.f66691d.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int iB = B(B(B(0, this.f66688a, str, 1073741824), this.f66689b, str2, 2), this.f66691d, str3, 4);
        if (iB == -1 || !set.containsAll(this.f66690c)) {
            return 0;
        }
        return iB + (this.f66690c.size() * 4);
    }

    public int i() {
        int i11 = this.f66699l;
        if (i11 == -1 && this.f66700m == -1) {
            return -1;
        }
        return (i11 == 1 ? 1 : 0) | (this.f66700m == 1 ? 2 : 0);
    }

    public boolean j() {
        return this.f66696i;
    }

    public boolean k() {
        return this.f66694g;
    }

    public boolean l() {
        return this.f66697j == 1;
    }

    public boolean m() {
        return this.f66698k == 1;
    }

    public d n(int i11) {
        this.f66695h = i11;
        this.f66696i = true;
        return this;
    }

    public d o(boolean z10) {
        this.f66699l = z10 ? 1 : 0;
        return this;
    }

    public d p(boolean z10) {
        this.f66704q = z10;
        return this;
    }

    public d q(int i11) {
        this.f66693f = i11;
        this.f66694g = true;
        return this;
    }

    public d r(String str) {
        this.f66692e = str == null ? null : com.google.common.base.a.e(str);
        return this;
    }

    public d s(float f11) {
        this.f66702o = f11;
        return this;
    }

    public d t(int i11) {
        this.f66701n = i11;
        return this;
    }

    public d u(boolean z10) {
        this.f66700m = z10 ? 1 : 0;
        return this;
    }

    public d v(int i11) {
        this.f66703p = i11;
        return this;
    }

    public void w(String[] strArr) {
        this.f66690c = new HashSet(Arrays.asList(strArr));
    }

    public void x(String str) {
        this.f66688a = str;
    }

    public void y(String str) {
        this.f66689b = str;
    }

    public void z(String str) {
        this.f66691d = str;
    }
}
