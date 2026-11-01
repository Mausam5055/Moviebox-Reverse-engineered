package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableMap f26392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableList f26393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f26394c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f26395d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f26396e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f26397f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Uri f26398g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f26399h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f26400i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f26401j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f26402k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f26403l;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final HashMap f26404a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ImmutableList.a f26405b = new ImmutableList.a();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f26406c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f26407d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f26408e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f26409f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Uri f26410g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f26411h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private String f26412i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private String f26413j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f26414k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private String f26415l;

        public b m(String str, String str2) {
            this.f26404a.put(str, str2);
            return this;
        }

        public b n(com.google.android.exoplayer2.source.rtsp.a aVar) {
            this.f26405b.a(aVar);
            return this;
        }

        public g0 o() {
            if (this.f26407d == null || this.f26408e == null || this.f26409f == null) {
                throw new IllegalStateException("One of more mandatory SDP fields are not set.");
            }
            return new g0(this);
        }

        public b p(int i11) {
            this.f26406c = i11;
            return this;
        }

        public b q(String str) {
            this.f26411h = str;
            return this;
        }

        public b r(String str) {
            this.f26414k = str;
            return this;
        }

        public b s(String str) {
            this.f26412i = str;
            return this;
        }

        public b t(String str) {
            this.f26408e = str;
            return this;
        }

        public b u(String str) {
            this.f26415l = str;
            return this;
        }

        public b v(String str) {
            this.f26413j = str;
            return this;
        }

        public b w(String str) {
            this.f26407d = str;
            return this;
        }

        public b x(String str) {
            this.f26409f = str;
            return this;
        }

        public b y(Uri uri) {
            this.f26410g = uri;
            return this;
        }
    }

    private g0(b bVar) {
        this.f26392a = ImmutableMap.copyOf((Map) bVar.f26404a);
        this.f26393b = bVar.f26405b.e();
        this.f26394c = (String) p0.j(bVar.f26407d);
        this.f26395d = (String) p0.j(bVar.f26408e);
        this.f26396e = (String) p0.j(bVar.f26409f);
        this.f26398g = bVar.f26410g;
        this.f26399h = bVar.f26411h;
        this.f26397f = bVar.f26406c;
        this.f26400i = bVar.f26412i;
        this.f26401j = bVar.f26414k;
        this.f26402k = bVar.f26415l;
        this.f26403l = bVar.f26413j;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g0.class != obj.getClass()) {
            return false;
        }
        g0 g0Var = (g0) obj;
        return this.f26397f == g0Var.f26397f && this.f26392a.equals(g0Var.f26392a) && this.f26393b.equals(g0Var.f26393b) && this.f26395d.equals(g0Var.f26395d) && this.f26394c.equals(g0Var.f26394c) && this.f26396e.equals(g0Var.f26396e) && p0.c(this.f26403l, g0Var.f26403l) && p0.c(this.f26398g, g0Var.f26398g) && p0.c(this.f26401j, g0Var.f26401j) && p0.c(this.f26402k, g0Var.f26402k) && p0.c(this.f26399h, g0Var.f26399h) && p0.c(this.f26400i, g0Var.f26400i);
    }

    public int hashCode() {
        int iHashCode = (((((((((((Sdk$SDKError.Reason.AD_RESPONSE_TIMED_OUT_VALUE + this.f26392a.hashCode()) * 31) + this.f26393b.hashCode()) * 31) + this.f26395d.hashCode()) * 31) + this.f26394c.hashCode()) * 31) + this.f26396e.hashCode()) * 31) + this.f26397f) * 31;
        String str = this.f26403l;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Uri uri = this.f26398g;
        int iHashCode3 = (iHashCode2 + (uri == null ? 0 : uri.hashCode())) * 31;
        String str2 = this.f26401j;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f26402k;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f26399h;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f26400i;
        return iHashCode6 + (str5 != null ? str5.hashCode() : 0);
    }
}
