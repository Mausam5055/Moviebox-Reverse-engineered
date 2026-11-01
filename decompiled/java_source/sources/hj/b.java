package hj;

import java.util.HashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f64477a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f64478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap f64479c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f64480d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f64481e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f64482f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f64483g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f64484h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f64485i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f64486j;

    public b(String pageName, boolean z10) {
        Intrinsics.h(pageName, "pageName");
        this.f64477a = pageName;
        this.f64478b = z10;
        this.f64479c = new HashMap();
        this.f64481e = "";
        this.f64483g = true;
        this.f64484h = -1L;
    }

    public /* synthetic */ b(String str, boolean z10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i11 & 2) != 0 ? true : z10);
    }

    public final String a() {
        return this.f64480d;
    }

    public final boolean b() {
        return this.f64478b;
    }

    public final boolean c() {
        return this.f64482f;
    }

    public final boolean d() {
        return this.f64483g;
    }

    public final String e() {
        return this.f64486j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f64477a, bVar.f64477a) && this.f64478b == bVar.f64478b;
    }

    public final String f() {
        return this.f64477a;
    }

    public final HashMap g() {
        return this.f64479c;
    }

    public final long h() {
        return this.f64484h;
    }

    public int hashCode() {
        return (this.f64477a.hashCode() * 31) + androidx.compose.foundation.e.a(this.f64478b);
    }

    public final boolean i() {
        return this.f64485i;
    }

    public final void j(String str) {
        this.f64480d = str;
    }

    public final void k(boolean z10) {
        this.f64485i = z10;
    }

    public final void l(boolean z10) {
        this.f64482f = z10;
    }

    public final void m(boolean z10) {
        this.f64483g = z10;
    }

    public final void n(String str) {
        this.f64486j = str;
    }

    public final void o(long j11) {
        this.f64484h = j11;
    }

    public String toString() {
        return "LogViewConfig(pageName=" + this.f64477a + ", needAddToPageFrom=" + this.f64478b + ')';
    }
}
