package com.amazonaws.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.Request;
import com.amazonaws.RequestClientOptions;
import com.amazonaws.Response;
import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.Signer;
import com.amazonaws.handlers.CredentialsRequestHandler;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.internal.CRC32MismatchException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.MetricType;
import com.amazonaws.metrics.RequestMetricCollector;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.retry.RetryUtils;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.TimingInfo;
import com.amazonaws.util.URIBuilder;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class AmazonHttpClient {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Log f18378e = LogFactory.c("com.amazonaws.request");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final Log f18379f = LogFactory.b(AmazonHttpClient.class);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final HttpClient f18380a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ClientConfiguration f18381b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HttpRequestFactory f18383d = new HttpRequestFactory();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final RequestMetricCollector f18382c = null;

    public AmazonHttpClient(ClientConfiguration clientConfiguration, HttpClient httpClient) {
        this.f18381b = clientConfiguration;
        this.f18380a = httpClient;
    }

    static String c(String str, String str2) {
        if (str.contains(str2)) {
            return str;
        }
        return str.trim() + " " + str2.trim();
    }

    private String g(String str) {
        return str.substring(str.indexOf("(") + 1, str.contains(" + 15") ? str.indexOf(" + 15") : str.indexOf(" - 15"));
    }

    private Throwable j(Throwable th2, AWSRequestMetrics aWSRequestMetrics) {
        AWSRequestMetrics.Field field = AWSRequestMetrics.Field.Exception;
        aWSRequestMetrics.d(field);
        aWSRequestMetrics.a(field, th2);
        return th2;
    }

    private boolean k(HttpResponse httpResponse) {
        int iE = httpResponse.e();
        return iE >= 200 && iE < 300;
    }

    private static boolean l(HttpResponse httpResponse) {
        int iE = httpResponse.e();
        String str = (String) httpResponse.c().get(HttpHeaders.LOCATION);
        return (iE != 307 || str == null || str.isEmpty()) ? false : true;
    }

    private long n(AmazonWebServiceRequest amazonWebServiceRequest, AmazonClientException amazonClientException, int i11, RetryPolicy retryPolicy) {
        int i12 = i11 - 2;
        long jA = retryPolicy.a().a(amazonWebServiceRequest, amazonClientException, i12);
        Log log = f18379f;
        if (log.b()) {
            log.a("Retriable error detected, will retry in " + jA + "ms, attempt number: " + i12);
        }
        try {
            Thread.sleep(jA);
            return jA;
        } catch (InterruptedException e11) {
            Thread.currentThread().interrupt();
            throw new AmazonClientException(e11.getMessage(), e11);
        }
    }

    private boolean r(AmazonWebServiceRequest amazonWebServiceRequest, InputStream inputStream, AmazonClientException amazonClientException, int i11, RetryPolicy retryPolicy) {
        int i12 = i11 - 1;
        int iB = this.f18381b.b();
        if (iB < 0 || !retryPolicy.d()) {
            iB = retryPolicy.b();
        }
        if (i12 >= iB) {
            return false;
        }
        if (inputStream == null || inputStream.markSupported()) {
            return retryPolicy.c().a(amazonWebServiceRequest, amazonClientException, i12);
        }
        Log log = f18379f;
        if (log.b()) {
            log.a("Content not repeatable");
        }
        return false;
    }

    void a(Request request, Response response, List list, AmazonClientException amazonClientException) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((RequestHandler2) it.next()).b(request, response, amazonClientException);
        }
    }

    void b(Request request, List list, Response response, TimingInfo timingInfo) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((RequestHandler2) it.next()).c(request, response);
        }
    }

    public Response d(Request request, HttpResponseHandler httpResponseHandler, HttpResponseHandler httpResponseHandler2, ExecutionContext executionContext) throws Throwable {
        Response responseE;
        if (request.j() != null) {
            try {
                URI uriR = request.r();
                request.s(URIBuilder.b(uriR).c(request.j() + uriR.getHost()).a());
            } catch (URISyntaxException e11) {
                Log log = f18379f;
                if (log.b()) {
                    log.g("Failed to prepend host prefix: " + e11.getMessage(), e11);
                }
            }
        }
        if (executionContext == null) {
            throw new AmazonClientException("Internal SDK Error: No execution context parameter specified.");
        }
        List listO = o(request, executionContext);
        AWSRequestMetrics aWSRequestMetricsA = executionContext.a();
        try {
            responseE = e(request, httpResponseHandler, httpResponseHandler2, executionContext);
            try {
                b(request, listO, responseE, aWSRequestMetricsA.c().c());
                return responseE;
            } catch (AmazonClientException e12) {
                e = e12;
                a(request, responseE, listO, e);
                throw e;
            }
        } catch (AmazonClientException e13) {
            e = e13;
            responseE = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:116:0x0212  */
    /* JADX WARN: Code duplicated, block: B:139:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:146:0x02f3 A[Catch: all -> 0x0301, Error -> 0x0308, RuntimeException -> 0x030e, IOException -> 0x0314, TryCatch #38 {IOException -> 0x0314, Error -> 0x0308, RuntimeException -> 0x030e, all -> 0x0301, blocks: (B:144:0x02ed, B:146:0x02f3, B:148:0x02f9, B:158:0x031d, B:169:0x0346), top: B:292:0x02ed }] */
    /* JADX WARN: Code duplicated, block: B:148:0x02f9 A[Catch: all -> 0x0301, Error -> 0x0308, RuntimeException -> 0x030e, IOException -> 0x0314, TryCatch #38 {IOException -> 0x0314, Error -> 0x0308, RuntimeException -> 0x030e, all -> 0x0301, blocks: (B:144:0x02ed, B:146:0x02f3, B:148:0x02f9, B:158:0x031d, B:169:0x0346), top: B:292:0x02ed }] */
    /* JADX WARN: Code duplicated, block: B:164:0x032d A[Catch: IOException -> 0x0335, TRY_LEAVE, TryCatch #30 {IOException -> 0x0335, blocks: (B:162:0x0327, B:164:0x032d), top: B:268:0x0327 }] */
    /* JADX WARN: Code duplicated, block: B:169:0x0346 A[Catch: all -> 0x0301, Error -> 0x0308, RuntimeException -> 0x030e, IOException -> 0x0314, TRY_ENTER, TRY_LEAVE, TryCatch #38 {IOException -> 0x0314, Error -> 0x0308, RuntimeException -> 0x030e, all -> 0x0301, blocks: (B:144:0x02ed, B:146:0x02f3, B:148:0x02f9, B:158:0x031d, B:169:0x0346), top: B:292:0x02ed }] */
    /* JADX WARN: Code duplicated, block: B:227:0x03ec A[Catch: all -> 0x03ab, TRY_ENTER, TryCatch #6 {all -> 0x03ab, blocks: (B:224:0x03e2, B:227:0x03ec, B:228:0x0402, B:230:0x0444, B:241:0x0470, B:202:0x03a5, B:203:0x03aa), top: B:253:0x03e2 }] */
    /* JADX WARN: Code duplicated, block: B:230:0x0444 A[Catch: all -> 0x03ab, TRY_LEAVE, TryCatch #6 {all -> 0x03ab, blocks: (B:224:0x03e2, B:227:0x03ec, B:228:0x0402, B:230:0x0444, B:241:0x0470, B:202:0x03a5, B:203:0x03aa), top: B:253:0x03e2 }] */
    /* JADX WARN: Code duplicated, block: B:232:0x0449 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:235:0x0451 A[Catch: IOException -> 0x0459, TRY_LEAVE, TryCatch #40 {IOException -> 0x0459, blocks: (B:233:0x044b, B:235:0x0451), top: B:276:0x044b }] */
    /* JADX WARN: Code duplicated, block: B:243:0x0473 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:262:0x01ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:285:0x01cd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:300:0x021a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:309:0x0470 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:312:? A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:78:0x0179 A[Catch: all -> 0x00da, Error -> 0x00e3, RuntimeException -> 0x00eb, IOException -> 0x0162, TRY_ENTER, TRY_LEAVE, TryCatch #25 {all -> 0x00da, blocks: (B:23:0x00c7, B:25:0x00d0, B:27:0x00d6, B:61:0x0144, B:67:0x0156, B:69:0x015e, B:74:0x016a, B:75:0x0170, B:78:0x0179, B:45:0x0103, B:46:0x0108), top: B:251:0x00c7 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x01d3 A[Catch: IOException -> 0x01db, TRY_LEAVE, TryCatch #59 {IOException -> 0x01db, blocks: (B:90:0x01cd, B:92:0x01d3), top: B:285:0x01cd }] */
    /* JADX WARN: Instruction removed from duplicated block: B:227:0x03ec, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:78:0x0179, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    Response e(Request request, HttpResponseHandler httpResponseHandler, HttpResponseHandler httpResponseHandler2, ExecutionContext executionContext) throws Throwable {
        Throwable th2;
        ExecutionContext executionContext2;
        Object obj;
        HttpResponse httpResponse;
        String str;
        Signer signer;
        String str2;
        Throwable th3;
        LinkedHashMap linkedHashMap;
        Log log;
        AmazonClientException amazonClientException;
        String str3;
        Log log2;
        HttpRequest httpRequestB;
        String str4;
        HttpResponse httpResponseA;
        Object obj2;
        String str5;
        String str6;
        AmazonClientException amazonClientException2;
        HttpResponse httpResponse2;
        boolean zB;
        AmazonServiceException amazonServiceExceptionH;
        AWSRequestMetrics aWSRequestMetricsA = executionContext.a();
        aWSRequestMetricsA.a(AWSRequestMetrics.Field.ServiceName, request.d());
        aWSRequestMetricsA.a(AWSRequestMetrics.Field.ServiceEndpoint, request.r());
        q(request);
        request.addHeader("aws-sdk-invocation-id", UUID.randomUUID().toString());
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(request.getParameters());
        HashMap map = new HashMap(request.getHeaders());
        InputStream content = request.getContent();
        if (content != null && content.markSupported()) {
            content.mark(-1);
        }
        AWSCredentials aWSCredentialsC = executionContext.c();
        int i11 = 0;
        long j11 = 0;
        AmazonClientException amazonClientException3 = null;
        Signer signerE = null;
        HttpResponse httpResponse3 = null;
        URI uriCreate = null;
        HttpRequest httpRequest = null;
        boolean z10 = false;
        while (true) {
            int i12 = i11 + 1;
            boolean z11 = z10;
            long jN = j11;
            aWSRequestMetricsA.f(AWSRequestMetrics.Field.RequestCount, i12);
            boolean zB2 = true;
            if (i12 > 1) {
                request.q(linkedHashMap2);
                request.i(map);
                request.a(content);
            }
            if (uriCreate != null && request.r() == null && request.p() == null) {
                request.s(URI.create(uriCreate.getScheme() + "://" + uriCreate.getAuthority()));
                request.c(uriCreate.getPath());
            }
            String str7 = "Cannot close the response content.";
            try {
                if (i12 > 1) {
                    try {
                        MetricType metricType = AWSRequestMetrics.Field.RetryPauseTime;
                        aWSRequestMetricsA.g(metricType);
                        try {
                            httpResponse = httpResponse3;
                            try {
                                jN = n(request.l(), amazonClientException3, i12, this.f18381b.d());
                                try {
                                    try {
                                        try {
                                            aWSRequestMetricsA.b(metricType);
                                            InputStream content2 = request.getContent();
                                            if (content2 != null && content2.markSupported()) {
                                                content2.reset();
                                            }
                                        } catch (IOException e11) {
                                            e = e11;
                                            str = "Cannot close the response content.";
                                            signer = signerE;
                                            linkedHashMap = linkedHashMap2;
                                            str2 = str;
                                            try {
                                                log = f18379f;
                                                if (log.b()) {
                                                    log.g("Unable to execute HTTP request: " + e.getMessage(), e);
                                                }
                                                MetricType metricType2 = AWSRequestMetrics.Field.Exception;
                                                aWSRequestMetricsA.d(metricType2);
                                                aWSRequestMetricsA.a(metricType2, e);
                                                aWSRequestMetricsA.a(AWSRequestMetrics.Field.AWSRequestID, null);
                                                amazonClientException = new AmazonClientException("Unable to execute HTTP request: " + e.getMessage(), e);
                                                if (!r(request.l(), httpRequest.a(), amazonClientException, i12, this.f18381b.d())) {
                                                    throw amazonClientException;
                                                }
                                                p(request, e);
                                                if (!z11 && httpResponse != null) {
                                                    try {
                                                        if (httpResponse.d() != null) {
                                                            httpResponse.d().close();
                                                        }
                                                    } catch (IOException e12) {
                                                        f18379f.i(str2, e12);
                                                    }
                                                }
                                                z10 = z11;
                                                j11 = jN;
                                                httpResponse3 = httpResponse;
                                                amazonClientException3 = amazonClientException;
                                                signerE = signer;
                                                i11 = i12;
                                                linkedHashMap2 = linkedHashMap;
                                            } catch (Throwable th4) {
                                                th3 = th4;
                                                th2 = th3;
                                                str3 = str2;
                                                zB2 = z11;
                                                httpResponse3 = httpResponse;
                                                executionContext2 = str3;
                                                if (zB2) {
                                                    throw th2;
                                                }
                                                throw th2;
                                            }
                                        }
                                    } catch (Throwable th5) {
                                        th2 = th5;
                                        str3 = "Cannot close the response content.";
                                        zB2 = z11;
                                        httpResponse3 = httpResponse;
                                        executionContext2 = str3;
                                    }
                                } catch (Error e13) {
                                    e = e13;
                                    throw ((Error) j(e, aWSRequestMetricsA));
                                } catch (RuntimeException e14) {
                                    e = e14;
                                    throw ((RuntimeException) j(e, aWSRequestMetricsA));
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                aWSRequestMetricsA.b(AWSRequestMetrics.Field.RetryPauseTime);
                                throw th;
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            httpResponse = httpResponse3;
                        }
                    } catch (IOException e15) {
                        e = e15;
                        httpResponse = httpResponse3;
                    } catch (Error e16) {
                        e = e16;
                    } catch (RuntimeException e17) {
                        e = e17;
                        throw ((RuntimeException) j(e, aWSRequestMetricsA));
                    } catch (Throwable th8) {
                        th2 = th8;
                        obj = "Cannot close the response content.";
                        zB2 = z11;
                        executionContext2 = obj;
                        if (zB2) {
                            throw th2;
                        }
                        throw th2;
                    }
                } else {
                    httpResponse = httpResponse3;
                }
                long j12 = jN;
                try {
                    try {
                        request.addHeader("aws-sdk-retry", i11 + "/" + j12);
                        if (signerE == null) {
                            try {
                                signerE = executionContext.e(request.r());
                            } catch (IOException e18) {
                                e = e18;
                                jN = j12;
                                str = "Cannot close the response content.";
                                signer = signerE;
                                linkedHashMap = linkedHashMap2;
                                str2 = str;
                                log = f18379f;
                                if (log.b()) {
                                    log.g("Unable to execute HTTP request: " + e.getMessage(), e);
                                }
                                MetricType metricType3 = AWSRequestMetrics.Field.Exception;
                                aWSRequestMetricsA.d(metricType3);
                                aWSRequestMetricsA.a(metricType3, e);
                                aWSRequestMetricsA.a(AWSRequestMetrics.Field.AWSRequestID, null);
                                amazonClientException = new AmazonClientException("Unable to execute HTTP request: " + e.getMessage(), e);
                                if (!r(request.l(), httpRequest.a(), amazonClientException, i12, this.f18381b.d())) {
                                    throw amazonClientException;
                                }
                                p(request, e);
                                if (!z11) {
                                    if (httpResponse.d() != null) {
                                        httpResponse.d().close();
                                    }
                                }
                                z10 = z11;
                                j11 = jN;
                                httpResponse3 = httpResponse;
                                amazonClientException3 = amazonClientException;
                                signerE = signer;
                                i11 = i12;
                                linkedHashMap2 = linkedHashMap;
                            }
                        }
                        signer = signerE;
                        if (signer != null && aWSCredentialsC != null) {
                            try {
                                MetricType metricType4 = AWSRequestMetrics.Field.RequestSigningTime;
                                aWSRequestMetricsA.g(metricType4);
                                try {
                                    signer.b(request, aWSCredentialsC);
                                    aWSRequestMetricsA.b(metricType4);
                                    log2 = f18378e;
                                    if (log2.b()) {
                                        log2.a("Sending Request: " + request.toString());
                                    }
                                    httpRequestB = this.f18383d.b(request, this.f18381b, executionContext);
                                    MetricType metricType5 = AWSRequestMetrics.Field.HttpRequestTime;
                                    aWSRequestMetricsA.g(metricType5);
                                    httpResponseA = this.f18380a.a(httpRequestB);
                                    aWSRequestMetricsA.b(metricType5);
                                    if (k(httpResponseA)) {
                                        jN = j12;
                                        aWSRequestMetricsA.a(AWSRequestMetrics.Field.StatusCode, Integer.valueOf(httpResponseA.e()));
                                        zB2 = httpResponseHandler.b();
                                        Response response = new Response(i(request, httpResponseHandler, httpResponseA, executionContext), httpResponseA);
                                        if (!zB2) {
                                            if (httpResponseA.d() != null) {
                                                httpResponseA.d().close();
                                            }
                                        }
                                        return response;
                                    }
                                    jN = j12;
                                    if (l(httpResponseA)) {
                                        String str8 = (String) httpResponseA.c().get(HttpHeaders.LOCATION);
                                        Log log3 = f18379f;
                                        StringBuilder sb2 = new StringBuilder();
                                        str5 = "Cannot close the response content.";
                                        sb2.append("Redirecting to: ");
                                        sb2.append(str8);
                                        log3.a(sb2.toString());
                                        uriCreate = URI.create(str8);
                                        request.s(null);
                                        request.c(null);
                                        aWSRequestMetricsA.a(AWSRequestMetrics.Field.StatusCode, Integer.valueOf(httpResponseA.e()));
                                        aWSRequestMetricsA.a(AWSRequestMetrics.Field.RedirectLocation, str8);
                                        aWSRequestMetricsA.a(AWSRequestMetrics.Field.AWSRequestID, null);
                                        httpRequestB = httpRequestB;
                                        signer = signer;
                                        z10 = z11;
                                        str6 = str5;
                                        amazonClientException2 = null;
                                        linkedHashMap = linkedHashMap2;
                                        httpResponse2 = httpResponseA;
                                    } else {
                                        zB = httpResponseHandler2.b();
                                        amazonServiceExceptionH = h(request, httpResponseHandler2, httpResponseA);
                                        aWSRequestMetricsA.a(AWSRequestMetrics.Field.AWSRequestID, amazonServiceExceptionH.getRequestId());
                                        aWSRequestMetricsA.a(AWSRequestMetrics.Field.AWSErrorCode, amazonServiceExceptionH.getErrorCode());
                                        aWSRequestMetricsA.a(AWSRequestMetrics.Field.StatusCode, Integer.valueOf(amazonServiceExceptionH.getStatusCode()));
                                        str4 = "Cannot close the response content.";
                                        linkedHashMap = linkedHashMap2;
                                        httpResponse2 = httpResponseA;
                                        httpRequestB = httpRequestB;
                                        signer = signer;
                                        if (r(request.l(), httpRequestB.a(), amazonServiceExceptionH, i12, this.f18381b.d())) {
                                            throw amazonServiceExceptionH;
                                        }
                                        if (RetryUtils.a(amazonServiceExceptionH)) {
                                            SDKGlobalConfiguration.b(m(httpResponse2, amazonServiceExceptionH));
                                        }
                                        p(request, amazonServiceExceptionH);
                                        amazonClientException2 = amazonServiceExceptionH;
                                        z10 = zB;
                                        str6 = str4;
                                    }
                                    if (!z10) {
                                        if (httpResponse2.d() != null) {
                                            httpResponse2.d().close();
                                        }
                                    }
                                    amazonClientException3 = amazonClientException2;
                                    httpResponse3 = httpResponse2;
                                    j11 = jN;
                                    httpRequest = httpRequestB;
                                    signerE = signer;
                                    i11 = i12;
                                    linkedHashMap2 = linkedHashMap;
                                } catch (Throwable th9) {
                                    aWSRequestMetricsA.b(AWSRequestMetrics.Field.RequestSigningTime);
                                    throw th9;
                                }
                            } catch (IOException e19) {
                                e = e19;
                                jN = j12;
                                signer = signer;
                                str = str7;
                                linkedHashMap = linkedHashMap2;
                                str2 = str;
                                log = f18379f;
                                if (log.b()) {
                                    log.g("Unable to execute HTTP request: " + e.getMessage(), e);
                                }
                                MetricType metricType6 = AWSRequestMetrics.Field.Exception;
                                aWSRequestMetricsA.d(metricType6);
                                aWSRequestMetricsA.a(metricType6, e);
                                aWSRequestMetricsA.a(AWSRequestMetrics.Field.AWSRequestID, null);
                                amazonClientException = new AmazonClientException("Unable to execute HTTP request: " + e.getMessage(), e);
                                if (!r(request.l(), httpRequest.a(), amazonClientException, i12, this.f18381b.d())) {
                                    throw amazonClientException;
                                }
                                p(request, e);
                                if (!z11) {
                                    if (httpResponse.d() != null) {
                                        httpResponse.d().close();
                                    }
                                }
                                z10 = z11;
                                j11 = jN;
                                httpResponse3 = httpResponse;
                                amazonClientException3 = amazonClientException;
                                signerE = signer;
                                i11 = i12;
                                linkedHashMap2 = linkedHashMap;
                            }
                            throw ((Error) j(e, aWSRequestMetricsA));
                        }
                        log2 = f18378e;
                        if (log2.b()) {
                            log2.a("Sending Request: " + request.toString());
                        }
                        httpRequestB = this.f18383d.b(request, this.f18381b, executionContext);
                        try {
                            MetricType metricType7 = AWSRequestMetrics.Field.HttpRequestTime;
                            aWSRequestMetricsA.g(metricType7);
                            try {
                                httpResponseA = this.f18380a.a(httpRequestB);
                                try {
                                    try {
                                        aWSRequestMetricsA.b(metricType7);
                                        if (k(httpResponseA)) {
                                            try {
                                                try {
                                                    jN = j12;
                                                    try {
                                                        aWSRequestMetricsA.a(AWSRequestMetrics.Field.StatusCode, Integer.valueOf(httpResponseA.e()));
                                                        zB2 = httpResponseHandler.b();
                                                        try {
                                                            Response response2 = new Response(i(request, httpResponseHandler, httpResponseA, executionContext), httpResponseA);
                                                            if (!zB2) {
                                                                try {
                                                                    if (httpResponseA.d() != null) {
                                                                        httpResponseA.d().close();
                                                                    }
                                                                } catch (IOException e20) {
                                                                    f18379f.i("Cannot close the response content.", e20);
                                                                }
                                                            }
                                                            return response2;
                                                        } catch (IOException e21) {
                                                            e = e21;
                                                            z11 = zB2;
                                                            httpResponse = httpResponseA;
                                                            httpRequest = httpRequestB;
                                                            signer = signer;
                                                            str = str7;
                                                            linkedHashMap = linkedHashMap2;
                                                            str2 = str;
                                                            log = f18379f;
                                                            if (log.b()) {
                                                                log.g("Unable to execute HTTP request: " + e.getMessage(), e);
                                                            }
                                                            MetricType metricType8 = AWSRequestMetrics.Field.Exception;
                                                            aWSRequestMetricsA.d(metricType8);
                                                            aWSRequestMetricsA.a(metricType8, e);
                                                            aWSRequestMetricsA.a(AWSRequestMetrics.Field.AWSRequestID, null);
                                                            amazonClientException = new AmazonClientException("Unable to execute HTTP request: " + e.getMessage(), e);
                                                            if (!r(request.l(), httpRequest.a(), amazonClientException, i12, this.f18381b.d())) {
                                                                throw amazonClientException;
                                                            }
                                                            p(request, e);
                                                            if (!z11) {
                                                                if (httpResponse.d() != null) {
                                                                    httpResponse.d().close();
                                                                }
                                                            }
                                                            z10 = z11;
                                                            j11 = jN;
                                                            httpResponse3 = httpResponse;
                                                            amazonClientException3 = amazonClientException;
                                                            signerE = signer;
                                                            i11 = i12;
                                                            linkedHashMap2 = linkedHashMap;
                                                        } catch (Error e22) {
                                                            e = e22;
                                                        } catch (RuntimeException e23) {
                                                            e = e23;
                                                            throw ((RuntimeException) j(e, aWSRequestMetricsA));
                                                        } catch (Throwable th10) {
                                                            th2 = th10;
                                                            executionContext2 = "Cannot close the response content.";
                                                            httpResponse3 = httpResponseA;
                                                        }
                                                    } catch (IOException e24) {
                                                        e = e24;
                                                    }
                                                } catch (IOException e25) {
                                                    e = e25;
                                                    jN = j12;
                                                }
                                            } catch (Error e26) {
                                                e = e26;
                                            } catch (RuntimeException e27) {
                                                e = e27;
                                                throw ((RuntimeException) j(e, aWSRequestMetricsA));
                                            } catch (Throwable th11) {
                                                th2 = th11;
                                                obj = "Cannot close the response content.";
                                                httpResponse3 = httpResponseA;
                                                zB2 = z11;
                                                executionContext2 = obj;
                                            }
                                        } else {
                                            jN = j12;
                                            try {
                                                if (l(httpResponseA)) {
                                                    try {
                                                        String str9 = (String) httpResponseA.c().get(HttpHeaders.LOCATION);
                                                        Log log4 = f18379f;
                                                        StringBuilder sb3 = new StringBuilder();
                                                        str5 = "Cannot close the response content.";
                                                        try {
                                                            sb3.append("Redirecting to: ");
                                                            sb3.append(str9);
                                                            log4.a(sb3.toString());
                                                            uriCreate = URI.create(str9);
                                                            request.s(null);
                                                            request.c(null);
                                                            aWSRequestMetricsA.a(AWSRequestMetrics.Field.StatusCode, Integer.valueOf(httpResponseA.e()));
                                                            aWSRequestMetricsA.a(AWSRequestMetrics.Field.RedirectLocation, str9);
                                                            aWSRequestMetricsA.a(AWSRequestMetrics.Field.AWSRequestID, null);
                                                            httpRequestB = httpRequestB;
                                                            signer = signer;
                                                            z10 = z11;
                                                            str6 = str5;
                                                            amazonClientException2 = null;
                                                            linkedHashMap = linkedHashMap2;
                                                            httpResponse2 = httpResponseA;
                                                        } catch (IOException e28) {
                                                            e = e28;
                                                            httpResponse = httpResponseA;
                                                            httpRequest = httpRequestB;
                                                            signer = signer;
                                                            str = str5;
                                                            linkedHashMap = linkedHashMap2;
                                                            str2 = str;
                                                            log = f18379f;
                                                            if (log.b()) {
                                                                log.g("Unable to execute HTTP request: " + e.getMessage(), e);
                                                            }
                                                            MetricType metricType9 = AWSRequestMetrics.Field.Exception;
                                                            aWSRequestMetricsA.d(metricType9);
                                                            aWSRequestMetricsA.a(metricType9, e);
                                                            aWSRequestMetricsA.a(AWSRequestMetrics.Field.AWSRequestID, null);
                                                            amazonClientException = new AmazonClientException("Unable to execute HTTP request: " + e.getMessage(), e);
                                                            if (!r(request.l(), httpRequest.a(), amazonClientException, i12, this.f18381b.d())) {
                                                                throw amazonClientException;
                                                            }
                                                            p(request, e);
                                                            if (!z11) {
                                                                if (httpResponse.d() != null) {
                                                                    httpResponse.d().close();
                                                                }
                                                            }
                                                            z10 = z11;
                                                            j11 = jN;
                                                            httpResponse3 = httpResponse;
                                                            amazonClientException3 = amazonClientException;
                                                            signerE = signer;
                                                        } catch (Error e29) {
                                                            e = e29;
                                                            throw ((Error) j(e, aWSRequestMetricsA));
                                                        } catch (RuntimeException e30) {
                                                            e = e30;
                                                            throw ((RuntimeException) j(e, aWSRequestMetricsA));
                                                        } catch (Throwable th12) {
                                                            th = th12;
                                                            th2 = th;
                                                            httpResponse3 = httpResponseA;
                                                            zB2 = z11;
                                                            executionContext2 = str5;
                                                            if (zB2) {
                                                                throw th2;
                                                            }
                                                            throw th2;
                                                        }
                                                    } catch (IOException e31) {
                                                        e = e31;
                                                        str5 = "Cannot close the response content.";
                                                    } catch (Error e32) {
                                                        e = e32;
                                                        str5 = "Cannot close the response content.";
                                                    } catch (RuntimeException e33) {
                                                        e = e33;
                                                        str5 = "Cannot close the response content.";
                                                    } catch (Throwable th13) {
                                                        th = th13;
                                                        str5 = "Cannot close the response content.";
                                                    }
                                                } else {
                                                    try {
                                                        zB = httpResponseHandler2.b();
                                                        try {
                                                            amazonServiceExceptionH = h(request, httpResponseHandler2, httpResponseA);
                                                            aWSRequestMetricsA.a(AWSRequestMetrics.Field.AWSRequestID, amazonServiceExceptionH.getRequestId());
                                                            aWSRequestMetricsA.a(AWSRequestMetrics.Field.AWSErrorCode, amazonServiceExceptionH.getErrorCode());
                                                            aWSRequestMetricsA.a(AWSRequestMetrics.Field.StatusCode, Integer.valueOf(amazonServiceExceptionH.getStatusCode()));
                                                            str4 = "Cannot close the response content.";
                                                            linkedHashMap = linkedHashMap2;
                                                            httpResponse2 = httpResponseA;
                                                            httpRequestB = httpRequestB;
                                                            signer = signer;
                                                            try {
                                                                if (r(request.l(), httpRequestB.a(), amazonServiceExceptionH, i12, this.f18381b.d())) {
                                                                    throw amazonServiceExceptionH;
                                                                }
                                                                if (RetryUtils.a(amazonServiceExceptionH)) {
                                                                    SDKGlobalConfiguration.b(m(httpResponse2, amazonServiceExceptionH));
                                                                }
                                                                p(request, amazonServiceExceptionH);
                                                                amazonClientException2 = amazonServiceExceptionH;
                                                                z10 = zB;
                                                                str6 = str4;
                                                            } catch (IOException e34) {
                                                                e = e34;
                                                                httpResponse = httpResponse2;
                                                                z11 = zB;
                                                                httpRequest = httpRequestB;
                                                                str2 = str4;
                                                                log = f18379f;
                                                                if (log.b()) {
                                                                    log.g("Unable to execute HTTP request: " + e.getMessage(), e);
                                                                }
                                                                MetricType metricType10 = AWSRequestMetrics.Field.Exception;
                                                                aWSRequestMetricsA.d(metricType10);
                                                                aWSRequestMetricsA.a(metricType10, e);
                                                                aWSRequestMetricsA.a(AWSRequestMetrics.Field.AWSRequestID, null);
                                                                amazonClientException = new AmazonClientException("Unable to execute HTTP request: " + e.getMessage(), e);
                                                                if (!r(request.l(), httpRequest.a(), amazonClientException, i12, this.f18381b.d())) {
                                                                    throw amazonClientException;
                                                                }
                                                                p(request, e);
                                                                if (!z11) {
                                                                    if (httpResponse.d() != null) {
                                                                        httpResponse.d().close();
                                                                    }
                                                                }
                                                                z10 = z11;
                                                                j11 = jN;
                                                                httpResponse3 = httpResponse;
                                                                amazonClientException3 = amazonClientException;
                                                                signerE = signer;
                                                            } catch (Error e35) {
                                                                e = e35;
                                                                throw ((Error) j(e, aWSRequestMetricsA));
                                                            } catch (RuntimeException e36) {
                                                                e = e36;
                                                                throw ((RuntimeException) j(e, aWSRequestMetricsA));
                                                            } catch (Throwable th14) {
                                                                th = th14;
                                                                th2 = th;
                                                                httpResponse3 = httpResponse2;
                                                                zB2 = zB;
                                                                executionContext2 = str4;
                                                                if (zB2) {
                                                                    throw th2;
                                                                }
                                                                throw th2;
                                                            }
                                                        } catch (IOException e37) {
                                                            e = e37;
                                                            httpRequestB = httpRequestB;
                                                            signer = signer;
                                                            str4 = "Cannot close the response content.";
                                                            linkedHashMap = linkedHashMap2;
                                                            httpResponse2 = httpResponseA;
                                                        } catch (Error e38) {
                                                            e = e38;
                                                            httpResponse2 = httpResponseA;
                                                        } catch (RuntimeException e39) {
                                                            e = e39;
                                                            httpResponse2 = httpResponseA;
                                                        } catch (Throwable th15) {
                                                            th = th15;
                                                            httpResponse2 = httpResponseA;
                                                            str4 = "Cannot close the response content.";
                                                        }
                                                    } catch (IOException e40) {
                                                        e = e40;
                                                        str4 = "Cannot close the response content.";
                                                        linkedHashMap = linkedHashMap2;
                                                        httpResponse = httpResponseA;
                                                        httpRequest = httpRequestB;
                                                        str2 = str4;
                                                        log = f18379f;
                                                        if (log.b()) {
                                                            log.g("Unable to execute HTTP request: " + e.getMessage(), e);
                                                        }
                                                        MetricType metricType11 = AWSRequestMetrics.Field.Exception;
                                                        aWSRequestMetricsA.d(metricType11);
                                                        aWSRequestMetricsA.a(metricType11, e);
                                                        aWSRequestMetricsA.a(AWSRequestMetrics.Field.AWSRequestID, null);
                                                        amazonClientException = new AmazonClientException("Unable to execute HTTP request: " + e.getMessage(), e);
                                                        if (!r(request.l(), httpRequest.a(), amazonClientException, i12, this.f18381b.d())) {
                                                            throw amazonClientException;
                                                        }
                                                        p(request, e);
                                                        if (!z11) {
                                                            if (httpResponse.d() != null) {
                                                                httpResponse.d().close();
                                                            }
                                                        }
                                                        z10 = z11;
                                                        j11 = jN;
                                                        httpResponse3 = httpResponse;
                                                        amazonClientException3 = amazonClientException;
                                                        signerE = signer;
                                                        i11 = i12;
                                                        linkedHashMap2 = linkedHashMap;
                                                    } catch (Error e41) {
                                                        e = e41;
                                                    } catch (RuntimeException e42) {
                                                        e = e42;
                                                        throw ((RuntimeException) j(e, aWSRequestMetricsA));
                                                    } catch (Throwable th16) {
                                                        th = th16;
                                                        obj2 = "Cannot close the response content.";
                                                        th2 = th;
                                                        httpResponse3 = httpResponseA;
                                                        obj = obj2;
                                                        zB2 = z11;
                                                        executionContext2 = obj;
                                                    }
                                                }
                                                if (!z10 && httpResponse2 != null) {
                                                    try {
                                                        if (httpResponse2.d() != null) {
                                                            httpResponse2.d().close();
                                                        }
                                                    } catch (IOException e43) {
                                                        f18379f.i(str6, e43);
                                                    }
                                                }
                                                amazonClientException3 = amazonClientException2;
                                                httpResponse3 = httpResponse2;
                                                j11 = jN;
                                                httpRequest = httpRequestB;
                                                signerE = signer;
                                            } catch (IOException e44) {
                                                e = e44;
                                                str4 = "Cannot close the response content.";
                                                linkedHashMap = linkedHashMap2;
                                                httpResponse = httpResponseA;
                                                httpRequest = httpRequestB;
                                                str2 = str4;
                                                log = f18379f;
                                                if (log.b()) {
                                                    log.g("Unable to execute HTTP request: " + e.getMessage(), e);
                                                }
                                                MetricType metricType12 = AWSRequestMetrics.Field.Exception;
                                                aWSRequestMetricsA.d(metricType12);
                                                aWSRequestMetricsA.a(metricType12, e);
                                                aWSRequestMetricsA.a(AWSRequestMetrics.Field.AWSRequestID, null);
                                                amazonClientException = new AmazonClientException("Unable to execute HTTP request: " + e.getMessage(), e);
                                                if (!r(request.l(), httpRequest.a(), amazonClientException, i12, this.f18381b.d())) {
                                                    throw amazonClientException;
                                                }
                                                p(request, e);
                                                if (!z11) {
                                                    if (httpResponse.d() != null) {
                                                        httpResponse.d().close();
                                                    }
                                                }
                                                z10 = z11;
                                                j11 = jN;
                                                httpResponse3 = httpResponse;
                                                amazonClientException3 = amazonClientException;
                                                signerE = signer;
                                                i11 = i12;
                                                linkedHashMap2 = linkedHashMap;
                                            }
                                            i11 = i12;
                                            linkedHashMap2 = linkedHashMap;
                                        }
                                    } catch (IOException e45) {
                                        e = e45;
                                        jN = j12;
                                    }
                                } catch (Error e46) {
                                    e = e46;
                                } catch (RuntimeException e47) {
                                    e = e47;
                                } catch (Throwable th17) {
                                    th = th17;
                                    obj2 = "Cannot close the response content.";
                                }
                            } catch (Throwable th18) {
                                jN = j12;
                                str4 = "Cannot close the response content.";
                                httpRequestB = httpRequestB;
                                signer = signer;
                                linkedHashMap = linkedHashMap2;
                                try {
                                    aWSRequestMetricsA.b(AWSRequestMetrics.Field.HttpRequestTime);
                                    throw th18;
                                } catch (IOException e48) {
                                    e = e48;
                                    httpRequest = httpRequestB;
                                    str2 = str4;
                                    log = f18379f;
                                    if (log.b()) {
                                        log.g("Unable to execute HTTP request: " + e.getMessage(), e);
                                    }
                                    MetricType metricType13 = AWSRequestMetrics.Field.Exception;
                                    aWSRequestMetricsA.d(metricType13);
                                    aWSRequestMetricsA.a(metricType13, e);
                                    aWSRequestMetricsA.a(AWSRequestMetrics.Field.AWSRequestID, null);
                                    amazonClientException = new AmazonClientException("Unable to execute HTTP request: " + e.getMessage(), e);
                                    if (!r(request.l(), httpRequest.a(), amazonClientException, i12, this.f18381b.d())) {
                                        throw amazonClientException;
                                    }
                                    p(request, e);
                                    if (!z11) {
                                        if (httpResponse.d() != null) {
                                            httpResponse.d().close();
                                        }
                                    }
                                    z10 = z11;
                                    j11 = jN;
                                    httpResponse3 = httpResponse;
                                    amazonClientException3 = amazonClientException;
                                    signerE = signer;
                                    i11 = i12;
                                    linkedHashMap2 = linkedHashMap;
                                } catch (Error e49) {
                                    e = e49;
                                    throw ((Error) j(e, aWSRequestMetricsA));
                                } catch (RuntimeException e50) {
                                    e = e50;
                                    throw ((RuntimeException) j(e, aWSRequestMetricsA));
                                }
                            }
                        } catch (IOException e51) {
                            e = e51;
                            jN = j12;
                            str4 = "Cannot close the response content.";
                            httpRequestB = httpRequestB;
                            signer = signer;
                            linkedHashMap = linkedHashMap2;
                        }
                        throw ((Error) j(e, aWSRequestMetricsA));
                    } catch (Throwable th19) {
                        th3 = th19;
                        str2 = "Cannot close the response content.";
                        th2 = th3;
                        str3 = str2;
                        zB2 = z11;
                        httpResponse3 = httpResponse;
                        executionContext2 = str3;
                    }
                } catch (IOException e52) {
                    e = e52;
                    jN = j12;
                    str2 = "Cannot close the response content.";
                    linkedHashMap = linkedHashMap2;
                    signer = signerE;
                }
            } catch (Throwable th20) {
                th2 = th20;
                executionContext2 = executionContext;
            }
            if (zB2 || httpResponse3 == null) {
                throw th2;
            }
            try {
                if (httpResponse3.d() == null) {
                    throw th2;
                }
                httpResponse3.d().close();
                throw th2;
            } catch (IOException e53) {
                f18379f.i(executionContext2, e53);
                throw th2;
            }
        }
    }

    public RequestMetricCollector f() {
        return this.f18382c;
    }

    protected void finalize() throws Throwable {
        s();
        super.finalize();
    }

    AmazonServiceException h(Request request, HttpResponseHandler httpResponseHandler, HttpResponse httpResponse) throws IOException {
        AmazonServiceException amazonServiceException;
        int iE = httpResponse.e();
        try {
            amazonServiceException = (AmazonServiceException) httpResponseHandler.a(httpResponse);
            f18378e.a("Received error response: " + amazonServiceException.toString());
        } catch (Exception e11) {
            if (iE == 413) {
                amazonServiceException = new AmazonServiceException("Request entity too large");
                amazonServiceException.setServiceName(request.d());
                amazonServiceException.setStatusCode(TTAdConstant.VIDEO_INFO_CODE);
                amazonServiceException.setErrorType(AmazonServiceException.ErrorType.Client);
                amazonServiceException.setErrorCode("Request entity too large");
            } else {
                if (iE != 503 || !"Service Unavailable".equalsIgnoreCase(httpResponse.f())) {
                    if (e11 instanceof IOException) {
                        throw ((IOException) e11);
                    }
                    throw new AmazonClientException("Unable to unmarshall error response (" + e11.getMessage() + "). Response Code: " + iE + ", Response Text: " + httpResponse.f() + ", Response Headers: " + httpResponse.c(), e11);
                }
                amazonServiceException = new AmazonServiceException("Service unavailable");
                amazonServiceException.setServiceName(request.d());
                amazonServiceException.setStatusCode(503);
                amazonServiceException.setErrorType(AmazonServiceException.ErrorType.Service);
                amazonServiceException.setErrorCode("Service unavailable");
            }
        }
        amazonServiceException.setStatusCode(iE);
        amazonServiceException.setServiceName(request.d());
        amazonServiceException.fillInStackTrace();
        return amazonServiceException;
    }

    Object i(Request request, HttpResponseHandler httpResponseHandler, HttpResponse httpResponse, ExecutionContext executionContext) throws IOException {
        try {
            AWSRequestMetrics aWSRequestMetricsA = executionContext.a();
            AWSRequestMetrics.Field field = AWSRequestMetrics.Field.ResponseProcessingTime;
            aWSRequestMetricsA.g(field);
            try {
                AmazonWebServiceResponse amazonWebServiceResponse = (AmazonWebServiceResponse) httpResponseHandler.a(httpResponse);
                aWSRequestMetricsA.b(field);
                if (amazonWebServiceResponse == null) {
                    throw new RuntimeException("Unable to unmarshall response metadata. Response Code: " + httpResponse.e() + ", Response Text: " + httpResponse.f());
                }
                Log log = f18378e;
                if (log.b()) {
                    log.a("Received successful response: " + httpResponse.e() + ", AWS Request ID: " + amazonWebServiceResponse.a());
                }
                aWSRequestMetricsA.a(AWSRequestMetrics.Field.AWSRequestID, amazonWebServiceResponse.a());
                return amazonWebServiceResponse.b();
            } catch (Throwable th2) {
                aWSRequestMetricsA.b(AWSRequestMetrics.Field.ResponseProcessingTime);
                throw th2;
            }
        } catch (CRC32MismatchException e11) {
            throw e11;
        } catch (IOException e12) {
            throw e12;
        } catch (Exception e13) {
            throw new AmazonClientException("Unable to unmarshall response (" + e13.getMessage() + "). Response Code: " + httpResponse.e() + ", Response Text: " + httpResponse.f(), e13);
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0025 A[Catch: RuntimeException -> 0x0022, TRY_ENTER, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x0022, blocks: (B:4:0x0014, B:13:0x0025), top: B:19:0x0014 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v13, types: [int] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.String] */
    int m(HttpResponse httpResponse, AmazonServiceException amazonServiceException) {
        Date dateG;
        Date date = new Date();
        String time = (String) httpResponse.c().get(HttpHeaders.DATE);
        try {
            if (time != 0) {
                try {
                    dateG = time.isEmpty() ? DateUtils.g(g(amazonServiceException.getMessage())) : DateUtils.i(time);
                } catch (RuntimeException e11) {
                    e = e11;
                    time = 0;
                    f18379f.i("Unable to parse clock skew offset from response: " + time, e);
                    return 0;
                }
            }
            time = (int) ((date.getTime() - dateG.getTime()) / 1000);
            return time;
        } catch (RuntimeException e12) {
            e = e12;
        }
    }

    List o(Request request, ExecutionContext executionContext) {
        List<RequestHandler2> listD = executionContext.d();
        if (listD == null) {
            return Collections.emptyList();
        }
        for (RequestHandler2 requestHandler2 : listD) {
            if (requestHandler2 instanceof CredentialsRequestHandler) {
                ((CredentialsRequestHandler) requestHandler2).e(executionContext.c());
            }
            requestHandler2.d(request);
        }
        return listD;
    }

    void p(Request request, Exception exc) {
        if (request.getContent() == null) {
            return;
        }
        if (!request.getContent().markSupported()) {
            throw new AmazonClientException("Encountered an exception and stream is not resettable", exc);
        }
        try {
            request.getContent().reset();
        } catch (IOException unused) {
            throw new AmazonClientException("Encountered an exception and couldn't reset the stream to retry", exc);
        }
    }

    void q(Request request) {
        RequestClientOptions requestClientOptions;
        String strC;
        String str = ClientConfiguration.f18282u;
        AmazonWebServiceRequest amazonWebServiceRequestL = request.l();
        String strC2 = (amazonWebServiceRequestL == null || (requestClientOptions = amazonWebServiceRequestL.getRequestClientOptions()) == null || (strC = requestClientOptions.c(RequestClientOptions.Marker.USER_AGENT)) == null) ? str : c(str, strC);
        if (!str.equals(this.f18381b.h())) {
            strC2 = c(strC2, this.f18381b.h());
        }
        if (this.f18381b.i() != null) {
            strC2 = this.f18381b.i();
        }
        request.addHeader("User-Agent", strC2);
    }

    public void s() {
        this.f18380a.shutdown();
    }
}
