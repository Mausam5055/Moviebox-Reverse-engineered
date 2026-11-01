package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.transform.Unmarshaller;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ResponseHeaderHandlerChain<T> extends S3XmlResponseHandler<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List f18659f;

    public ResponseHeaderHandlerChain(Unmarshaller unmarshaller, HeaderHandler... headerHandlerArr) {
        super(unmarshaller);
        this.f18659f = Arrays.asList(headerHandlerArr);
    }

    @Override // com.amazonaws.services.s3.internal.S3XmlResponseHandler, com.amazonaws.http.HttpResponseHandler
    /* JADX INFO: renamed from: e */
    public AmazonWebServiceResponse a(HttpResponse httpResponse) {
        AmazonWebServiceResponse amazonWebServiceResponseA = super.a(httpResponse);
        Object objB = amazonWebServiceResponseA.b();
        if (objB != null) {
            Iterator it = this.f18659f.iterator();
            while (it.hasNext()) {
                ((HeaderHandler) it.next()).a(objB, httpResponse);
            }
        }
        return amazonWebServiceResponseA;
    }
}
