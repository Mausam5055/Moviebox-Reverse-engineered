package com.amazonaws.services.s3.internal;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.amazonaws.Request;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSSessionCredentials;
import com.amazonaws.auth.AbstractAWSSigner;
import com.amazonaws.auth.SigningAlgorithm;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.HttpUtils;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class S3Signer extends AbstractAWSSigner {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Log f18664f = LogFactory.b(S3Signer.class);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f18665c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f18666d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set f18667e;

    public S3Signer() {
        this.f18665c = null;
        this.f18666d = null;
        this.f18667e = null;
    }

    public S3Signer(String str, String str2) {
        this(str, str2, null);
    }

    public S3Signer(String str, String str2, Collection collection) {
        if (str2 == null) {
            throw new IllegalArgumentException("Parameter resourcePath is empty");
        }
        this.f18665c = str;
        this.f18666d = str2;
        this.f18667e = collection == null ? null : Collections.unmodifiableSet(new HashSet(collection));
    }

    @Override // com.amazonaws.auth.Signer
    public void b(Request request, AWSCredentials aWSCredentials) {
        w(request, aWSCredentials, null);
    }

    protected void v(Request request, AWSSessionCredentials aWSSessionCredentials) {
        request.addHeader("x-amz-security-token", aWSSessionCredentials.a());
    }

    void w(Request request, AWSCredentials aWSCredentials, Date date) {
        if (this.f18666d == null) {
            throw new UnsupportedOperationException("Cannot sign a request using a dummy S3Signer instance with no resource path");
        }
        if (aWSCredentials == null || aWSCredentials.c() == null) {
            f18664f.a("Canonical string will not be signed, as no AWS Secret Key was provided");
            return;
        }
        AWSCredentials aWSCredentialsQ = q(aWSCredentials);
        if (aWSCredentialsQ instanceof AWSSessionCredentials) {
            v(request, (AWSSessionCredentials) aWSCredentialsQ);
        }
        String strB = HttpUtils.b(request.r().getPath(), this.f18666d, true);
        Date dateL = l(m(request));
        if (date == null) {
            date = dateL;
        }
        request.addHeader(HttpHeaders.DATE, ServiceUtils.a(date));
        String strA = RestUtils.a(this.f18665c, strB, request, null, this.f18667e);
        f18664f.a("Calculated string to sign:\n\"" + strA + "\"");
        request.addHeader(HttpHeaders.AUTHORIZATION, "AWS " + aWSCredentialsQ.b() + ":" + super.t(strA, aWSCredentialsQ.c(), SigningAlgorithm.HmacSHA1));
    }
}
