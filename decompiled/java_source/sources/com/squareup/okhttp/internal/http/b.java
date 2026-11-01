package com.squareup.okhttp.internal.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.squareup.okhttp.CacheControl;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Request f40442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Response f40443b;

    /* JADX INFO: renamed from: com.squareup.okhttp.internal.http.b$b, reason: collision with other inner class name */
    public static class C0580b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final long f40444a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Request f40445b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Response f40446c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Date f40447d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f40448e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Date f40449f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f40450g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Date f40451h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private long f40452i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f40453j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f40454k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f40455l;

        public C0580b(long j11, Request request, Response response) {
            this.f40455l = -1;
            this.f40444a = j11;
            this.f40445b = request;
            this.f40446c = response;
            if (response != null) {
                Headers headers = response.headers();
                int size = headers.size();
                for (int i11 = 0; i11 < size; i11++) {
                    String strName = headers.name(i11);
                    String strValue = headers.value(i11);
                    if (HttpHeaders.DATE.equalsIgnoreCase(strName)) {
                        this.f40447d = f.b(strValue);
                        this.f40448e = strValue;
                    } else if (HttpHeaders.EXPIRES.equalsIgnoreCase(strName)) {
                        this.f40451h = f.b(strValue);
                    } else if ("Last-Modified".equalsIgnoreCase(strName)) {
                        this.f40449f = f.b(strValue);
                        this.f40450g = strValue;
                    } else if ("ETag".equalsIgnoreCase(strName)) {
                        this.f40454k = strValue;
                    } else if ("Age".equalsIgnoreCase(strName)) {
                        this.f40455l = c.a(strValue, -1);
                    } else if (OkHeaders.f40437c.equalsIgnoreCase(strName)) {
                        this.f40452i = Long.parseLong(strValue);
                    } else if (OkHeaders.f40438d.equalsIgnoreCase(strName)) {
                        this.f40453j = Long.parseLong(strValue);
                    }
                }
            }
        }

        private long a() {
            Date date = this.f40447d;
            long jMax = date != null ? Math.max(0L, this.f40453j - date.getTime()) : 0L;
            int i11 = this.f40455l;
            if (i11 != -1) {
                jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(i11));
            }
            long j11 = this.f40453j;
            return jMax + (j11 - this.f40452i) + (this.f40444a - j11);
        }

        private long b() {
            CacheControl cacheControl = this.f40446c.cacheControl();
            if (cacheControl.maxAgeSeconds() != -1) {
                return TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds());
            }
            if (this.f40451h != null) {
                Date date = this.f40447d;
                long time = this.f40451h.getTime() - (date != null ? date.getTime() : this.f40453j);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.f40449f == null || this.f40446c.request().httpUrl().query() != null) {
                return 0L;
            }
            Date date2 = this.f40447d;
            long time2 = (date2 != null ? date2.getTime() : this.f40452i) - this.f40449f.getTime();
            if (time2 > 0) {
                return time2 / 10;
            }
            return 0L;
        }

        /* JADX WARN: Multi-variable type inference failed */
        private b d() {
            Response response = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            Object[] objArr3 = 0;
            Object[] objArr4 = 0;
            Object[] objArr5 = 0;
            Object[] objArr6 = 0;
            Object[] objArr7 = 0;
            Object[] objArr8 = 0;
            Object[] objArr9 = 0;
            Object[] objArr10 = 0;
            Object[] objArr11 = 0;
            Object[] objArr12 = 0;
            if (this.f40446c == null) {
                return new b(this.f40445b, response);
            }
            if (this.f40445b.isHttps() && this.f40446c.handshake() == null) {
                return new b(this.f40445b, objArr11 == true ? 1 : 0);
            }
            if (!b.a(this.f40446c, this.f40445b)) {
                return new b(this.f40445b, objArr9 == true ? 1 : 0);
            }
            CacheControl cacheControl = this.f40445b.cacheControl();
            if (cacheControl.noCache() || e(this.f40445b)) {
                return new b(this.f40445b, objArr2 == true ? 1 : 0);
            }
            long jA = a();
            long jB = b();
            if (cacheControl.maxAgeSeconds() != -1) {
                jB = Math.min(jB, TimeUnit.SECONDS.toMillis(cacheControl.maxAgeSeconds()));
            }
            long millis = 0;
            long millis2 = cacheControl.minFreshSeconds() != -1 ? TimeUnit.SECONDS.toMillis(cacheControl.minFreshSeconds()) : 0L;
            CacheControl cacheControl2 = this.f40446c.cacheControl();
            if (!cacheControl2.mustRevalidate() && cacheControl.maxStaleSeconds() != -1) {
                millis = TimeUnit.SECONDS.toMillis(cacheControl.maxStaleSeconds());
            }
            if (!cacheControl2.noCache()) {
                long j11 = millis2 + jA;
                if (j11 < millis + jB) {
                    Response.Builder builderNewBuilder = this.f40446c.newBuilder();
                    if (j11 >= jB) {
                        builderNewBuilder.addHeader("Warning", "110 HttpURLConnection \"Response is stale\"");
                    }
                    if (jA > 86400000 && f()) {
                        builderNewBuilder.addHeader("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                    }
                    return new b(objArr7 == true ? 1 : 0, builderNewBuilder.build());
                }
            }
            Request.Builder builderNewBuilder2 = this.f40445b.newBuilder();
            String str = this.f40454k;
            if (str != null) {
                builderNewBuilder2.header("If-None-Match", str);
            } else if (this.f40449f != null) {
                builderNewBuilder2.header("If-Modified-Since", this.f40450g);
            } else if (this.f40447d != null) {
                builderNewBuilder2.header("If-Modified-Since", this.f40448e);
            }
            Request requestBuild = builderNewBuilder2.build();
            return e(requestBuild) ? new b(requestBuild, this.f40446c) : new b(requestBuild, objArr4 == true ? 1 : 0);
        }

        private static boolean e(Request request) {
            return (request.header("If-Modified-Since") == null && request.header("If-None-Match") == null) ? false : true;
        }

        private boolean f() {
            return this.f40446c.cacheControl().maxAgeSeconds() == -1 && this.f40451h == null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public b c() {
            b bVarD = d();
            return (bVarD.f40442a == null || !this.f40445b.cacheControl().onlyIfCached()) ? bVarD : new b(null, 0 == true ? 1 : 0);
        }
    }

    private b(Request request, Response response) {
        this.f40442a = request;
        this.f40443b = response;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (r3.cacheControl().isPrivate() == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(Response response, Request request) {
        int iCode = response.code();
        if (iCode != 200 && iCode != 410 && iCode != 414 && iCode != 501 && iCode != 203 && iCode != 204) {
            if (iCode != 307) {
                if (iCode != 308 && iCode != 404 && iCode != 405) {
                    switch (iCode) {
                        case 300:
                        case MRAID_ERROR_VALUE:
                            break;
                        case INVALID_IFA_STATUS_VALUE:
                            break;
                        default:
                            return false;
                    }
                }
            }
            if (response.header(HttpHeaders.EXPIRES) == null) {
                if (response.cacheControl().maxAgeSeconds() == -1) {
                    if (!response.cacheControl().isPublic()) {
                    }
                }
            }
        }
        return (response.cacheControl().noStore() || request.cacheControl().noStore()) ? false : true;
    }
}
