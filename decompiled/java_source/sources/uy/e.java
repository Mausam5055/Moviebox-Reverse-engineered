package uy;

/* JADX INFO: loaded from: classes7.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f76955a;

    public e(int i11) {
        this.f76955a = i11;
    }

    public final int a() {
        return this.f76955a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && this.f76955a == ((e) obj).f76955a;
    }

    public int hashCode() {
        return this.f76955a;
    }

    public String toString() {
        return "PaymentEvent(status=" + this.f76955a + ")";
    }
}
