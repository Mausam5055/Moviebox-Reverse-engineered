package com.amazonaws.auth;

import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.TimeZone;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes2.dex */
public class QueryStringSigner extends AbstractAWSSigner implements Signer {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Date f18367c;

    private String w(Map map) {
        StringBuilder sb2 = new StringBuilder();
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        treeMap.putAll(map);
        for (Map.Entry entry : treeMap.entrySet()) {
            sb2.append((String) entry.getKey());
            sb2.append((String) entry.getValue());
        }
        return sb2.toString();
    }

    private String x(Request request) {
        return "POST\n" + g(request.r()) + "\n" + y(request) + "\n" + i(request.getParameters());
    }

    private String y(Request request) {
        String str = "";
        if (request.r().getPath() != null) {
            str = "" + request.r().getPath();
        }
        if (request.p() != null) {
            if (str.length() > 0 && !str.endsWith("/") && !request.p().startsWith("/")) {
                str = str + "/";
            }
            str = str + request.p();
        } else if (!str.endsWith("/")) {
            str = str + "/";
        }
        if (!str.startsWith("/")) {
            str = "/" + str;
        }
        return str.startsWith("//") ? str.substring(1) : str;
    }

    private String z(int i11) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        Date date = this.f18367c;
        return date != null ? simpleDateFormat.format(date) : simpleDateFormat.format(l(i11));
    }

    public void A(Request request, SignatureVersion signatureVersion, SigningAlgorithm signingAlgorithm, AWSCredentials aWSCredentials) {
        String strX;
        if (aWSCredentials instanceof AnonymousAWSCredentials) {
            return;
        }
        AWSCredentials aWSCredentialsQ = q(aWSCredentials);
        request.g("AWSAccessKeyId", aWSCredentialsQ.b());
        request.g("SignatureVersion", signatureVersion.toString());
        request.g("Timestamp", z(m(request)));
        if (aWSCredentialsQ instanceof AWSSessionCredentials) {
            v(request, (AWSSessionCredentials) aWSCredentialsQ);
        }
        if (signatureVersion.equals(SignatureVersion.V1)) {
            strX = w(request.getParameters());
        } else {
            if (!signatureVersion.equals(SignatureVersion.V2)) {
                throw new AmazonClientException("Invalid Signature Version specified");
            }
            request.g("SignatureMethod", signingAlgorithm.toString());
            strX = x(request);
        }
        request.g(RequestParameters.SIGNATURE, t(strX, aWSCredentialsQ.c(), signingAlgorithm));
    }

    @Override // com.amazonaws.auth.Signer
    public void b(Request request, AWSCredentials aWSCredentials) {
        A(request, SignatureVersion.V2, SigningAlgorithm.HmacSHA256, aWSCredentials);
    }

    protected void v(Request request, AWSSessionCredentials aWSSessionCredentials) {
        request.g("SecurityToken", aWSSessionCredentials.a());
    }
}
