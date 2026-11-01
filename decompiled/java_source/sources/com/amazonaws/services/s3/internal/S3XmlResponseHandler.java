package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.transform.Unmarshaller;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class S3XmlResponseHandler<T> extends AbstractS3ResponseHandler<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Log f18668e = LogFactory.c("com.amazonaws.request");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Unmarshaller f18669c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Map f18670d;

    public S3XmlResponseHandler(Unmarshaller unmarshaller) {
        this.f18669c = unmarshaller;
    }

    @Override // com.amazonaws.http.HttpResponseHandler
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public AmazonWebServiceResponse a(HttpResponse httpResponse) {
        AmazonWebServiceResponse amazonWebServiceResponseC = c(httpResponse);
        this.f18670d = httpResponse.c();
        if (this.f18669c != null) {
            Log log = f18668e;
            log.k("Beginning to parse service response XML");
            Object objA = this.f18669c.a(httpResponse.b());
            log.k("Done parsing service response XML");
            amazonWebServiceResponseC.d(objA);
        }
        return amazonWebServiceResponseC;
    }
}
