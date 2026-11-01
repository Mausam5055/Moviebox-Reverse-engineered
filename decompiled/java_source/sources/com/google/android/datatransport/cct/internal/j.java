package com.google.android.datatransport.cct.internal;

import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
final class j extends q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f24292a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Integer f24293b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ComplianceData f24294c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f24295d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final byte[] f24296e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f24297f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long f24298g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final NetworkConnectionInfo f24299h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final n f24300i;

    static final class b extends q.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Long f24301a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Integer f24302b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ComplianceData f24303c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Long f24304d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private byte[] f24305e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f24306f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Long f24307g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private NetworkConnectionInfo f24308h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private n f24309i;

        b() {
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        public q a() {
            String str = "";
            if (this.f24301a == null) {
                str = " eventTimeMs";
            }
            if (this.f24304d == null) {
                str = str + " eventUptimeMs";
            }
            if (this.f24307g == null) {
                str = str + " timezoneOffsetSeconds";
            }
            if (str.isEmpty()) {
                return new j(this.f24301a.longValue(), this.f24302b, this.f24303c, this.f24304d.longValue(), this.f24305e, this.f24306f, this.f24307g.longValue(), this.f24308h, this.f24309i);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        public q.a b(ComplianceData complianceData) {
            this.f24303c = complianceData;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        public q.a c(Integer num) {
            this.f24302b = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        public q.a d(long j11) {
            this.f24301a = Long.valueOf(j11);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        public q.a e(long j11) {
            this.f24304d = Long.valueOf(j11);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        public q.a f(n nVar) {
            this.f24309i = nVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        public q.a g(NetworkConnectionInfo networkConnectionInfo) {
            this.f24308h = networkConnectionInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        q.a h(byte[] bArr) {
            this.f24305e = bArr;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        q.a i(String str) {
            this.f24306f = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.q.a
        public q.a j(long j11) {
            this.f24307g = Long.valueOf(j11);
            return this;
        }
    }

    private j(long j11, Integer num, ComplianceData complianceData, long j12, byte[] bArr, String str, long j13, NetworkConnectionInfo networkConnectionInfo, n nVar) {
        this.f24292a = j11;
        this.f24293b = num;
        this.f24294c = complianceData;
        this.f24295d = j12;
        this.f24296e = bArr;
        this.f24297f = str;
        this.f24298g = j13;
        this.f24299h = networkConnectionInfo;
        this.f24300i = nVar;
    }

    @Override // com.google.android.datatransport.cct.internal.q
    public ComplianceData b() {
        return this.f24294c;
    }

    @Override // com.google.android.datatransport.cct.internal.q
    public Integer c() {
        return this.f24293b;
    }

    @Override // com.google.android.datatransport.cct.internal.q
    public long d() {
        return this.f24292a;
    }

    @Override // com.google.android.datatransport.cct.internal.q
    public long e() {
        return this.f24295d;
    }

    public boolean equals(Object obj) {
        Integer num;
        ComplianceData complianceData;
        String str;
        NetworkConnectionInfo networkConnectionInfo;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        if (this.f24292a == qVar.d() && ((num = this.f24293b) != null ? num.equals(qVar.c()) : qVar.c() == null) && ((complianceData = this.f24294c) != null ? complianceData.equals(qVar.b()) : qVar.b() == null) && this.f24295d == qVar.e()) {
            if (Arrays.equals(this.f24296e, qVar instanceof j ? ((j) qVar).f24296e : qVar.h()) && ((str = this.f24297f) != null ? str.equals(qVar.i()) : qVar.i() == null) && this.f24298g == qVar.j() && ((networkConnectionInfo = this.f24299h) != null ? networkConnectionInfo.equals(qVar.g()) : qVar.g() == null)) {
                n nVar = this.f24300i;
                if (nVar == null) {
                    if (qVar.f() == null) {
                        return true;
                    }
                } else if (nVar.equals(qVar.f())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.q
    public n f() {
        return this.f24300i;
    }

    @Override // com.google.android.datatransport.cct.internal.q
    public NetworkConnectionInfo g() {
        return this.f24299h;
    }

    @Override // com.google.android.datatransport.cct.internal.q
    public byte[] h() {
        return this.f24296e;
    }

    public int hashCode() {
        long j11 = this.f24292a;
        int i11 = (((int) (j11 ^ (j11 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f24293b;
        int iHashCode = (i11 ^ (num == null ? 0 : num.hashCode())) * 1000003;
        ComplianceData complianceData = this.f24294c;
        int iHashCode2 = complianceData == null ? 0 : complianceData.hashCode();
        long j12 = this.f24295d;
        int iHashCode3 = (((((iHashCode ^ iHashCode2) * 1000003) ^ ((int) (j12 ^ (j12 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f24296e)) * 1000003;
        String str = this.f24297f;
        int iHashCode4 = str == null ? 0 : str.hashCode();
        long j13 = this.f24298g;
        int i12 = (((iHashCode3 ^ iHashCode4) * 1000003) ^ ((int) ((j13 >>> 32) ^ j13))) * 1000003;
        NetworkConnectionInfo networkConnectionInfo = this.f24299h;
        int iHashCode5 = (i12 ^ (networkConnectionInfo == null ? 0 : networkConnectionInfo.hashCode())) * 1000003;
        n nVar = this.f24300i;
        return iHashCode5 ^ (nVar != null ? nVar.hashCode() : 0);
    }

    @Override // com.google.android.datatransport.cct.internal.q
    public String i() {
        return this.f24297f;
    }

    @Override // com.google.android.datatransport.cct.internal.q
    public long j() {
        return this.f24298g;
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f24292a + ", eventCode=" + this.f24293b + ", complianceData=" + this.f24294c + ", eventUptimeMs=" + this.f24295d + ", sourceExtension=" + Arrays.toString(this.f24296e) + ", sourceExtensionJsonProto3=" + this.f24297f + ", timezoneOffsetSeconds=" + this.f24298g + ", networkConnectionInfo=" + this.f24299h + ", experimentIds=" + this.f24300i + "}";
    }
}
