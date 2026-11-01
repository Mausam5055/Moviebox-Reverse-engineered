package h10;

/* JADX INFO: loaded from: classes7.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f64150a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f64151b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f64152c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f64153d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f64154e;

    public o(int i11, String str, String str2, String str3, boolean z10) {
        this.f64150a = i11;
        this.f64151b = str;
        this.f64152c = str2;
        this.f64153d = str3;
        this.f64154e = z10;
    }

    public String a() {
        return this.f64153d;
    }

    public String b() {
        return this.f64152c;
    }

    public String c() {
        return this.f64151b;
    }

    public int d() {
        return this.f64150a;
    }

    public boolean e() {
        return this.f64154e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f64150a == oVar.f64150a && this.f64154e == oVar.f64154e && this.f64151b.equals(oVar.f64151b) && this.f64152c.equals(oVar.f64152c) && this.f64153d.equals(oVar.f64153d);
    }

    public int hashCode() {
        return this.f64150a + (this.f64154e ? 64 : 0) + (this.f64151b.hashCode() * this.f64152c.hashCode() * this.f64153d.hashCode());
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.f64151b);
        sb2.append('.');
        sb2.append(this.f64152c);
        sb2.append(this.f64153d);
        sb2.append(" (");
        sb2.append(this.f64150a);
        sb2.append(this.f64154e ? " itf" : "");
        sb2.append(')');
        return sb2.toString();
    }
}
