package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.util.StringUtils;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class S3StringResponseHandler extends AbstractS3ResponseHandler<String> {
    @Override // com.amazonaws.http.HttpResponseHandler
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public AmazonWebServiceResponse a(HttpResponse httpResponse) throws IOException {
        AmazonWebServiceResponse amazonWebServiceResponseC = c(httpResponse);
        byte[] bArr = new byte[1024];
        StringBuilder sb2 = new StringBuilder();
        InputStream inputStreamB = httpResponse.b();
        while (true) {
            int i11 = inputStreamB.read(bArr);
            if (i11 <= 0) {
                amazonWebServiceResponseC.d(sb2.toString());
                return amazonWebServiceResponseC;
            }
            sb2.append(new String(bArr, 0, i11, StringUtils.f19004a));
        }
    }
}
