package com.amazonaws.services.s3.internal;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.auth.AWS4Signer;
import com.amazonaws.auth.AwsChunkedEncodingInputStream;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.util.BinaryUtils;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class AWSS3V4Signer extends AWS4Signer {
    public AWSS3V4Signer() {
        super(false);
    }

    static long L(Request request) throws IOException {
        InputStream content = request.getContent();
        if (!content.markSupported()) {
            throw new AmazonClientException("Failed to get content length");
        }
        byte[] bArr = new byte[4096];
        content.mark(-1);
        long j11 = 0;
        while (true) {
            int i11 = content.read(bArr);
            if (i11 == -1) {
                content.reset();
                return j11;
            }
            j11 += (long) i11;
        }
    }

    private static boolean M(Request request) {
        return (request.l() instanceof PutObjectRequest) || (request.l() instanceof UploadPartRequest);
    }

    @Override // com.amazonaws.auth.AWS4Signer
    protected void K(Request request, AWS4Signer.HeaderSigningResult headerSigningResult) {
        if (M(request)) {
            request.a(new AwsChunkedEncodingInputStream(request.getContent(), headerSigningResult.b(), headerSigningResult.a(), headerSigningResult.c(), BinaryUtils.d(headerSigningResult.d()), this));
        }
    }

    @Override // com.amazonaws.auth.AWS4Signer
    protected String x(Request request) {
        long jL;
        request.addHeader("x-amz-content-sha256", "required");
        if (!M(request)) {
            return super.x(request);
        }
        String str = (String) request.getHeaders().get(HttpHeaders.CONTENT_LENGTH);
        if (str != null) {
            jL = Long.parseLong(str);
        } else {
            try {
                jL = L(request);
            } catch (IOException e11) {
                throw new AmazonClientException("Cannot get the content-lenght of the request content.", e11);
            }
        }
        request.addHeader("x-amz-decoded-content-length", Long.toString(jL));
        request.addHeader(HttpHeaders.CONTENT_LENGTH, Long.toString(AwsChunkedEncodingInputStream.n(jL)));
        return "STREAMING-AWS4-HMAC-SHA256-PAYLOAD";
    }
}
