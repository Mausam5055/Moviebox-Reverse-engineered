package uy;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f76954a;

    public d(boolean z10) {
        this.f76954a = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d) && this.f76954a == ((d) obj).f76954a;
    }

    public int hashCode() {
        return androidx.compose.foundation.e.a(this.f76954a);
    }

    public String toString() {
        return "MainTabEvent(white=" + this.f76954a + ")";
    }
}
