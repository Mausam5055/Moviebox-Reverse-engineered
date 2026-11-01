package com.amazonaws.services.s3.model;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.amazonaws.AmazonWebServiceRequest;

/* JADX INFO: loaded from: classes2.dex */
public class ResponseHeaderOverrides extends AmazonWebServiceRequest {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f18796g = {RequestParameters.RESPONSE_HEADER_CACHE_CONTROL, RequestParameters.RESPONSE_HEADER_CONTENT_DISPOSITION, RequestParameters.RESPONSE_HEADER_CONTENT_ENCODING, RequestParameters.RESPONSE_HEADER_CONTENT_LANGUAGE, RequestParameters.RESPONSE_HEADER_CONTENT_TYPE, RequestParameters.RESPONSE_HEADER_EXPIRES};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f18797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f18798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f18799c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f18800d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f18801e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f18802f;

    public String b() {
        return this.f18800d;
    }

    public String c() {
        return this.f18801e;
    }

    public String e() {
        return this.f18802f;
    }

    public String f() {
        return this.f18798b;
    }

    public String g() {
        return this.f18799c;
    }

    public String getContentType() {
        return this.f18797a;
    }
}
