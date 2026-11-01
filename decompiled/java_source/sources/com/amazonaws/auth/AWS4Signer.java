package com.amazonaws.auth;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class AWS4Signer extends AbstractAWSSigner implements ServiceAwareSigner, RegionAwareSigner {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected static final Log f18321g = LogFactory.b(AWS4Signer.class);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected String f18322c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected String f18323d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected Date f18324e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected boolean f18325f;

    protected static class HeaderSigningResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f18326a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f18327b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final byte[] f18328c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final byte[] f18329d;

        public HeaderSigningResult(String str, String str2, byte[] bArr, byte[] bArr2) {
            this.f18326a = str;
            this.f18327b = str2;
            this.f18328c = bArr;
            this.f18329d = bArr2;
        }

        public String a() {
            return this.f18326a;
        }

        public byte[] b() {
            byte[] bArr = this.f18328c;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }

        public String c() {
            return this.f18327b;
        }

        public byte[] d() {
            byte[] bArr = this.f18329d;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
    }

    public AWS4Signer() {
        this(true);
    }

    public AWS4Signer(boolean z10) {
        this.f18325f = z10;
    }

    protected String A(URI uri) {
        String str = this.f18322c;
        return str != null ? str : AwsHostNameUtils.c(uri);
    }

    protected String B(Request request, String str) {
        String str2 = request.m().toString() + "\n" + j(HttpUtils.a(request.r().getPath(), request.p()), this.f18325f) + "\n" + h(request) + "\n" + C(request) + "\n" + G(request) + "\n" + str;
        f18321g.a("AWS4 Canonical Request: '\"" + str2 + "\"");
        return str2;
    }

    protected String C(Request request) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.addAll(request.getHeaders().keySet());
        Collections.sort(arrayList, String.CASE_INSENSITIVE_ORDER);
        StringBuilder sb2 = new StringBuilder();
        for (String str : arrayList) {
            if (J(str)) {
                String strReplaceAll = StringUtils.b(str).replaceAll("\\s+", " ");
                String str2 = (String) request.getHeaders().get(str);
                sb2.append(strReplaceAll);
                sb2.append(":");
                if (str2 != null) {
                    sb2.append(str2.replaceAll("\\s+", " "));
                }
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }

    protected final long D(Request request) {
        Date dateL = l(m(request));
        Date date = this.f18324e;
        if (date != null) {
            dateL = date;
        }
        return dateL.getTime();
    }

    protected final String E(long j11) {
        return DateUtils.c("yyyyMMdd", new Date(j11));
    }

    protected String F(Request request, String str) {
        return str + "/" + z(request.r()) + "/" + A(request.r()) + "/aws4_request";
    }

    protected String G(Request request) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.addAll(request.getHeaders().keySet());
        Collections.sort(arrayList, String.CASE_INSENSITIVE_ORDER);
        StringBuilder sb2 = new StringBuilder();
        for (String str : arrayList) {
            if (J(str)) {
                if (sb2.length() > 0) {
                    sb2.append(";");
                }
                sb2.append(StringUtils.b(str));
            }
        }
        return sb2.toString();
    }

    protected String H(String str, String str2, String str3, String str4) {
        String str5 = str + "\n" + str2 + "\n" + str3 + "\n" + BinaryUtils.d(o(str4));
        f18321g.a("AWS4 String to Sign: '\"" + str5 + "\"");
        return str5;
    }

    protected final String I(long j11) {
        return DateUtils.c("yyyyMMdd'T'HHmmss'Z'", new Date(j11));
    }

    boolean J(String str) {
        return "date".equalsIgnoreCase(str) || HttpHeaders.CONTENT_MD5.equalsIgnoreCase(str) || "host".equalsIgnoreCase(str) || str.startsWith("x-amz") || str.startsWith("X-Amz");
    }

    protected void K(Request request, HeaderSigningResult headerSigningResult) {
    }

    @Override // com.amazonaws.auth.ServiceAwareSigner
    public void a(String str) {
        this.f18322c = str;
    }

    @Override // com.amazonaws.auth.Signer
    public void b(Request request, AWSCredentials aWSCredentials) {
        if (aWSCredentials instanceof AnonymousAWSCredentials) {
            return;
        }
        AWSCredentials aWSCredentialsQ = q(aWSCredentials);
        if (aWSCredentialsQ instanceof AWSSessionCredentials) {
            w(request, (AWSSessionCredentials) aWSCredentialsQ);
        }
        v(request);
        long jD = D(request);
        String strE = E(jD);
        String strF = F(request, strE);
        String strX = x(request);
        String strI = I(jD);
        request.addHeader("X-Amz-Date", strI);
        if (request.getHeaders().get("x-amz-content-sha256") != null && "required".equals(request.getHeaders().get("x-amz-content-sha256"))) {
            request.addHeader("x-amz-content-sha256", strX);
        }
        String str = aWSCredentialsQ.b() + "/" + strF;
        HeaderSigningResult headerSigningResultY = y(request, strE, strI, "AWS4-HMAC-SHA256", strX, aWSCredentialsQ);
        request.addHeader(HttpHeaders.AUTHORIZATION, "AWS4-HMAC-SHA256 " + ("Credential=" + str) + ", " + ("SignedHeaders=" + G(request)) + ", " + ("Signature=" + BinaryUtils.d(headerSigningResultY.d())));
        K(request, headerSigningResultY);
    }

    @Override // com.amazonaws.auth.RegionAwareSigner
    public void c(String str) {
        this.f18323d = str;
    }

    protected void v(Request request) {
        String host = request.r().getHost();
        if (HttpUtils.d(request.r())) {
            host = host + ":" + request.r().getPort();
        }
        request.addHeader(HttpHeaders.HOST, host);
    }

    protected void w(Request request, AWSSessionCredentials aWSSessionCredentials) {
        request.addHeader("x-amz-security-token", aWSSessionCredentials.a());
    }

    protected String x(Request request) {
        InputStream inputStreamE = e(request);
        inputStreamE.mark(-1);
        String strD = BinaryUtils.d(n(inputStreamE));
        try {
            inputStreamE.reset();
            return strD;
        } catch (IOException e11) {
            throw new AmazonClientException("Unable to reset stream after calculating AWS4 signature", e11);
        }
    }

    protected final HeaderSigningResult y(Request request, String str, String str2, String str3, String str4, AWSCredentials aWSCredentials) {
        String strZ = z(request.r());
        String strA = A(request.r());
        String str5 = str + "/" + strZ + "/" + strA + "/aws4_request";
        String strH = H(str3, str2, str5, B(request, str4));
        String str6 = "AWS4" + aWSCredentials.c();
        Charset charset = StringUtils.f19004a;
        byte[] bytes = str6.getBytes(charset);
        SigningAlgorithm signingAlgorithm = SigningAlgorithm.HmacSHA256;
        byte[] bArrR = r("aws4_request", r(strA, r(strZ, r(str, bytes, signingAlgorithm), signingAlgorithm), signingAlgorithm), signingAlgorithm);
        return new HeaderSigningResult(str2, str5, bArrR, s(strH.getBytes(charset), bArrR, signingAlgorithm));
    }

    protected String z(URI uri) {
        String str = this.f18323d;
        return str != null ? str : AwsHostNameUtils.a(uri.getHost(), this.f18322c);
    }
}
