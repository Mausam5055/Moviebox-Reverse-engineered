package com.amazonaws.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class HttpResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18394a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f18395b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final InputStream f18396c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map f18397d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private InputStream f18398e;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f18399a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f18400b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private InputStream f18401c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Map f18402d = new HashMap();

        public HttpResponse a() {
            return new HttpResponse(this.f18399a, this.f18400b, Collections.unmodifiableMap(this.f18402d), this.f18401c);
        }

        public Builder b(InputStream inputStream) {
            this.f18401c = inputStream;
            return this;
        }

        public Builder c(String str, String str2) {
            this.f18402d.put(str, str2);
            return this;
        }

        public Builder d(int i11) {
            this.f18400b = i11;
            return this;
        }

        public Builder e(String str) {
            this.f18399a = str;
            return this;
        }
    }

    private HttpResponse(String str, int i11, Map map, InputStream inputStream) {
        this.f18394a = str;
        this.f18395b = i11;
        this.f18397d = map;
        this.f18396c = inputStream;
    }

    public static Builder a() {
        return new Builder();
    }

    public InputStream b() {
        if (this.f18398e == null) {
            synchronized (this) {
                try {
                    if (this.f18396c == null || !"gzip".equals(this.f18397d.get(HttpHeaders.CONTENT_ENCODING))) {
                        this.f18398e = this.f18396c;
                    } else {
                        this.f18398e = new GZIPInputStream(this.f18396c);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.f18398e;
    }

    public Map c() {
        return this.f18397d;
    }

    public InputStream d() {
        return this.f18396c;
    }

    public int e() {
        return this.f18395b;
    }

    public String f() {
        return this.f18394a;
    }
}
