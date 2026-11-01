package l2;

/* JADX INFO: loaded from: classes2.dex */
public final class n0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final n0 f68649c = new n0(0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f68650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f68651b;

    public n0(long j11, long j12) {
        this.f68650a = j11;
        this.f68651b = j12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n0.class != obj.getClass()) {
            return false;
        }
        n0 n0Var = (n0) obj;
        return this.f68650a == n0Var.f68650a && this.f68651b == n0Var.f68651b;
    }

    public int hashCode() {
        return (((int) this.f68650a) * 31) + ((int) this.f68651b);
    }

    public String toString() {
        return "[timeUs=" + this.f68650a + ", position=" + this.f68651b + "]";
    }
}
