package w1;

import android.net.Uri;
import androidx.media3.common.u;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f77511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f77512b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f77513c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f77514d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Map f77515e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f77516f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f77517g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f77518h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f77519i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f77520j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Object f77521k;

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Uri f77522a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f77523b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f77524c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private byte[] f77525d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Map f77526e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f77527f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private long f77528g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private String f77529h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private int f77530i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private Object f77531j;

        public b() {
            this.f77524c = 1;
            this.f77526e = Collections.emptyMap();
            this.f77528g = -1L;
        }

        private b(h hVar) {
            this.f77522a = hVar.f77511a;
            this.f77523b = hVar.f77512b;
            this.f77524c = hVar.f77513c;
            this.f77525d = hVar.f77514d;
            this.f77526e = hVar.f77515e;
            this.f77527f = hVar.f77517g;
            this.f77528g = hVar.f77518h;
            this.f77529h = hVar.f77519i;
            this.f77530i = hVar.f77520j;
            this.f77531j = hVar.f77521k;
        }

        public h a() {
            androidx.media3.common.util.a.j(this.f77522a, "The uri must be set.");
            return new h(this.f77522a, this.f77523b, this.f77524c, this.f77525d, this.f77526e, this.f77527f, this.f77528g, this.f77529h, this.f77530i, this.f77531j);
        }

        public b b(int i11) {
            this.f77530i = i11;
            return this;
        }

        public b c(byte[] bArr) {
            this.f77525d = bArr;
            return this;
        }

        public b d(int i11) {
            this.f77524c = i11;
            return this;
        }

        public b e(Map map) {
            this.f77526e = map;
            return this;
        }

        public b f(String str) {
            this.f77529h = str;
            return this;
        }

        public b g(long j11) {
            this.f77528g = j11;
            return this;
        }

        public b h(long j11) {
            this.f77527f = j11;
            return this;
        }

        public b i(Uri uri) {
            this.f77522a = uri;
            return this;
        }

        public b j(String str) {
            this.f77522a = Uri.parse(str);
            return this;
        }

        public b k(long j11) {
            this.f77523b = j11;
            return this;
        }
    }

    static {
        u.a("media3.datasource");
    }

    private h(Uri uri, long j11, int i11, byte[] bArr, Map map, long j12, long j13, String str, int i12, Object obj) {
        byte[] bArr2 = bArr;
        long j14 = j11 + j12;
        androidx.media3.common.util.a.a(j14 >= 0);
        androidx.media3.common.util.a.a(j12 >= 0);
        androidx.media3.common.util.a.a(j13 > 0 || j13 == -1);
        this.f77511a = (Uri) androidx.media3.common.util.a.e(uri);
        this.f77512b = j11;
        this.f77513c = i11;
        this.f77514d = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.f77515e = Collections.unmodifiableMap(new HashMap(map));
        this.f77517g = j12;
        this.f77516f = j14;
        this.f77518h = j13;
        this.f77519i = str;
        this.f77520j = i12;
        this.f77521k = obj;
    }

    public h(Uri uri, long j11, long j12) {
        this(uri, j11, j12, null);
    }

    public h(Uri uri, long j11, long j12, String str) {
        this(uri, 0L, 1, null, Collections.emptyMap(), j11, j12, str, 0, null);
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
        return c(this.f77513c);
    }

    public boolean d(int i11) {
        return (this.f77520j & i11) == i11;
    }

    public h e(long j11) {
        long j12 = this.f77518h;
        return f(j11, j12 != -1 ? j12 - j11 : -1L);
    }

    public h f(long j11, long j12) {
        return (j11 == 0 && this.f77518h == j12) ? this : new h(this.f77511a, this.f77512b, this.f77513c, this.f77514d, this.f77515e, this.f77517g + j11, j12, this.f77519i, this.f77520j, this.f77521k);
    }

    public h g(Uri uri) {
        return new h(uri, this.f77512b, this.f77513c, this.f77514d, this.f77515e, this.f77517g, this.f77518h, this.f77519i, this.f77520j, this.f77521k);
    }

    public String toString() {
        return "DataSpec[" + b() + " " + this.f77511a + ", " + this.f77517g + ", " + this.f77518h + ", " + this.f77519i + ", " + this.f77520j + "]";
    }
}
