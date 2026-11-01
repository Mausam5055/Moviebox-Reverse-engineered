package my;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f70038a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f70039b;

    public e(boolean z10, boolean z11) {
        this.f70038a = z10;
        this.f70039b = z11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return this.f70038a == eVar.f70038a && this.f70039b == eVar.f70039b;
    }

    public int hashCode() {
        return (androidx.compose.foundation.e.a(this.f70038a) * 31) + androidx.compose.foundation.e.a(this.f70039b);
    }

    public String toString() {
        return "PostEventPlayRecord(isRefresh=" + this.f70038a + ", isOutsideVideo=" + this.f70039b + ")";
    }
}
