package com.pgl.ssdk;

/* JADX INFO: loaded from: classes5.dex */
public final class m<A, B> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final A f40182a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final B f40183b;

    public m(A a11, B b11) {
        this.f40182a = a11;
        this.f40183b = b11;
    }

    public static <A, B> m<A, B> a(A a11, B b11) {
        return new m<>(a11, b11);
    }

    public A a() {
        return this.f40182a;
    }

    public B b() {
        return this.f40183b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m.class != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        A a11 = this.f40182a;
        if (a11 == null) {
            if (mVar.f40182a != null) {
                return false;
            }
        } else if (!a11.equals(mVar.f40182a)) {
            return false;
        }
        B b11 = this.f40183b;
        if (b11 == null) {
            if (mVar.f40183b != null) {
                return false;
            }
        } else if (!b11.equals(mVar.f40183b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        A a11 = this.f40182a;
        int iHashCode = ((a11 == null ? 0 : a11.hashCode()) + 31) * 31;
        B b11 = this.f40183b;
        return iHashCode + (b11 != null ? b11.hashCode() : 0);
    }
}
