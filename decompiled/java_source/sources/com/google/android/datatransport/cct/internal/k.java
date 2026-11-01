package com.google.android.datatransport.cct.internal;

import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class k extends r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f24310a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f24311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ClientInfo f24312c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Integer f24313d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f24314e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f24315f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final QosTier f24316g;

    static final class b extends r.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Long f24317a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Long f24318b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ClientInfo f24319c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Integer f24320d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f24321e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List f24322f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private QosTier f24323g;

        b() {
        }

        @Override // com.google.android.datatransport.cct.internal.r.a
        public r a() {
            String str = "";
            if (this.f24317a == null) {
                str = " requestTimeMs";
            }
            if (this.f24318b == null) {
                str = str + " requestUptimeMs";
            }
            if (str.isEmpty()) {
                return new k(this.f24317a.longValue(), this.f24318b.longValue(), this.f24319c, this.f24320d, this.f24321e, this.f24322f, this.f24323g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.android.datatransport.cct.internal.r.a
        public r.a b(ClientInfo clientInfo) {
            this.f24319c = clientInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.r.a
        public r.a c(List list) {
            this.f24322f = list;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.r.a
        r.a d(Integer num) {
            this.f24320d = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.r.a
        r.a e(String str) {
            this.f24321e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.r.a
        public r.a f(QosTier qosTier) {
            this.f24323g = qosTier;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.r.a
        public r.a g(long j11) {
            this.f24317a = Long.valueOf(j11);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.r.a
        public r.a h(long j11) {
            this.f24318b = Long.valueOf(j11);
            return this;
        }
    }

    private k(long j11, long j12, ClientInfo clientInfo, Integer num, String str, List list, QosTier qosTier) {
        this.f24310a = j11;
        this.f24311b = j12;
        this.f24312c = clientInfo;
        this.f24313d = num;
        this.f24314e = str;
        this.f24315f = list;
        this.f24316g = qosTier;
    }

    @Override // com.google.android.datatransport.cct.internal.r
    public ClientInfo b() {
        return this.f24312c;
    }

    @Override // com.google.android.datatransport.cct.internal.r
    public List c() {
        return this.f24315f;
    }

    @Override // com.google.android.datatransport.cct.internal.r
    public Integer d() {
        return this.f24313d;
    }

    @Override // com.google.android.datatransport.cct.internal.r
    public String e() {
        return this.f24314e;
    }

    public boolean equals(Object obj) {
        ClientInfo clientInfo;
        Integer num;
        String str;
        List list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        if (this.f24310a == rVar.g() && this.f24311b == rVar.h() && ((clientInfo = this.f24312c) != null ? clientInfo.equals(rVar.b()) : rVar.b() == null) && ((num = this.f24313d) != null ? num.equals(rVar.d()) : rVar.d() == null) && ((str = this.f24314e) != null ? str.equals(rVar.e()) : rVar.e() == null) && ((list = this.f24315f) != null ? list.equals(rVar.c()) : rVar.c() == null)) {
            QosTier qosTier = this.f24316g;
            if (qosTier == null) {
                if (rVar.f() == null) {
                    return true;
                }
            } else if (qosTier.equals(rVar.f())) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.datatransport.cct.internal.r
    public QosTier f() {
        return this.f24316g;
    }

    @Override // com.google.android.datatransport.cct.internal.r
    public long g() {
        return this.f24310a;
    }

    @Override // com.google.android.datatransport.cct.internal.r
    public long h() {
        return this.f24311b;
    }

    public int hashCode() {
        long j11 = this.f24310a;
        long j12 = this.f24311b;
        int i11 = (((((int) (j11 ^ (j11 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j12 >>> 32) ^ j12))) * 1000003;
        ClientInfo clientInfo = this.f24312c;
        int iHashCode = (i11 ^ (clientInfo == null ? 0 : clientInfo.hashCode())) * 1000003;
        Integer num = this.f24313d;
        int iHashCode2 = (iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f24314e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List list = this.f24315f;
        int iHashCode4 = (iHashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        QosTier qosTier = this.f24316g;
        return iHashCode4 ^ (qosTier != null ? qosTier.hashCode() : 0);
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f24310a + ", requestUptimeMs=" + this.f24311b + ", clientInfo=" + this.f24312c + ", logSource=" + this.f24313d + ", logSourceName=" + this.f24314e + ", logEvents=" + this.f24315f + ", qosTier=" + this.f24316g + "}";
    }
}
