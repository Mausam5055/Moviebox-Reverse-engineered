package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.m1;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f27437a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f27438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f27439c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f27440d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Map f27441e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f27442f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f27443g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f27444h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f27445i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f27446j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Object f27447k;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Uri f27448a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f27449b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f27450c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private byte[] f27451d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Map f27452e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f27453f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f27454g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f27455h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f27456i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private Object f27457j;

        public b() {
            this.f27450c = 1;
            this.f27452e = Collections.emptyMap();
            this.f27454g = -1L;
        }

        private b(n nVar) {
            this.f27448a = nVar.f27437a;
            this.f27449b = nVar.f27438b;
            this.f27450c = nVar.f27439c;
            this.f27451d = nVar.f27440d;
            this.f27452e = nVar.f27441e;
            this.f27453f = nVar.f27443g;
            this.f27454g = nVar.f27444h;
            this.f27455h = nVar.f27445i;
            this.f27456i = nVar.f27446j;
            this.f27457j = nVar.f27447k;
        }

        public n a() {
            com.google.android.exoplayer2.util.a.j(this.f27448a, "The uri must be set.");
            return new n(this.f27448a, this.f27449b, this.f27450c, this.f27451d, this.f27452e, this.f27453f, this.f27454g, this.f27455h, this.f27456i, this.f27457j);
        }

        public b b(int i11) {
            this.f27456i = i11;
            return this;
        }

        public b c(byte[] bArr) {
            this.f27451d = bArr;
            return this;
        }

        public b d(int i11) {
            this.f27450c = i11;
            return this;
        }

        public b e(Map map) {
            this.f27452e = map;
            return this;
        }

        public b f(String str) {
            this.f27455h = str;
            return this;
        }

        public b g(long j11) {
            this.f27454g = j11;
            return this;
        }

        public b h(long j11) {
            this.f27453f = j11;
            return this;
        }

        public b i(Uri uri) {
            this.f27448a = uri;
            return this;
        }

        public b j(String str) {
            this.f27448a = Uri.parse(str);
            return this;
        }

        public b k(long j11) {
            this.f27449b = j11;
            return this;
        }
    }

    static {
        m1.a("goog.exo.datasource");
    }

    public n(Uri uri) {
        this(uri, 0L, -1L);
    }

    private n(Uri uri, long j11, int i11, byte[] bArr, Map map, long j12, long j13, String str, int i12, Object obj) {
        byte[] bArr2 = bArr;
        long j14 = j11 + j12;
        com.google.android.exoplayer2.util.a.a(j14 >= 0);
        com.google.android.exoplayer2.util.a.a(j12 >= 0);
        com.google.android.exoplayer2.util.a.a(j13 > 0 || j13 == -1);
        this.f27437a = uri;
        this.f27438b = j11;
        this.f27439c = i11;
        this.f27440d = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.f27441e = Collections.unmodifiableMap(new HashMap(map));
        this.f27443g = j12;
        this.f27442f = j14;
        this.f27444h = j13;
        this.f27445i = str;
        this.f27446j = i12;
        this.f27447k = obj;
    }

    public n(Uri uri, long j11, long j12) {
        this(uri, 0L, 1, null, Collections.emptyMap(), j11, j12, null, 0, null);
    }

    public static String c(int i11) {
        if (i11 == 1) {
            return "GET";
        }
        if (i11 == 2) {
            return "POST";
        }
        if (i11 == 3) {
            return "HEAD";
        }
        throw new IllegalStateException();
    }

    public b a() {
        return new b();
    }

    public final String b() {
        return c(this.f27439c);
    }

    public boolean d(int i11) {
        return (this.f27446j & i11) == i11;
    }

    public n e(long j11) {
        long j12 = this.f27444h;
        return f(j11, j12 != -1 ? j12 - j11 : -1L);
    }

    public n f(long j11, long j12) {
        return (j11 == 0 && this.f27444h == j12) ? this : new n(this.f27437a, this.f27438b, this.f27439c, this.f27440d, this.f27441e, this.f27443g + j11, j12, this.f27445i, this.f27446j, this.f27447k);
    }

    public String toString() {
        return "DataSpec[" + b() + " " + this.f27437a + ", " + this.f27443g + ", " + this.f27444h + ", " + this.f27445i + ", " + this.f27446j + "]";
    }
}
