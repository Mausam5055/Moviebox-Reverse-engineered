package com.amazonaws;

/* JADX INFO: loaded from: classes2.dex */
public class AmazonWebServiceResponse<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object f18280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ResponseMetadata f18281b;

    public String a() {
        ResponseMetadata responseMetadata = this.f18281b;
        if (responseMetadata == null) {
            return null;
        }
        return responseMetadata.a();
    }

    public Object b() {
        return this.f18280a;
    }

    public void c(ResponseMetadata responseMetadata) {
        this.f18281b = responseMetadata;
    }

    public void d(Object obj) {
        this.f18280a = obj;
    }
}
