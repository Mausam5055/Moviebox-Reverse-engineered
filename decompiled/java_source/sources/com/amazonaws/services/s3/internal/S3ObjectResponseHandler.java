package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class S3ObjectResponseHandler extends AbstractS3ResponseHandler<S3Object> {
    @Override // com.amazonaws.services.s3.internal.AbstractS3ResponseHandler, com.amazonaws.http.HttpResponseHandler
    public boolean b() {
        return true;
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public AmazonWebServiceResponse a(HttpResponse httpResponse) {
        S3Object s3Object = new S3Object();
        AmazonWebServiceResponse amazonWebServiceResponseC = c(httpResponse);
        if (httpResponse.c().get("x-amz-website-redirect-location") != null) {
            s3Object.setRedirectLocation((String) httpResponse.c().get("x-amz-website-redirect-location"));
        }
        if (httpResponse.c().get("x-amz-request-charged") != null) {
            s3Object.setRequesterCharged(true);
        }
        if (httpResponse.c().get("x-amz-tagging-count") != null) {
            s3Object.setTaggingCount(Integer.valueOf(Integer.parseInt((String) httpResponse.c().get("x-amz-tagging-count"))));
        }
        d(httpResponse, s3Object.getObjectMetadata());
        s3Object.setObjectContent(new S3ObjectInputStream(httpResponse.b()));
        amazonWebServiceResponseC.d(s3Object);
        return amazonWebServiceResponseC;
    }
}
