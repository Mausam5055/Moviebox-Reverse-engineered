package com.google.android.datatransport.runtime;

import com.google.android.datatransport.Priority;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class d extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f24383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f24384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Priority f24385c;

    static final class b extends o.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f24386a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private byte[] f24387b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Priority f24388c;

        b() {
        }

        @Override // com.google.android.datatransport.runtime.o.a
        public o a() {
            String str = "";
            if (this.f24386a == null) {
                str = " backendName";
            }
            if (this.f24388c == null) {
                str = str + " priority";
            }
            if (str.isEmpty()) {
                return new d(this.f24386a, this.f24387b, this.f24388c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.o.a
        public o.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null backendName");
            }
            this.f24386a = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.o.a
        public o.a c(byte[] bArr) {
            this.f24387b = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.o.a
        public o.a d(Priority priority) {
            if (priority == null) {
                throw new NullPointerException("Null priority");
            }
            this.f24388c = priority;
            return this;
        }
    }

    private d(String str, byte[] bArr, Priority priority) {
        this.f24383a = str;
        this.f24384b = bArr;
        this.f24385c = priority;
    }

    @Override // com.google.android.datatransport.runtime.o
    public String b() {
        return this.f24383a;
    }

    @Override // com.google.android.datatransport.runtime.o
    public byte[] c() {
        return this.f24384b;
    }

    @Override // com.google.android.datatransport.runtime.o
    public Priority d() {
        return this.f24385c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (this.f24383a.equals(oVar.b())) {
            if (Arrays.equals(this.f24384b, oVar instanceof d ? ((d) oVar).f24384b : oVar.c()) && this.f24385c.equals(oVar.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f24383a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f24384b)) * 1000003) ^ this.f24385c.hashCode();
    }
}
