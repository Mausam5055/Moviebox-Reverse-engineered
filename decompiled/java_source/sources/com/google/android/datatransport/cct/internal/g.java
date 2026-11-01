package com.google.android.datatransport.cct.internal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class g extends n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f24284a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f24285b;

    static final class b extends n.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private byte[] f24286a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private byte[] f24287b;

        b() {
        }

        @Override // com.google.android.datatransport.cct.internal.n.a
        public n a() {
            return new g(this.f24286a, this.f24287b);
        }

        @Override // com.google.android.datatransport.cct.internal.n.a
        public n.a b(byte[] bArr) {
            this.f24286a = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.n.a
        public n.a c(byte[] bArr) {
            this.f24287b = bArr;
            return this;
        }
    }

    private g(byte[] bArr, byte[] bArr2) {
        this.f24284a = bArr;
        this.f24285b = bArr2;
    }

    @Override // com.google.android.datatransport.cct.internal.n
    public byte[] b() {
        return this.f24284a;
    }

    @Override // com.google.android.datatransport.cct.internal.n
    public byte[] c() {
        return this.f24285b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        boolean z10 = nVar instanceof g;
        if (Arrays.equals(this.f24284a, z10 ? ((g) nVar).f24284a : nVar.b())) {
            if (Arrays.equals(this.f24285b, z10 ? ((g) nVar).f24285b : nVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((Arrays.hashCode(this.f24284a) ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f24285b);
    }

    public String toString() {
        return "ExperimentIds{clearBlob=" + Arrays.toString(this.f24284a) + ", encryptedBlob=" + Arrays.toString(this.f24285b) + "}";
    }
}
