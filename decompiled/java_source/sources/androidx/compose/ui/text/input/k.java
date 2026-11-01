package androidx.compose.ui.text.input;

/* JADX INFO: loaded from: classes.dex */
public final class k implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6237b;

    public k(int i11, int i12) {
        this.f6236a = i11;
        this.f6237b = i12;
        if (i11 < 0 || i12 < 0) {
            throw new IllegalArgumentException(("Expected lengthBeforeCursor and lengthAfterCursor to be non-negative, were " + i11 + " and " + i12 + " respectively.").toString());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f6236a == kVar.f6236a && this.f6237b == kVar.f6237b;
    }

    public int hashCode() {
        return (this.f6236a * 31) + this.f6237b;
    }

    public String toString() {
        return "DeleteSurroundingTextCommand(lengthBeforeCursor=" + this.f6236a + ", lengthAfterCursor=" + this.f6237b + ')';
    }
}
