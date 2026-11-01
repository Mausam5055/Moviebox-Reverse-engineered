package com.google.android.exoplayer2.source.rtsp;

import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableMap;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f26304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f26305c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f26306d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f26307e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f26308f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f26309g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f26310h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ImmutableMap f26311i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final c f26312j;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f26313a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f26314b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final String f26315c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f26316d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final HashMap f26317e = new HashMap();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f26318f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f26319g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f26320h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f26321i;

        public b(String str, int i11, String str2, int i12) {
            this.f26313a = str;
            this.f26314b = i11;
            this.f26315c = str2;
            this.f26316d = i12;
        }

        public b i(String str, String str2) {
            this.f26317e.put(str, str2);
            return this;
        }

        public a j() {
            try {
                com.google.android.exoplayer2.util.a.g(this.f26317e.containsKey("rtpmap"));
                return new a(this, ImmutableMap.copyOf((Map) this.f26317e), c.a((String) p0.j((String) this.f26317e.get("rtpmap"))));
            } catch (ParserException e11) {
                throw new IllegalStateException(e11);
            }
        }

        public b k(int i11) {
            this.f26318f = i11;
            return this;
        }

        public b l(String str) {
            this.f26320h = str;
            return this;
        }

        public b m(String str) {
            this.f26321i = str;
            return this;
        }

        public b n(String str) {
            this.f26319g = str;
            return this;
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f26322a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f26323b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f26324c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f26325d;

        private c(int i11, String str, int i12, int i13) {
            this.f26322a = i11;
            this.f26323b = str;
            this.f26324c = i12;
            this.f26325d = i13;
        }

        public static c a(String str) {
            String[] strArrT0 = p0.T0(str, " ");
            com.google.android.exoplayer2.util.a.a(strArrT0.length == 2);
            int iG = y.g(strArrT0[0]);
            String[] strArrS0 = p0.S0(strArrT0[1].trim(), "/");
            com.google.android.exoplayer2.util.a.a(strArrS0.length >= 2);
            return new c(iG, strArrS0[0], y.g(strArrS0[1]), strArrS0.length == 3 ? y.g(strArrS0[2]) : -1);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            return this.f26322a == cVar.f26322a && this.f26323b.equals(cVar.f26323b) && this.f26324c == cVar.f26324c && this.f26325d == cVar.f26325d;
        }

        public int hashCode() {
            return ((((((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f26322a) * 31) + this.f26323b.hashCode()) * 31) + this.f26324c) * 31) + this.f26325d;
        }
    }

    private a(b bVar, ImmutableMap immutableMap, c cVar) {
        this.f26303a = bVar.f26313a;
        this.f26304b = bVar.f26314b;
        this.f26305c = bVar.f26315c;
        this.f26306d = bVar.f26316d;
        this.f26308f = bVar.f26319g;
        this.f26309g = bVar.f26320h;
        this.f26307e = bVar.f26318f;
        this.f26310h = bVar.f26321i;
        this.f26311i = immutableMap;
        this.f26312j = cVar;
    }

    public ImmutableMap a() {
        String str = (String) this.f26311i.get("fmtp");
        if (str == null) {
            return ImmutableMap.of();
        }
        String[] strArrT0 = p0.T0(str, " ");
        com.google.android.exoplayer2.util.a.b(strArrT0.length == 2, str);
        String[] strArrSplit = strArrT0[1].split(";\\s?", 0);
        ImmutableMap.b bVar = new ImmutableMap.b();
        for (String str2 : strArrSplit) {
            String[] strArrT1 = p0.T0(str2, UrlUtils.EQUAL_MARK);
            bVar.h(strArrT1[0], strArrT1[1]);
        }
        return bVar.d();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f26303a.equals(aVar.f26303a) && this.f26304b == aVar.f26304b && this.f26305c.equals(aVar.f26305c) && this.f26306d == aVar.f26306d && this.f26307e == aVar.f26307e && this.f26311i.equals(aVar.f26311i) && this.f26312j.equals(aVar.f26312j) && p0.c(this.f26308f, aVar.f26308f) && p0.c(this.f26309g, aVar.f26309g) && p0.c(this.f26310h, aVar.f26310h);
    }

    public int hashCode() {
        int iHashCode = (((((((((((((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f26303a.hashCode()) * 31) + this.f26304b) * 31) + this.f26305c.hashCode()) * 31) + this.f26306d) * 31) + this.f26307e) * 31) + this.f26311i.hashCode()) * 31) + this.f26312j.hashCode()) * 31;
        String str = this.f26308f;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f26309g;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f26310h;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }
}
