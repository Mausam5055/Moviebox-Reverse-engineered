package com.amazonaws.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.amazonaws.util.StringUtils;
import java.io.InputStream;
import java.net.URI;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class HttpRequest {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private URI f18390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Map f18391c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final InputStream f18392d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f18393e;

    public HttpRequest(String str, URI uri, Map map, InputStream inputStream) {
        this.f18389a = StringUtils.c(str);
        this.f18390b = uri;
        this.f18391c = map == null ? Collections.EMPTY_MAP : Collections.unmodifiableMap(map);
        this.f18392d = inputStream;
    }

    public InputStream a() {
        return this.f18392d;
    }

    public long b() {
        String str;
        Map map = this.f18391c;
        if (map == null || (str = (String) map.get(HttpHeaders.CONTENT_LENGTH)) == null || str.isEmpty()) {
            return 0L;
        }
        return Long.valueOf(str).longValue();
    }

    public Map c() {
        return this.f18391c;
    }

    public String d() {
        return this.f18389a;
    }

    public URI e() {
        return this.f18390b;
    }

    public boolean f() {
        return this.f18393e;
    }

    public void g(boolean z10) {
        this.f18393e = z10;
    }
}
