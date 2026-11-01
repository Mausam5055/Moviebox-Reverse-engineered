package e0;

import androidx.collection.s;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f61463a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float f61464b;

    public a(long j11, float f11) {
        this.f61463a = j11;
        this.f61464b = f11;
    }

    public final float a() {
        return this.f61464b;
    }

    public final long b() {
        return this.f61463a;
    }

    public final void c(float f11) {
        this.f61464b = f11;
    }

    public final void d(long j11) {
        this.f61463a = j11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f61463a == aVar.f61463a && Float.compare(this.f61464b, aVar.f61464b) == 0;
    }

    public int hashCode() {
        return (s.a(this.f61463a) * 31) + Float.floatToIntBits(this.f61464b);
    }

    public String toString() {
        return "DataPointAtTime(time=" + this.f61463a + ", dataPoint=" + this.f61464b + ')';
    }
}
