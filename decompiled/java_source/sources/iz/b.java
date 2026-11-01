package iz;

import androidx.collection.s;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f65674a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f65675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f65676c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f65677d;

    public b(int i11, long j11, long j12, String str) {
        this.f65674a = i11;
        this.f65675b = j11;
        this.f65676c = j12;
        this.f65677d = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f65674a == bVar.f65674a && this.f65675b == bVar.f65675b && this.f65676c == bVar.f65676c && Intrinsics.c(this.f65677d, bVar.f65677d);
    }

    public int hashCode() {
        int iA = ((((this.f65674a * 31) + s.a(this.f65675b)) * 31) + s.a(this.f65676c)) * 31;
        String str = this.f65677d;
        return iA + (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "Chapter(index=" + this.f65674a + ", start=" + this.f65675b + ", end=" + this.f65676c + ", title=" + this.f65677d + ")";
    }
}
