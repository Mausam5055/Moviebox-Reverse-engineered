package com.vungle.ads.internal.network;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes7.dex */
public final class e {
    public static final a Companion = new a(null);
    private final Object body;
    private final ResponseBody errorBody;
    private final Response rawResponse;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final <T> e error(ResponseBody responseBody, Response rawResponse) {
            Intrinsics.h(rawResponse, "rawResponse");
            if (rawResponse.isSuccessful()) {
                throw new IllegalArgumentException("rawResponse should not be successful response");
            }
            DefaultConstructorMarker defaultConstructorMarker = null;
            return new e(rawResponse, defaultConstructorMarker, responseBody, defaultConstructorMarker);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final <T> e success(T t11, Response rawResponse) {
            Intrinsics.h(rawResponse, "rawResponse");
            if (rawResponse.isSuccessful()) {
                return new e(rawResponse, t11, null, 0 == true ? 1 : 0);
            }
            throw new IllegalArgumentException("rawResponse must be successful response");
        }
    }

    private e(Response response, Object obj, ResponseBody responseBody) {
        this.rawResponse = response;
        this.body = obj;
        this.errorBody = responseBody;
    }

    public /* synthetic */ e(Response response, Object obj, ResponseBody responseBody, DefaultConstructorMarker defaultConstructorMarker) {
        this(response, obj, responseBody);
    }

    public final Object body() {
        return this.body;
    }

    public final int code() {
        return this.rawResponse.code();
    }

    public final ResponseBody errorBody() {
        return this.errorBody;
    }

    public final Headers headers() {
        return this.rawResponse.headers();
    }

    public final boolean isSuccessful() {
        return this.rawResponse.isSuccessful();
    }

    public final String message() {
        return this.rawResponse.message();
    }

    public final Response raw() {
        return this.rawResponse;
    }

    public String toString() {
        return this.rawResponse.toString();
    }
}
