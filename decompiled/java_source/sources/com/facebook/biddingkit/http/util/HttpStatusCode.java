package com.facebook.biddingkit.http.util;

import com.vungle.ads.internal.protos.Sdk$SDKError;

/* JADX INFO: loaded from: classes3.dex */
public enum HttpStatusCode {
    SUCCESS(200),
    NO_BID(Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE),
    BAD_REQUEST(400),
    TIMEOUT(504),
    UNKNOWN(-1);

    private int mStatusCode;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f24113a;

        static {
            int[] iArr = new int[HttpStatusCode.values().length];
            f24113a = iArr;
            try {
                iArr[HttpStatusCode.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f24113a[HttpStatusCode.NO_BID.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f24113a[HttpStatusCode.BAD_REQUEST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f24113a[HttpStatusCode.TIMEOUT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    HttpStatusCode(int i11) {
        this.mStatusCode = i11;
    }

    public static HttpStatusCode getValue(int i11) {
        for (HttpStatusCode httpStatusCode : values()) {
            if (httpStatusCode.mStatusCode == i11) {
                return httpStatusCode;
            }
        }
        return UNKNOWN;
    }

    public String getErrorMessage() {
        int i11 = a.f24113a[ordinal()];
        if (i11 == 1) {
            return "";
        }
        if (i11 == 2) {
            return "No bid";
        }
        if (i11 != 3) {
            return i11 != 4 ? "Unknown error" : "Server timeout";
        }
        return "Invalid request";
    }

    public int getStatusCode() {
        return this.mStatusCode;
    }
}
