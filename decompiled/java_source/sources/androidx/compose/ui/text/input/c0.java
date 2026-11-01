package androidx.compose.ui.text.input;

/* JADX INFO: loaded from: classes.dex */
public final class c0 implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6226b;

    public c0(int i11, int i12) {
        this.f6225a = i11;
        this.f6226b = i12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c0)) {
            return false;
        }
        c0 c0Var = (c0) obj;
        return this.f6225a == c0Var.f6225a && this.f6226b == c0Var.f6226b;
    }

    public int hashCode() {
        return (this.f6225a * 31) + this.f6226b;
    }

    public String toString() {
        return "SetSelectionCommand(start=" + this.f6225a + ", end=" + this.f6226b + ')';
    }
}
