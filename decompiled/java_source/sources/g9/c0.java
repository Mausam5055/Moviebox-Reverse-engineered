package g9;

/* JADX INFO: loaded from: classes4.dex */
public final class c0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final c0 f63374c = new c0(0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f63375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f63376b;

    public c0(long j11, long j12) {
        this.f63375a = j11;
        this.f63376b = j12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c0.class != obj.getClass()) {
            return false;
        }
        c0 c0Var = (c0) obj;
        return this.f63375a == c0Var.f63375a && this.f63376b == c0Var.f63376b;
    }

    public int hashCode() {
        return (((int) this.f63375a) * 31) + ((int) this.f63376b);
    }

    public String toString() {
        return "[timeUs=" + this.f63375a + ", position=" + this.f63376b + "]";
    }
}
