package uc;

import com.google.firebase.perf.metrics.i;
import com.google.firebase.perf.util.Timer;
import org.apache.http.HttpResponse;
import org.apache.http.client.ResponseHandler;

/* JADX INFO: loaded from: classes5.dex */
public class e implements ResponseHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ResponseHandler f76724a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Timer f76725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final i f76726c;

    public e(ResponseHandler responseHandler, Timer timer, i iVar) {
        this.f76724a = responseHandler;
        this.f76725b = timer;
        this.f76726c = iVar;
    }

    @Override // org.apache.http.client.ResponseHandler
    public Object handleResponse(HttpResponse httpResponse) {
        this.f76726c.o(this.f76725b.getDurationMicros());
        this.f76726c.g(httpResponse.getStatusLine().getStatusCode());
        Long lA = f.a(httpResponse);
        if (lA != null) {
            this.f76726c.m(lA.longValue());
        }
        String strB = f.b(httpResponse);
        if (strB != null) {
            this.f76726c.l(strB);
        }
        this.f76726c.a();
        return this.f76724a.handleResponse(httpResponse);
    }
}
