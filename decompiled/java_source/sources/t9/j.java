package t9;

/* JADX INFO: loaded from: classes3.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f76114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f76115b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f76116c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f76117d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f76118e;

    public j(Object obj) {
        this(obj, -1L);
    }

    public j(Object obj, int i11, int i12, long j11) {
        this(obj, i11, i12, j11, -1);
    }

    private j(Object obj, int i11, int i12, long j11, int i13) {
        this.f76114a = obj;
        this.f76115b = i11;
        this.f76116c = i12;
        this.f76117d = j11;
        this.f76118e = i13;
    }

    public j(Object obj, long j11) {
        this(obj, -1, -1, j11, -1);
    }

    public j(Object obj, long j11, int i11) {
        this(obj, -1, -1, j11, i11);
    }

    protected j(j jVar) {
        this.f76114a = jVar.f76114a;
        this.f76115b = jVar.f76115b;
        this.f76116c = jVar.f76116c;
        this.f76117d = jVar.f76117d;
        this.f76118e = jVar.f76118e;
    }

    public j a(Object obj) {
        return this.f76114a.equals(obj) ? this : new j(obj, this.f76115b, this.f76116c, this.f76117d, this.f76118e);
    }

    public boolean b() {
        return this.f76115b != -1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return this.f76114a.equals(jVar.f76114a) && this.f76115b == jVar.f76115b && this.f76116c == jVar.f76116c && this.f76117d == jVar.f76117d && this.f76118e == jVar.f76118e;
    }

    public int hashCode() {
        return ((((((((527 + this.f76114a.hashCode()) * 31) + this.f76115b) * 31) + this.f76116c) * 31) + ((int) this.f76117d)) * 31) + this.f76118e;
    }
}
