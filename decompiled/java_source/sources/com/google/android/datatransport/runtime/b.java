package com.google.android.datatransport.runtime;

import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class b extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f24351a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Integer f24352b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h f24353c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f24354d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f24355e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map f24356f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Integer f24357g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String f24358h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final byte[] f24359i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final byte[] f24360j;

    /* JADX INFO: renamed from: com.google.android.datatransport.runtime.b$b, reason: collision with other inner class name */
    static final class C0361b extends i.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f24361a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Integer f24362b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private h f24363c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Long f24364d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Long f24365e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Map f24366f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Integer f24367g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f24368h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private byte[] f24369i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private byte[] f24370j;

        C0361b() {
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i d() {
            String str = "";
            if (this.f24361a == null) {
                str = " transportName";
            }
            if (this.f24363c == null) {
                str = str + " encodedPayload";
            }
            if (this.f24364d == null) {
                str = str + " eventMillis";
            }
            if (this.f24365e == null) {
                str = str + " uptimeMillis";
            }
            if (this.f24366f == null) {
                str = str + " autoMetadata";
            }
            if (str.isEmpty()) {
                return new b(this.f24361a, this.f24362b, this.f24363c, this.f24364d.longValue(), this.f24365e.longValue(), this.f24366f, this.f24367g, this.f24368h, this.f24369i, this.f24370j);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.runtime.i.a
        protected Map e() {
            Map map = this.f24366f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override // com.google.android.datatransport.runtime.i.a
        protected i.a f(Map map) {
            if (map == null) {
                throw new NullPointerException("Null autoMetadata");
            }
            this.f24366f = map;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a g(Integer num) {
            this.f24362b = num;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a h(h hVar) {
            if (hVar == null) {
                throw new NullPointerException("Null encodedPayload");
            }
            this.f24363c = hVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a i(long j11) {
            this.f24364d = Long.valueOf(j11);
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a j(byte[] bArr) {
            this.f24369i = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a k(byte[] bArr) {
            this.f24370j = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a l(Integer num) {
            this.f24367g = num;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a m(String str) {
            this.f24368h = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a n(String str) {
            if (str == null) {
                throw new NullPointerException("Null transportName");
            }
            this.f24361a = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.i.a
        public i.a o(long j11) {
            this.f24365e = Long.valueOf(j11);
            return this;
        }
    }

    private b(String str, Integer num, h hVar, long j11, long j12, Map map, Integer num2, String str2, byte[] bArr, byte[] bArr2) {
        this.f24351a = str;
        this.f24352b = num;
        this.f24353c = hVar;
        this.f24354d = j11;
        this.f24355e = j12;
        this.f24356f = map;
        this.f24357g = num2;
        this.f24358h = str2;
        this.f24359i = bArr;
        this.f24360j = bArr2;
    }

    @Override // com.google.android.datatransport.runtime.i
    protected Map c() {
        return this.f24356f;
    }

    @Override // com.google.android.datatransport.runtime.i
    public Integer d() {
        return this.f24352b;
    }

    @Override // com.google.android.datatransport.runtime.i
    public h e() {
        return this.f24353c;
    }

    public boolean equals(Object obj) {
        Integer num;
        Integer num2;
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f24351a.equals(iVar.n()) && ((num = this.f24352b) != null ? num.equals(iVar.d()) : iVar.d() == null) && this.f24353c.equals(iVar.e()) && this.f24354d == iVar.f() && this.f24355e == iVar.o() && this.f24356f.equals(iVar.c()) && ((num2 = this.f24357g) != null ? num2.equals(iVar.l()) : iVar.l() == null) && ((str = this.f24358h) != null ? str.equals(iVar.m()) : iVar.m() == null)) {
            boolean z10 = iVar instanceof b;
            if (Arrays.equals(this.f24359i, z10 ? ((b) iVar).f24359i : iVar.g())) {
                if (Arrays.equals(this.f24360j, z10 ? ((b) iVar).f24360j : iVar.h())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.runtime.i
    public long f() {
        return this.f24354d;
    }

    @Override // com.google.android.datatransport.runtime.i
    public byte[] g() {
        return this.f24359i;
    }

    @Override // com.google.android.datatransport.runtime.i
    public byte[] h() {
        return this.f24360j;
    }

    public int hashCode() {
        int iHashCode = (this.f24351a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f24352b;
        int iHashCode2 = (((iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f24353c.hashCode()) * 1000003;
        long j11 = this.f24354d;
        int i11 = (iHashCode2 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        long j12 = this.f24355e;
        int iHashCode3 = (((i11 ^ ((int) (j12 ^ (j12 >>> 32)))) * 1000003) ^ this.f24356f.hashCode()) * 1000003;
        Integer num2 = this.f24357g;
        int iHashCode4 = (iHashCode3 ^ (num2 == null ? 0 : num2.hashCode())) * 1000003;
        String str = this.f24358h;
        return ((((iHashCode4 ^ (str != null ? str.hashCode() : 0)) * 1000003) ^ Arrays.hashCode(this.f24359i)) * 1000003) ^ Arrays.hashCode(this.f24360j);
    }

    @Override // com.google.android.datatransport.runtime.i
    public Integer l() {
        return this.f24357g;
    }

    @Override // com.google.android.datatransport.runtime.i
    public String m() {
        return this.f24358h;
    }

    @Override // com.google.android.datatransport.runtime.i
    public String n() {
        return this.f24351a;
    }

    @Override // com.google.android.datatransport.runtime.i
    public long o() {
        return this.f24355e;
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f24351a + ", code=" + this.f24352b + ", encodedPayload=" + this.f24353c + ", eventMillis=" + this.f24354d + ", uptimeMillis=" + this.f24355e + ", autoMetadata=" + this.f24356f + ", productId=" + this.f24357g + ", pseudonymousId=" + this.f24358h + ", experimentIdsClear=" + Arrays.toString(this.f24359i) + ", experimentIdsEncrypted=" + Arrays.toString(this.f24360j) + "}";
    }
}
