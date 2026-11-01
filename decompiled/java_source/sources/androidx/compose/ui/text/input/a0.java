package androidx.compose.ui.text.input;

/* JADX INFO: loaded from: classes.dex */
public final class a0 implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f6221a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f6222b;

    public a0(int i11, int i12) {
        this.f6221a = i11;
        this.f6222b = i12;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        return this.f6221a == a0Var.f6221a && this.f6222b == a0Var.f6222b;
    }

    public int hashCode() {
        return (this.f6221a * 31) + this.f6222b;
    }

    public String toString() {
        return "SetComposingRegionCommand(start=" + this.f6221a + ", end=" + this.f6222b + ')';
    }
}
