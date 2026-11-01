package t8;

import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
final class a extends e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Iterable f76071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f76072b;

    static final class b extends e.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Iterable f76073a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private byte[] f76074b;

        b() {
        }

        @Override // t8.e.a
        public e a() {
            String str = "";
            if (this.f76073a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new a(this.f76073a, this.f76074b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // t8.e.a
        public e.a b(Iterable iterable) {
            if (iterable == null) {
                throw new NullPointerException("Null events");
            }
            this.f76073a = iterable;
            return this;
        }

        @Override // t8.e.a
        public e.a c(byte[] bArr) {
            this.f76074b = bArr;
            return this;
        }
    }

    private a(Iterable iterable, byte[] bArr) {
        this.f76071a = iterable;
        this.f76072b = bArr;
    }

    @Override // t8.e
    public Iterable b() {
        return this.f76071a;
    }

    @Override // t8.e
    public byte[] c() {
        return this.f76072b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f76071a.equals(eVar.b())) {
            if (Arrays.equals(this.f76072b, eVar instanceof a ? ((a) eVar).f76072b : eVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.f76071a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f76072b);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f76071a + ", extras=" + Arrays.toString(this.f76072b) + "}";
    }
}
