package com.vungle.ads.internal.network;

import com.vungle.ads.internal.util.n;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes7.dex */
public final class f {
    public static final b Companion = new b(null);
    private static final int PRIORITY_MAX_RETRY_COUNT = 3;
    private static final int REGULAR_MAX_RETRY_COUNT = 5;
    private final String body;
    private final Map<String, String> headers;
    private final n logEntry;
    private final HttpMethod method;
    private final Boolean priorityRetry;
    private final int priorityRetryCount;
    private final boolean regularRetry;
    private final int regularRetryCount;
    private final String tpatKey;
    private final String url;

    public static final class a {
        private String body;
        private Map<String, String> headers;
        private n logEntry;
        private HttpMethod method;
        private Boolean priorityRetry;
        private int priorityRetryCount;
        private boolean regularRetry;
        private int regularRetryCount;
        private String tpatKey;
        private final String url;

        public a(String url) {
            Intrinsics.h(url, "url");
            this.url = url;
            this.method = HttpMethod.GET;
            this.priorityRetryCount = 3;
            this.regularRetry = true;
            this.regularRetryCount = 5;
        }

        public final a body(String str) {
            this.body = str;
            return this;
        }

        public final f build() {
            return new f(this.url, this.method, this.headers, this.body, this.priorityRetry, this.priorityRetryCount, this.regularRetry, this.regularRetryCount, this.tpatKey, this.logEntry, null);
        }

        public final a get() {
            this.method = HttpMethod.GET;
            return this;
        }

        public final String getUrl() {
            return this.url;
        }

        public final a headers(Map<String, String> map) {
            this.headers = map;
            return this;
        }

        public final a method(HttpMethod method) {
            Intrinsics.h(method, "method");
            this.method = method;
            return this;
        }

        public final a post() {
            this.method = HttpMethod.POST;
            return this;
        }

        public final a priorityRetry(boolean z10) {
            this.priorityRetry = Boolean.valueOf(z10);
            return this;
        }

        public final a priorityRetryCount(int i11) {
            this.priorityRetryCount = i11;
            return this;
        }

        public final a regularRetry(boolean z10) {
            this.regularRetry = z10;
            return this;
        }

        public final a regularRetryCount(int i11) {
            this.regularRetryCount = i11;
            return this;
        }

        public final a tpatKey(String str) {
            this.tpatKey = str;
            return this;
        }

        public final a withLogEntry(n nVar) {
            this.logEntry = nVar;
            return this;
        }
    }

    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private f(String str, HttpMethod httpMethod, Map<String, String> map, String str2, Boolean bool, int i11, boolean z10, int i12, String str3, n nVar) {
        this.url = str;
        this.method = httpMethod;
        this.headers = map;
        this.body = str2;
        this.priorityRetry = bool;
        this.priorityRetryCount = i11;
        this.regularRetry = z10;
        this.regularRetryCount = i12;
        this.tpatKey = str3;
        this.logEntry = nVar;
    }

    public /* synthetic */ f(String str, HttpMethod httpMethod, Map map, String str2, Boolean bool, int i11, boolean z10, int i12, String str3, n nVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, httpMethod, map, str2, bool, i11, z10, i12, str3, nVar);
    }

    public final String getBody() {
        return this.body;
    }

    public final Map<String, String> getHeaders() {
        return this.headers;
    }

    public final n getLogEntry() {
        return this.logEntry;
    }

    public final HttpMethod getMethod() {
        return this.method;
    }

    public final Boolean getPriorityRetry() {
        return this.priorityRetry;
    }

    public final int getPriorityRetryCount() {
        return this.priorityRetryCount;
    }

    public final boolean getRegularRetry() {
        return this.regularRetry;
    }

    public final int getRegularRetryCount() {
        return this.regularRetryCount;
    }

    public final String getTpatKey() {
        return this.tpatKey;
    }

    public final String getUrl() {
        return this.url;
    }
}
