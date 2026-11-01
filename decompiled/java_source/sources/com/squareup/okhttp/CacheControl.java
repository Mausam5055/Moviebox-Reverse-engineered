package com.squareup.okhttp;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.squareup.okhttp.internal.http.c;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class CacheControl {
    String headerValue;
    private final boolean isPrivate;
    private final boolean isPublic;
    private final int maxAgeSeconds;
    private final int maxStaleSeconds;
    private final int minFreshSeconds;
    private final boolean mustRevalidate;
    private final boolean noCache;
    private final boolean noStore;
    private final boolean noTransform;
    private final boolean onlyIfCached;
    private final int sMaxAgeSeconds;
    public static final CacheControl FORCE_NETWORK = new Builder().noCache().build();
    public static final CacheControl FORCE_CACHE = new Builder().onlyIfCached().maxStale(Integer.MAX_VALUE, TimeUnit.SECONDS).build();

    public static final class Builder {
        int maxAgeSeconds = -1;
        int maxStaleSeconds = -1;
        int minFreshSeconds = -1;
        boolean noCache;
        boolean noStore;
        boolean noTransform;
        boolean onlyIfCached;

        public CacheControl build() {
            return new CacheControl(this);
        }

        public Builder maxAge(int i11, TimeUnit timeUnit) {
            if (i11 >= 0) {
                long seconds = timeUnit.toSeconds(i11);
                this.maxAgeSeconds = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxAge < 0: " + i11);
        }

        public Builder maxStale(int i11, TimeUnit timeUnit) {
            if (i11 >= 0) {
                long seconds = timeUnit.toSeconds(i11);
                this.maxStaleSeconds = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("maxStale < 0: " + i11);
        }

        public Builder minFresh(int i11, TimeUnit timeUnit) {
            if (i11 >= 0) {
                long seconds = timeUnit.toSeconds(i11);
                this.minFreshSeconds = seconds > 2147483647L ? Integer.MAX_VALUE : (int) seconds;
                return this;
            }
            throw new IllegalArgumentException("minFresh < 0: " + i11);
        }

        public Builder noCache() {
            this.noCache = true;
            return this;
        }

        public Builder noStore() {
            this.noStore = true;
            return this;
        }

        public Builder noTransform() {
            this.noTransform = true;
            return this;
        }

        public Builder onlyIfCached() {
            this.onlyIfCached = true;
            return this;
        }
    }

    private CacheControl(Builder builder) {
        this.noCache = builder.noCache;
        this.noStore = builder.noStore;
        this.maxAgeSeconds = builder.maxAgeSeconds;
        this.sMaxAgeSeconds = -1;
        this.isPrivate = false;
        this.isPublic = false;
        this.mustRevalidate = false;
        this.maxStaleSeconds = builder.maxStaleSeconds;
        this.minFreshSeconds = builder.minFreshSeconds;
        this.onlyIfCached = builder.onlyIfCached;
        this.noTransform = builder.noTransform;
    }

    private CacheControl(boolean z10, boolean z11, int i11, int i12, boolean z12, boolean z13, boolean z14, int i13, int i14, boolean z15, boolean z16, String str) {
        this.noCache = z10;
        this.noStore = z11;
        this.maxAgeSeconds = i11;
        this.sMaxAgeSeconds = i12;
        this.isPrivate = z12;
        this.isPublic = z13;
        this.mustRevalidate = z14;
        this.maxStaleSeconds = i13;
        this.minFreshSeconds = i14;
        this.onlyIfCached = z15;
        this.noTransform = z16;
        this.headerValue = str;
    }

    private String headerValue() {
        StringBuilder sb2 = new StringBuilder();
        if (this.noCache) {
            sb2.append("no-cache, ");
        }
        if (this.noStore) {
            sb2.append("no-store, ");
        }
        if (this.maxAgeSeconds != -1) {
            sb2.append("max-age=");
            sb2.append(this.maxAgeSeconds);
            sb2.append(", ");
        }
        if (this.sMaxAgeSeconds != -1) {
            sb2.append("s-maxage=");
            sb2.append(this.sMaxAgeSeconds);
            sb2.append(", ");
        }
        if (this.isPrivate) {
            sb2.append("private, ");
        }
        if (this.isPublic) {
            sb2.append("public, ");
        }
        if (this.mustRevalidate) {
            sb2.append("must-revalidate, ");
        }
        if (this.maxStaleSeconds != -1) {
            sb2.append("max-stale=");
            sb2.append(this.maxStaleSeconds);
            sb2.append(", ");
        }
        if (this.minFreshSeconds != -1) {
            sb2.append("min-fresh=");
            sb2.append(this.minFreshSeconds);
            sb2.append(", ");
        }
        if (this.onlyIfCached) {
            sb2.append("only-if-cached, ");
        }
        if (this.noTransform) {
            sb2.append("no-transform, ");
        }
        if (sb2.length() == 0) {
            return "";
        }
        sb2.delete(sb2.length() - 2, sb2.length());
        return sb2.toString();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0040  */
    /* JADX WARN: Code duplicated, block: B:21:0x0064  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:37:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:38:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:40:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:41:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:43:0x00db  */
    /* JADX WARN: Code duplicated, block: B:44:0x00de  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:47:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:50:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:52:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:53:0x0107  */
    /* JADX WARN: Code duplicated, block: B:55:0x010f  */
    /* JADX WARN: Code duplicated, block: B:56:0x0117  */
    /* JADX WARN: Code duplicated, block: B:58:0x0120  */
    /* JADX WARN: Code duplicated, block: B:59:0x0123  */
    /* JADX WARN: Code duplicated, block: B:61:0x012b  */
    /* JADX WARN: Code duplicated, block: B:83:0x012d A[SYNTHETIC] */
    public static CacheControl parse(Headers headers) {
        int i11;
        int iB;
        String strTrim;
        int iB2;
        String strTrim2;
        int size = headers.size();
        boolean z10 = true;
        String str = null;
        boolean z11 = false;
        boolean z12 = false;
        int iA = -1;
        int iA2 = -1;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        int iA3 = -1;
        int iA4 = -1;
        boolean z16 = false;
        boolean z17 = false;
        for (int i12 = 0; i12 < size; i12++) {
            String strName = headers.name(i12);
            String strValue = headers.value(i12);
            if (strName.equalsIgnoreCase(HttpHeaders.CACHE_CONTROL)) {
                if (str == null) {
                    str = strValue;
                }
                for (i11 = 0; i11 < strValue.length(); i11 = iB2) {
                    iB = c.b(strValue, i11, "=,;");
                    strTrim = strValue.substring(i11, iB).trim();
                    if (iB != strValue.length() || strValue.charAt(iB) == ',' || strValue.charAt(iB) == ';') {
                        iB2 = iB + 1;
                        strTrim2 = null;
                    } else {
                        int iC = c.c(strValue, iB + 1);
                        if (iC >= strValue.length() || strValue.charAt(iC) != '\"') {
                            iB2 = c.b(strValue, iC, ",;");
                            strTrim2 = strValue.substring(iC, iB2).trim();
                        } else {
                            int i13 = iC + 1;
                            int iB3 = c.b(strValue, i13, "\"");
                            strTrim2 = strValue.substring(i13, iB3);
                            iB2 = iB3 + 1;
                        }
                    }
                    if ("no-cache".equalsIgnoreCase(strTrim)) {
                        z11 = true;
                    } else if ("no-store".equalsIgnoreCase(strTrim)) {
                        z12 = true;
                    } else if ("max-age".equalsIgnoreCase(strTrim)) {
                        iA = c.a(strTrim2, -1);
                    } else if ("s-maxage".equalsIgnoreCase(strTrim)) {
                        iA2 = c.a(strTrim2, -1);
                    } else if ("private".equalsIgnoreCase(strTrim)) {
                        z13 = true;
                    } else if ("public".equalsIgnoreCase(strTrim)) {
                        z14 = true;
                    } else if ("must-revalidate".equalsIgnoreCase(strTrim)) {
                        z15 = true;
                    } else if ("max-stale".equalsIgnoreCase(strTrim)) {
                        iA3 = c.a(strTrim2, Integer.MAX_VALUE);
                    } else if ("min-fresh".equalsIgnoreCase(strTrim)) {
                        iA4 = c.a(strTrim2, -1);
                    } else if ("only-if-cached".equalsIgnoreCase(strTrim)) {
                        z16 = true;
                    } else if ("no-transform".equalsIgnoreCase(strTrim)) {
                        z17 = true;
                    }
                }
            } else {
                if (strName.equalsIgnoreCase("Pragma")) {
                }
            }
            z10 = false;
            while (i11 < strValue.length()) {
                iB = c.b(strValue, i11, "=,;");
                strTrim = strValue.substring(i11, iB).trim();
                if (iB != strValue.length()) {
                    iB2 = iB + 1;
                    strTrim2 = null;
                } else {
                    iB2 = iB + 1;
                    strTrim2 = null;
                }
                if ("no-cache".equalsIgnoreCase(strTrim)) {
                    z11 = true;
                } else if ("no-store".equalsIgnoreCase(strTrim)) {
                    z12 = true;
                } else if ("max-age".equalsIgnoreCase(strTrim)) {
                    iA = c.a(strTrim2, -1);
                } else if ("s-maxage".equalsIgnoreCase(strTrim)) {
                    iA2 = c.a(strTrim2, -1);
                } else if ("private".equalsIgnoreCase(strTrim)) {
                    z13 = true;
                } else if ("public".equalsIgnoreCase(strTrim)) {
                    z14 = true;
                } else if ("must-revalidate".equalsIgnoreCase(strTrim)) {
                    z15 = true;
                } else if ("max-stale".equalsIgnoreCase(strTrim)) {
                    iA3 = c.a(strTrim2, Integer.MAX_VALUE);
                } else if ("min-fresh".equalsIgnoreCase(strTrim)) {
                    iA4 = c.a(strTrim2, -1);
                } else if ("only-if-cached".equalsIgnoreCase(strTrim)) {
                    z16 = true;
                } else if ("no-transform".equalsIgnoreCase(strTrim)) {
                    z17 = true;
                }
            }
        }
        return new CacheControl(z11, z12, iA, iA2, z13, z14, z15, iA3, iA4, z16, z17, !z10 ? null : str);
    }

    public boolean isPrivate() {
        return this.isPrivate;
    }

    public boolean isPublic() {
        return this.isPublic;
    }

    public int maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public int maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    public int minFreshSeconds() {
        return this.minFreshSeconds;
    }

    public boolean mustRevalidate() {
        return this.mustRevalidate;
    }

    public boolean noCache() {
        return this.noCache;
    }

    public boolean noStore() {
        return this.noStore;
    }

    public boolean noTransform() {
        return this.noTransform;
    }

    public boolean onlyIfCached() {
        return this.onlyIfCached;
    }

    public int sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    public String toString() {
        String str = this.headerValue;
        if (str != null) {
            return str;
        }
        String strHeaderValue = headerValue();
        this.headerValue = strHeaderValue;
        return strHeaderValue;
    }
}
