package ii;

import androidx.collection.s;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f65246a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f65247b;

    public a(int i11, long j11) {
        this.f65246a = i11;
        this.f65247b = j11;
    }

    public final int a() {
        return this.f65246a;
    }

    public final long b() {
        return this.f65247b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f65246a == aVar.f65246a && this.f65247b == aVar.f65247b;
    }

    public int hashCode() {
        return (this.f65246a * 31) + s.a(this.f65247b);
    }

    public String toString() {
        return "AdSceneConfig(priority=" + this.f65246a + ", useInterval=" + this.f65247b + ")";
    }
}
