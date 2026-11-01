package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.model.ObjectMetadata;

/* JADX INFO: loaded from: classes2.dex */
public class S3MetadataResponseHandler extends AbstractS3ResponseHandler<ObjectMetadata> {
    @Override // com.amazonaws.http.HttpResponseHandler
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public AmazonWebServiceResponse a(HttpResponse httpResponse) {
        ObjectMetadata objectMetadata = new ObjectMetadata();
        d(httpResponse, objectMetadata);
        AmazonWebServiceResponse amazonWebServiceResponseC = c(httpResponse);
        amazonWebServiceResponseC.d(objectMetadata);
        return amazonWebServiceResponseC;
    }
}
