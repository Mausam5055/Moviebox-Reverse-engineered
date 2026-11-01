package com.google.android.datatransport.cct.internal;

/* JADX INFO: loaded from: classes3.dex */
final class h extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Integer f24288a;

    static final class b extends o.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Integer f24289a;

        b() {
        }

        @Override // com.google.android.datatransport.cct.internal.o.a
        public o a() {
            return new h(this.f24289a);
        }

        @Override // com.google.android.datatransport.cct.internal.o.a
        public o.a b(Integer num) {
            this.f24289a = num;
            return this;
        }
    }

    private h(Integer num) {
        this.f24288a = num;
    }

    @Override // com.google.android.datatransport.cct.internal.o
    public Integer b() {
        return this.f24288a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        Integer num = this.f24288a;
        Integer numB = ((o) obj).b();
        if (num == null) {
            return numB == null;
        }
        return num.equals(numB);
    }

    public int hashCode() {
        Integer num = this.f24288a;
        return (num == null ? 0 : num.hashCode()) ^ 1000003;
    }

    public String toString() {
        return "ExternalPRequestContext{originAssociatedProductId=" + this.f24288a + "}";
    }
}
