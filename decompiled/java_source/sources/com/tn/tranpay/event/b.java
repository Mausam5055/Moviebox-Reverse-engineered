package com.tn.tranpay.event;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f41549a;

    public b(int i11) {
        this.f41549a = i11;
    }

    public final int a() {
        return this.f41549a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && this.f41549a == ((b) obj).f41549a;
    }

    public int hashCode() {
        return this.f41549a;
    }

    public String toString() {
        return "PaymentEvent(status=" + this.f41549a + ")";
    }
}
