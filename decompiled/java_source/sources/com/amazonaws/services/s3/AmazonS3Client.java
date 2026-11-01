package com.amazonaws.services.s3;

import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.amazonaws.AbortedException;
import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.ClientConfiguration;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.Response;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.auth.Signer;
import com.amazonaws.auth.SignerFactory;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListenerCallbackExecutor;
import com.amazonaws.event.ProgressReportingInputStream;
import com.amazonaws.handlers.HandlerChainFactory;
import com.amazonaws.http.ExecutionContext;
import com.amazonaws.http.HttpClient;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.http.UrlHttpClient;
import com.amazonaws.internal.StaticCredentialsProvider;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.regions.Region;
import com.amazonaws.regions.RegionUtils;
import com.amazonaws.retry.PredefinedRetryPolicies;
import com.amazonaws.retry.RetryPolicy;
import com.amazonaws.services.s3.internal.AWSS3V4Signer;
import com.amazonaws.services.s3.internal.BucketNameUtils;
import com.amazonaws.services.s3.internal.CompleteMultipartUploadRetryCondition;
import com.amazonaws.services.s3.internal.DigestValidationInputStream;
import com.amazonaws.services.s3.internal.InputSubstream;
import com.amazonaws.services.s3.internal.MD5DigestCalculatingInputStream;
import com.amazonaws.services.s3.internal.ObjectExpirationHeaderHandler;
import com.amazonaws.services.s3.internal.RepeatableFileInputStream;
import com.amazonaws.services.s3.internal.ResponseHeaderHandlerChain;
import com.amazonaws.services.s3.internal.S3ErrorResponseHandler;
import com.amazonaws.services.s3.internal.S3ExecutionContext;
import com.amazonaws.services.s3.internal.S3HttpUtils;
import com.amazonaws.services.s3.internal.S3MetadataResponseHandler;
import com.amazonaws.services.s3.internal.S3ObjectResponseHandler;
import com.amazonaws.services.s3.internal.S3RequesterChargedHeaderHandler;
import com.amazonaws.services.s3.internal.S3Signer;
import com.amazonaws.services.s3.internal.S3VersionHeaderHandler;
import com.amazonaws.services.s3.internal.S3XmlResponseHandler;
import com.amazonaws.services.s3.internal.ServerSideEncryptionHeaderHandler;
import com.amazonaws.services.s3.internal.ServiceUtils;
import com.amazonaws.services.s3.metrics.S3ServiceMetric;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.AccessControlList;
import com.amazonaws.services.s3.model.AmazonS3Exception;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.GeneratePresignedUrlRequest;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.Grant;
import com.amazonaws.services.s3.model.Grantee;
import com.amazonaws.services.s3.model.HeadBucketRequest;
import com.amazonaws.services.s3.model.HeadBucketResult;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.ObjectTagging;
import com.amazonaws.services.s3.model.Permission;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.PutObjectResult;
import com.amazonaws.services.s3.model.ResponseHeaderOverrides;
import com.amazonaws.services.s3.model.S3AccelerateUnsupported;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectInputStream;
import com.amazonaws.services.s3.model.SSEAwsKeyManagementParams;
import com.amazonaws.services.s3.model.SSECustomerKey;
import com.amazonaws.services.s3.model.Tag;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
import com.amazonaws.services.s3.model.transform.BucketConfigurationXmlFactory;
import com.amazonaws.services.s3.model.transform.HeadBucketResultHandler;
import com.amazonaws.services.s3.model.transform.RequestPaymentConfigurationXmlFactory;
import com.amazonaws.services.s3.model.transform.RequestXmlFactory;
import com.amazonaws.services.s3.model.transform.XmlResponsesSaxParser;
import com.amazonaws.services.s3.util.Mimetypes;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.Base64;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.LengthCheckInputStream;
import com.amazonaws.util.Md5Utils;
import com.amazonaws.util.RuntimeHttpUtils;
import com.amazonaws.util.ServiceClientHolderInputStream;
import com.amazonaws.util.ValidationUtils;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.net.URISyntaxException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class AmazonS3Client extends AmazonWebServiceClient implements AmazonS3 {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static Log f18583s = LogFactory.b(AmazonS3Client.class);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final BucketConfigurationXmlFactory f18584t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final RequestPaymentConfigurationXmlFactory f18585u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final Map f18586v;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final S3ErrorResponseHandler f18587l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final S3XmlResponseHandler f18588m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected S3ClientOptions f18589n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final AWSCredentialsProvider f18590o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    volatile String f18591p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f18592q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final CompleteMultipartUploadRetryCondition f18593r;

    static {
        AwsSdkMetrics.addAll(Arrays.asList(S3ServiceMetric.b()));
        SignerFactory.e("AWSS3V4SignerType", AWSS3V4Signer.class);
        f18584t = new BucketConfigurationXmlFactory();
        f18585u = new RequestPaymentConfigurationXmlFactory();
        f18586v = Collections.synchronizedMap(new LinkedHashMap<String, String>(300, 1.1f, true) { // from class: com.amazonaws.services.s3.AmazonS3Client.1
            private static final long serialVersionUID = 23453;

            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<String, String> entry) {
                return size() > 300;
            }
        });
    }

    @Deprecated
    public AmazonS3Client() {
        this(new DefaultAWSCredentialsProviderChain());
    }

    public AmazonS3Client(AWSCredentials aWSCredentials, Region region) {
        this(aWSCredentials, region, new ClientConfiguration());
    }

    public AmazonS3Client(AWSCredentials aWSCredentials, Region region, ClientConfiguration clientConfiguration) {
        this(aWSCredentials, region, clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    public AmazonS3Client(AWSCredentials aWSCredentials, Region region, ClientConfiguration clientConfiguration, HttpClient httpClient) {
        this(new StaticCredentialsProvider(aWSCredentials), region, clientConfiguration, httpClient);
    }

    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider) {
        this(aWSCredentialsProvider, new ClientConfiguration());
    }

    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration) {
        this(aWSCredentialsProvider, clientConfiguration, new UrlHttpClient(clientConfiguration));
    }

    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, ClientConfiguration clientConfiguration, HttpClient httpClient) {
        super(clientConfiguration, httpClient);
        this.f18587l = new S3ErrorResponseHandler();
        this.f18588m = new S3XmlResponseHandler(null);
        this.f18589n = new S3ClientOptions();
        this.f18592q = 1024;
        this.f18593r = new CompleteMultipartUploadRetryCondition();
        this.f18590o = aWSCredentialsProvider;
        Q();
    }

    public AmazonS3Client(AWSCredentialsProvider aWSCredentialsProvider, Region region, ClientConfiguration clientConfiguration, HttpClient httpClient) {
        super(clientConfiguration, httpClient);
        this.f18587l = new S3ErrorResponseHandler();
        this.f18588m = new S3XmlResponseHandler(null);
        this.f18589n = new S3ClientOptions();
        this.f18592q = 1024;
        this.f18593r = new CompleteMultipartUploadRetryCondition();
        this.f18590o = aWSCredentialsProvider;
        R(region, clientConfiguration);
    }

    private static void A(Request request, String str, String str2) {
        if (str2 != null) {
            request.addHeader(str, str2);
        }
    }

    private static void B(Request request, ResponseHeaderOverrides responseHeaderOverrides) {
        if (responseHeaderOverrides != null) {
            if (responseHeaderOverrides.b() != null) {
                request.g(RequestParameters.RESPONSE_HEADER_CACHE_CONTROL, responseHeaderOverrides.b());
            }
            if (responseHeaderOverrides.c() != null) {
                request.g(RequestParameters.RESPONSE_HEADER_CONTENT_DISPOSITION, responseHeaderOverrides.c());
            }
            if (responseHeaderOverrides.e() != null) {
                request.g(RequestParameters.RESPONSE_HEADER_CONTENT_ENCODING, responseHeaderOverrides.e());
            }
            if (responseHeaderOverrides.f() != null) {
                request.g(RequestParameters.RESPONSE_HEADER_CONTENT_LANGUAGE, responseHeaderOverrides.f());
            }
            if (responseHeaderOverrides.getContentType() != null) {
                request.g(RequestParameters.RESPONSE_HEADER_CONTENT_TYPE, responseHeaderOverrides.getContentType());
            }
            if (responseHeaderOverrides.g() != null) {
                request.g(RequestParameters.RESPONSE_HEADER_EXPIRES, responseHeaderOverrides.g());
            }
        }
    }

    private static void C(Request request, String str, List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        request.addHeader(str, ServiceUtils.c(list));
    }

    private long D(InputStream inputStream) {
        byte[] bArr = new byte[8192];
        inputStream.mark(-1);
        long j11 = 0;
        while (true) {
            try {
                int i11 = inputStream.read(bArr);
                if (i11 == -1) {
                    inputStream.reset();
                    return j11;
                }
                j11 += (long) i11;
            } catch (IOException e11) {
                throw new AmazonClientException("Could not calculate content length.", e11);
            }
        }
    }

    private URI E(URI uri, String str) {
        try {
            return new URI(uri.getScheme() + "://" + str + "." + uri.getAuthority());
        } catch (URISyntaxException e11) {
            throw new IllegalArgumentException("Invalid bucket name: " + str, e11);
        }
    }

    private S3Signer I(Request request, String str, String str2) {
        String str3;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("/");
        if (str != null) {
            str3 = str + "/";
        } else {
            str3 = "";
        }
        sb2.append(str3);
        if (str2 == null) {
            str2 = "";
        }
        sb2.append(str2);
        return new S3Signer(request.m().toString(), sb2.toString());
    }

    private String K(String str) {
        Map map = f18586v;
        String strM = (String) map.get(str);
        if (strM == null) {
            if (f18583s.b()) {
                f18583s.a("Bucket region cache doesn't have an entry for " + str + ". Trying to get bucket region from Amazon S3.");
            }
            strM = M(str);
            if (strM != null) {
                map.put(str, strM);
            }
        }
        if (f18583s.b()) {
            f18583s.a("Region for " + str + " is " + strM);
        }
        return strM;
    }

    private void L(ProgressListenerCallbackExecutor progressListenerCallbackExecutor, int i11) {
        if (progressListenerCallbackExecutor == null) {
            return;
        }
        ProgressEvent progressEvent = new ProgressEvent(0L);
        progressEvent.c(i11);
        progressListenerCallbackExecutor.c(progressEvent);
    }

    private String M(String str) {
        String strA = null;
        try {
            strA = ((HeadBucketResult) S(H(str, null, new HeadBucketRequest(str), HttpMethodName.HEAD, new URI("https://s3-us-west-1.amazonaws.com")), new HeadBucketResultHandler(), str, null)).a();
        } catch (AmazonS3Exception e11) {
            if (e11.getAdditionalDetails() != null) {
                strA = e11.getAdditionalDetails().get("x-amz-bucket-region");
            }
        } catch (URISyntaxException unused) {
            f18583s.j("Error while creating URI");
        }
        if (strA == null && f18583s.b()) {
            f18583s.a("Not able to derive region of the " + str + " from the HEAD Bucket requests.");
        }
        return strA;
    }

    private String N(String str) {
        if (str == null || !str.startsWith("/")) {
            return str;
        }
        return "/" + str;
    }

    private String O(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append("/");
        if (str2 == null) {
            str2 = "";
        }
        sb2.append(str2);
        return sb2.toString();
    }

    private String P() {
        String strQ = q();
        return strQ == null ? this.f18591p : strQ;
    }

    private void Q() {
        v("s3.amazonaws.com");
        this.f18278i = "s3";
        HandlerChainFactory handlerChainFactory = new HandlerChainFactory();
        this.f18274e.addAll(handlerChainFactory.c("/com/amazonaws/services/s3/request.handlers"));
        this.f18274e.addAll(handlerChainFactory.b("/com/amazonaws/services/s3/request.handler2s"));
    }

    private void R(Region region, ClientConfiguration clientConfiguration) {
        if (this.f18590o == null) {
            throw new IllegalArgumentException("Credentials cannot be null. Credentials is required to sign the request");
        }
        if (region == null) {
            throw new IllegalArgumentException("Region cannot be null. Region is required to sign the request");
        }
        this.f18272c = clientConfiguration;
        this.f18278i = "s3";
        v("s3.amazonaws.com");
        w(region);
        HandlerChainFactory handlerChainFactory = new HandlerChainFactory();
        this.f18274e.addAll(handlerChainFactory.c("/com/amazonaws/services/s3/request.handlers"));
        this.f18274e.addAll(handlerChainFactory.b("/com/amazonaws/services/s3/request.handler2s"));
        f18583s.a("initialized with endpoint = " + this.f18270a);
    }

    private Object S(Request request, HttpResponseHandler httpResponseHandler, String str, String str2) {
        AmazonWebServiceRequest amazonWebServiceRequestL = request.l();
        ExecutionContext executionContextF = F(amazonWebServiceRequestL);
        AWSRequestMetrics aWSRequestMetricsA = executionContextF.a();
        request.h(aWSRequestMetricsA);
        aWSRequestMetricsA.g(AWSRequestMetrics.Field.ClientExecuteTime);
        Response responseD = null;
        try {
            try {
                request.e(this.f18275f);
                if (!request.getHeaders().containsKey(HttpHeaders.CONTENT_TYPE)) {
                    request.addHeader(HttpHeaders.CONTENT_TYPE, OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
                }
                if (str != null) {
                    request.l();
                    if (W(request)) {
                        K(str);
                    }
                }
                AWSCredentials aWSCredentialsA = this.f18590o.a();
                if (amazonWebServiceRequestL.getRequestCredentials() != null) {
                    aWSCredentialsA = amazonWebServiceRequestL.getRequestCredentials();
                }
                executionContextF.g(J(request, str, str2));
                executionContextF.f(aWSCredentialsA);
                responseD = this.f18273d.d(request, httpResponseHandler, this.f18587l, executionContextF);
                Object objA = responseD.a();
                j(aWSRequestMetricsA, request, responseD);
                return objA;
            } catch (AmazonS3Exception e11) {
                if (e11.getStatusCode() == 301 && e11.getAdditionalDetails() != null) {
                    String str3 = e11.getAdditionalDetails().get("x-amz-bucket-region");
                    f18586v.put(str, str3);
                    e11.setErrorMessage("The bucket is in this region: " + str3 + ". Please use this region to retry the request");
                }
                throw e11;
            }
        } catch (Throwable th2) {
            j(aWSRequestMetricsA, request, responseD);
            throw th2;
        }
    }

    private boolean T() {
        ClientConfiguration clientConfiguration = this.f18272c;
        return (clientConfiguration == null || clientConfiguration.e() == null) ? false : true;
    }

    private boolean U(URI uri) {
        return uri.getHost().endsWith("s3.amazonaws.com");
    }

    static boolean V(String str) {
        if (str == null) {
            return false;
        }
        String[] strArrSplit = str.split("\\.");
        if (strArrSplit.length != 4) {
            return false;
        }
        for (String str2 : strArrSplit) {
            try {
                int i11 = Integer.parseInt(str2);
                if (i11 < 0 || i11 > 255) {
                    return false;
                }
            } catch (NumberFormatException unused) {
            }
        }
        return true;
    }

    private boolean W(Request request) {
        return U(request.r()) && P() == null;
    }

    protected static void X(Request request, ObjectMetadata objectMetadata) {
        Map<String, Object> rawMetadata = objectMetadata.getRawMetadata();
        if (rawMetadata.get("x-amz-server-side-encryption-aws-kms-key-id") != null && !ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION.equals(rawMetadata.get("x-amz-server-side-encryption"))) {
            throw new IllegalArgumentException("If you specify a KMS key id for server side encryption, you must also set the SSEAlgorithm to ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION");
        }
        for (Map.Entry<String, Object> entry : rawMetadata.entrySet()) {
            request.addHeader(entry.getKey(), entry.getValue().toString());
        }
        Date httpExpiresDate = objectMetadata.getHttpExpiresDate();
        if (httpExpiresDate != null) {
            request.addHeader(HttpHeaders.EXPIRES, DateUtils.d(httpExpiresDate));
        }
        Map<String, String> userMetadata = objectMetadata.getUserMetadata();
        if (userMetadata != null) {
            for (Map.Entry<String, String> entry2 : userMetadata.entrySet()) {
                String key = entry2.getKey();
                String value = entry2.getValue();
                if (key != null) {
                    key = key.trim();
                }
                if (value != null) {
                    value = value.trim();
                }
                if (!"x-amz-tagging".equals(key)) {
                    request.addHeader("x-amz-meta-" + key, value);
                }
            }
        }
    }

    protected static void Y(Request request, boolean z10) {
        if (z10) {
            request.addHeader("x-amz-request-payer", "requester");
        }
    }

    private static void Z(Request request, SSECustomerKey sSECustomerKey) {
        if (sSECustomerKey == null) {
            return;
        }
        A(request, "x-amz-server-side-encryption-customer-algorithm", sSECustomerKey.b());
        A(request, "x-amz-server-side-encryption-customer-key", sSECustomerKey.c());
        A(request, "x-amz-server-side-encryption-customer-key-MD5", sSECustomerKey.d());
        if (sSECustomerKey.c() == null || sSECustomerKey.d() != null) {
            return;
        }
        request.addHeader("x-amz-server-side-encryption-customer-key-MD5", Md5Utils.e(Base64.decode(sSECustomerKey.c())));
    }

    private static void a0(Request request, SSEAwsKeyManagementParams sSEAwsKeyManagementParams) {
        if (sSEAwsKeyManagementParams != null) {
            A(request, "x-amz-server-side-encryption", sSEAwsKeyManagementParams.getEncryption());
            A(request, "x-amz-server-side-encryption-aws-kms-key-id", sSEAwsKeyManagementParams.getAwsKmsKeyId());
        }
    }

    private void c0(AWSS3V4Signer aWSS3V4Signer, String str) {
        aWSS3V4Signer.a(o());
        aWSS3V4Signer.c(str);
    }

    private void e0(Request request) {
        request.addHeader(HttpHeaders.CONTENT_LENGTH, String.valueOf(0));
    }

    private boolean f0(AmazonWebServiceRequest amazonWebServiceRequest, AmazonS3Exception amazonS3Exception, int i11) {
        RetryPolicy retryPolicyD = this.f18272c.d();
        if (retryPolicyD == null || retryPolicyD.c() == null || retryPolicyD == PredefinedRetryPolicies.f18569a) {
            return false;
        }
        return this.f18593r.a(amazonWebServiceRequest, amazonS3Exception, i11);
    }

    private boolean g0(URI uri, String str) {
        return (this.f18589n.e() || !BucketNameUtils.isDNSBucketName(str) || V(uri.getHost())) ? false : true;
    }

    private ByteArrayInputStream h0(InputStream inputStream) {
        int i11 = 262144;
        byte[] bArr = new byte[262144];
        int i12 = 0;
        while (i11 > 0) {
            try {
                int i13 = inputStream.read(bArr, i12, i11);
                if (i13 == -1) {
                    break;
                }
                i12 += i13;
                i11 -= i13;
            } catch (IOException e11) {
                throw new AmazonClientException("Failed to read from inputstream", e11);
            }
        }
        if (inputStream.read() != -1) {
            throw new AmazonClientException("Input stream exceeds 256k buffer.");
        }
        inputStream.close();
        return new ByteArrayInputStream(bArr, 0, i12);
    }

    private String i0(ObjectTagging objectTagging) {
        if (objectTagging == null || objectTagging.getTagSet() == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator<Tag> it = objectTagging.getTagSet().iterator();
        while (it.hasNext()) {
            Tag next = it.next();
            sb2.append(S3HttpUtils.b(next.getKey(), false));
            sb2.append('=');
            sb2.append(S3HttpUtils.b(next.getValue(), false));
            if (it.hasNext()) {
                sb2.append(UrlUtils.AND_MARK);
            }
        }
        return sb2.toString();
    }

    private static void y(Request request, AccessControlList accessControlList) {
        Set<Grant> grants = accessControlList.getGrants();
        HashMap map = new HashMap();
        for (Grant grant : grants) {
            if (!map.containsKey(grant.b())) {
                map.put(grant.b(), new LinkedList());
            }
            ((Collection) map.get(grant.b())).add(grant.a());
        }
        for (Permission permission : Permission.values()) {
            if (map.containsKey(permission)) {
                Collection<Grantee> collection = (Collection) map.get(permission);
                StringBuilder sb2 = new StringBuilder();
                boolean z10 = false;
                for (Grantee grantee : collection) {
                    if (z10) {
                        sb2.append(", ");
                    } else {
                        z10 = true;
                    }
                    sb2.append(grantee.getTypeIdentifier());
                    sb2.append(UrlUtils.EQUAL_MARK);
                    sb2.append("\"");
                    sb2.append(grantee.getIdentifier());
                    sb2.append("\"");
                }
                request.addHeader(permission.getHeaderName(), sb2.toString());
            }
        }
    }

    private static void z(Request request, String str, Date date) {
        if (date != null) {
            request.addHeader(str, ServiceUtils.a(date));
        }
    }

    protected final ExecutionContext F(AmazonWebServiceRequest amazonWebServiceRequest) {
        return new S3ExecutionContext(this.f18274e, t(amazonWebServiceRequest) || AmazonWebServiceClient.r(), this);
    }

    protected Request G(String str, String str2, AmazonWebServiceRequest amazonWebServiceRequest, HttpMethodName httpMethodName) {
        return H(str, str2, amazonWebServiceRequest, httpMethodName, null);
    }

    protected Request H(String str, String str2, AmazonWebServiceRequest amazonWebServiceRequest, HttpMethodName httpMethodName, URI uri) {
        DefaultRequest defaultRequest = new DefaultRequest(amazonWebServiceRequest, "Amazon S3");
        if (this.f18589n.b() && !(defaultRequest.l() instanceof S3AccelerateUnsupported)) {
            uri = this.f18589n.d() ? RuntimeHttpUtils.a("s3-accelerate.dualstack.amazonaws.com", this.f18272c) : RuntimeHttpUtils.a("s3-accelerate.amazonaws.com", this.f18272c);
        }
        defaultRequest.o(httpMethodName);
        b0(defaultRequest, str, str2, uri);
        return defaultRequest;
    }

    protected Signer J(Request request, String str, String str2) {
        String strQ;
        Signer signerP = p(this.f18589n.b() ? this.f18270a : request.r());
        if (!T()) {
            if ((signerP instanceof AWSS3V4Signer) && W(request)) {
                String str3 = this.f18591p == null ? (String) f18586v.get(str) : this.f18591p;
                if (str3 != null) {
                    b0(request, str, str2, RuntimeHttpUtils.a(RegionUtils.a(str3).g("s3"), this.f18272c));
                    AWSS3V4Signer aWSS3V4Signer = (AWSS3V4Signer) signerP;
                    c0(aWSS3V4Signer, str3);
                    return aWSS3V4Signer;
                }
                if (request.l() instanceof GeneratePresignedUrlRequest) {
                    return I(request, str, str2);
                }
            }
            if (q() == null) {
                strQ = this.f18591p == null ? (String) f18586v.get(str) : this.f18591p;
            } else {
                strQ = q();
            }
            if (strQ != null) {
                AWSS3V4Signer aWSS3V4Signer2 = new AWSS3V4Signer();
                c0(aWSS3V4Signer2, strQ);
                return aWSS3V4Signer2;
            }
        }
        return signerP instanceof S3Signer ? I(request, str, str2) : signerP;
    }

    @Override // com.amazonaws.services.s3.AmazonS3, com.amazonaws.services.s3.internal.S3DirectSpi
    public UploadPartResult a(UploadPartRequest uploadPartRequest) {
        InputStream inputSubstream;
        MD5DigestCalculatingInputStream mD5DigestCalculatingInputStream;
        ValidationUtils.a(uploadPartRequest, "The request parameter must be specified when uploading a part");
        String bucketName = uploadPartRequest.getBucketName();
        String key = uploadPartRequest.getKey();
        String uploadId = uploadPartRequest.getUploadId();
        int partNumber = uploadPartRequest.getPartNumber();
        long partSize = uploadPartRequest.getPartSize();
        ValidationUtils.a(bucketName, "The bucket name parameter must be specified when uploading a part");
        ValidationUtils.a(key, "The key parameter must be specified when uploading a part");
        ValidationUtils.a(uploadId, "The upload ID parameter must be specified when uploading a part");
        ValidationUtils.a(Integer.valueOf(partNumber), "The part number parameter must be specified when uploading a part");
        ValidationUtils.a(Long.valueOf(partSize), "The part size parameter must be specified when uploading a part");
        Request requestG = G(bucketName, key, uploadPartRequest, HttpMethodName.PUT);
        requestG.g(RequestParameters.UPLOAD_ID, uploadId);
        requestG.g(RequestParameters.PART_NUMBER, Integer.toString(partNumber));
        ObjectMetadata objectMetadata = uploadPartRequest.getObjectMetadata();
        if (objectMetadata != null) {
            X(requestG, objectMetadata);
        }
        A(requestG, HttpHeaders.CONTENT_MD5, uploadPartRequest.getMd5Digest());
        requestG.addHeader(HttpHeaders.CONTENT_LENGTH, Long.toString(partSize));
        Y(requestG, uploadPartRequest.isRequesterPays());
        Z(requestG, uploadPartRequest.getSSECustomerKey());
        if (uploadPartRequest.getInputStream() != null) {
            inputSubstream = uploadPartRequest.getInputStream();
        } else {
            if (uploadPartRequest.getFile() == null) {
                throw new IllegalArgumentException("A File or InputStream must be specified when uploading part");
            }
            try {
                inputSubstream = new InputSubstream(new RepeatableFileInputStream(uploadPartRequest.getFile()), uploadPartRequest.getFileOffset(), partSize, true);
            } catch (FileNotFoundException e11) {
                throw new IllegalArgumentException("The specified file doesn't exist", e11);
            }
        }
        if (uploadPartRequest.getMd5Digest() != null || ServiceUtils.g(uploadPartRequest, this.f18589n)) {
            mD5DigestCalculatingInputStream = null;
        } else {
            mD5DigestCalculatingInputStream = new MD5DigestCalculatingInputStream(inputSubstream);
            inputSubstream = mD5DigestCalculatingInputStream;
        }
        ProgressListenerCallbackExecutor progressListenerCallbackExecutorD = ProgressListenerCallbackExecutor.d(uploadPartRequest.getGeneralProgressListener());
        if (progressListenerCallbackExecutorD != null) {
            ProgressReportingInputStream progressReportingInputStream = new ProgressReportingInputStream(inputSubstream, progressListenerCallbackExecutorD);
            progressReportingInputStream.o(this.f18592q);
            L(progressListenerCallbackExecutorD, 1024);
            inputSubstream = progressReportingInputStream;
        }
        try {
            try {
                requestG.a(inputSubstream);
                ObjectMetadata objectMetadata2 = (ObjectMetadata) S(requestG, new S3MetadataResponseHandler(), bucketName, key);
                if (objectMetadata2 != null && mD5DigestCalculatingInputStream != null && !ServiceUtils.h(objectMetadata2, this.f18589n) && !Arrays.equals(mD5DigestCalculatingInputStream.m(), BinaryUtils.b(objectMetadata2.getETag()))) {
                    throw new AmazonClientException("Unable to verify integrity of data upload.  Client calculated content hash didn't match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3.");
                }
                L(progressListenerCallbackExecutorD, 2048);
                UploadPartResult uploadPartResult = new UploadPartResult();
                uploadPartResult.setETag(objectMetadata2.getETag());
                uploadPartResult.setPartNumber(partNumber);
                uploadPartResult.setSSEAlgorithm(objectMetadata2.getSSEAlgorithm());
                uploadPartResult.setSSECustomerAlgorithm(objectMetadata2.getSSECustomerAlgorithm());
                uploadPartResult.setSSECustomerKeyMd5(objectMetadata2.getSSECustomerKeyMd5());
                uploadPartResult.setRequesterCharged(objectMetadata2.isRequesterCharged());
                if (inputSubstream != null) {
                    try {
                        inputSubstream.close();
                    } catch (Exception unused) {
                    }
                }
                return uploadPartResult;
            } catch (Throwable th2) {
                if (inputSubstream != null) {
                    try {
                        inputSubstream.close();
                    } catch (Exception unused2) {
                    }
                }
                throw th2;
            }
        } catch (AmazonClientException e12) {
            L(progressListenerCallbackExecutorD, 4096);
            throw e12;
        }
    }

    @Override // com.amazonaws.services.s3.AmazonS3
    public CompleteMultipartUploadResult b(CompleteMultipartUploadRequest completeMultipartUploadRequest) {
        ValidationUtils.a(completeMultipartUploadRequest, "The request parameter must be specified when completing a multipart upload");
        String bucketName = completeMultipartUploadRequest.getBucketName();
        String key = completeMultipartUploadRequest.getKey();
        String uploadId = completeMultipartUploadRequest.getUploadId();
        ValidationUtils.a(bucketName, "The bucket name parameter must be specified when completing a multipart upload");
        ValidationUtils.a(key, "The key parameter must be specified when completing a multipart upload");
        ValidationUtils.a(uploadId, "The upload ID parameter must be specified when completing a multipart upload");
        ValidationUtils.a(completeMultipartUploadRequest.getPartETags(), "The part ETags parameter must be specified when completing a multipart upload");
        int i11 = 0;
        while (true) {
            Request requestG = G(bucketName, key, completeMultipartUploadRequest, HttpMethodName.POST);
            requestG.g(RequestParameters.UPLOAD_ID, uploadId);
            Y(requestG, completeMultipartUploadRequest.isRequesterPays());
            byte[] bArrA = RequestXmlFactory.a(completeMultipartUploadRequest.getPartETags());
            requestG.addHeader(HttpHeaders.CONTENT_TYPE, "application/xml");
            requestG.addHeader(HttpHeaders.CONTENT_LENGTH, String.valueOf(bArrA.length));
            requestG.a(new ByteArrayInputStream(bArrA));
            XmlResponsesSaxParser.CompleteMultipartUploadHandler completeMultipartUploadHandler = (XmlResponsesSaxParser.CompleteMultipartUploadHandler) S(requestG, new ResponseHeaderHandlerChain(new Unmarshaller<XmlResponsesSaxParser.CompleteMultipartUploadHandler, InputStream>() { // from class: com.amazonaws.services.s3.model.transform.Unmarshallers$CompleteMultipartUploadResultUnmarshaller
                @Override // com.amazonaws.transform.Unmarshaller
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public XmlResponsesSaxParser.CompleteMultipartUploadHandler a(InputStream inputStream) {
                    return new XmlResponsesSaxParser().j(inputStream);
                }
            }, new ServerSideEncryptionHeaderHandler(), new ObjectExpirationHeaderHandler(), new S3VersionHeaderHandler(), new S3RequesterChargedHeaderHandler()), bucketName, key);
            if (completeMultipartUploadHandler.h() != null) {
                return completeMultipartUploadHandler.h();
            }
            int i12 = i11 + 1;
            if (!f0(completeMultipartUploadRequest, completeMultipartUploadHandler.g(), i11)) {
                throw completeMultipartUploadHandler.g();
            }
            i11 = i12;
        }
    }

    public void b0(Request request, String str, String str2, URI uri) {
        if (uri == null) {
            uri = this.f18270a;
        }
        if (g0(uri, str)) {
            f18583s.a("Using virtual style addressing. Endpoint = " + uri);
            request.s(E(uri, str));
            request.c(N(str2));
        } else {
            f18583s.a("Using path style addressing. Endpoint = " + uri);
            request.s(uri);
            if (str != null) {
                request.c(O(str, str2));
            }
        }
        f18583s.a("Key: " + str2 + "; Request: " + request);
    }

    @Override // com.amazonaws.services.s3.AmazonS3
    public InitiateMultipartUploadResult c(InitiateMultipartUploadRequest initiateMultipartUploadRequest) {
        ValidationUtils.a(initiateMultipartUploadRequest, "The request parameter must be specified when initiating a multipart upload");
        ValidationUtils.a(initiateMultipartUploadRequest.getBucketName(), "The bucket name parameter must be specified when initiating a multipart upload");
        ValidationUtils.a(initiateMultipartUploadRequest.getKey(), "The key parameter must be specified when initiating a multipart upload");
        Request requestG = G(initiateMultipartUploadRequest.getBucketName(), initiateMultipartUploadRequest.getKey(), initiateMultipartUploadRequest, HttpMethodName.POST);
        requestG.g(RequestParameters.SUBRESOURCE_UPLOADS, null);
        if (initiateMultipartUploadRequest.getStorageClass() != null) {
            requestG.addHeader("x-amz-storage-class", initiateMultipartUploadRequest.getStorageClass().toString());
        }
        if (initiateMultipartUploadRequest.getRedirectLocation() != null) {
            requestG.addHeader("x-amz-website-redirect-location", initiateMultipartUploadRequest.getRedirectLocation());
        }
        if (initiateMultipartUploadRequest.getAccessControlList() != null) {
            y(requestG, initiateMultipartUploadRequest.getAccessControlList());
        } else if (initiateMultipartUploadRequest.getCannedACL() != null) {
            requestG.addHeader("x-amz-acl", initiateMultipartUploadRequest.getCannedACL().toString());
        }
        ObjectMetadata objectMetadata = initiateMultipartUploadRequest.objectMetadata;
        if (objectMetadata != null) {
            X(requestG, objectMetadata);
        }
        A(requestG, "x-amz-tagging", i0(initiateMultipartUploadRequest.getTagging()));
        Y(requestG, initiateMultipartUploadRequest.isRequesterPays());
        Z(requestG, initiateMultipartUploadRequest.getSSECustomerKey());
        a0(requestG, initiateMultipartUploadRequest.getSSEAwsKeyManagementParams());
        e0(requestG);
        requestG.a(new ByteArrayInputStream(new byte[0]));
        return (InitiateMultipartUploadResult) S(requestG, new ResponseHeaderHandlerChain(new Unmarshaller<InitiateMultipartUploadResult, InputStream>() { // from class: com.amazonaws.services.s3.model.transform.Unmarshallers$InitiateMultipartUploadResultUnmarshaller
            @Override // com.amazonaws.transform.Unmarshaller
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public InitiateMultipartUploadResult a(InputStream inputStream) {
                return new XmlResponsesSaxParser().k(inputStream).f();
            }
        }, new ServerSideEncryptionHeaderHandler()), initiateMultipartUploadRequest.getBucketName(), initiateMultipartUploadRequest.getKey());
    }

    @Override // com.amazonaws.services.s3.AmazonS3
    public S3Object d(GetObjectRequest getObjectRequest) {
        ValidationUtils.a(getObjectRequest, "The GetObjectRequest parameter must be specified when requesting an object");
        ValidationUtils.a(getObjectRequest.getBucketName(), "The bucket name parameter must be specified when requesting an object");
        ValidationUtils.a(getObjectRequest.getKey(), "The key parameter must be specified when requesting an object");
        Request requestG = G(getObjectRequest.getBucketName(), getObjectRequest.getKey(), getObjectRequest, HttpMethodName.GET);
        if (getObjectRequest.getVersionId() != null) {
            requestG.g("versionId", getObjectRequest.getVersionId());
        }
        long[] range = getObjectRequest.getRange();
        if (range != null) {
            String str = "bytes=" + Long.toString(range[0]) + "-";
            if (range[1] >= 0) {
                str = str + Long.toString(range[1]);
            }
            requestG.addHeader("Range", str);
        }
        Y(requestG, getObjectRequest.isRequesterPays());
        B(requestG, getObjectRequest.getResponseHeaders());
        z(requestG, "If-Modified-Since", getObjectRequest.getModifiedSinceConstraint());
        z(requestG, "If-Unmodified-Since", getObjectRequest.getUnmodifiedSinceConstraint());
        C(requestG, "If-Match", getObjectRequest.getMatchingETagConstraints());
        C(requestG, "If-None-Match", getObjectRequest.getNonmatchingETagConstraints());
        Z(requestG, getObjectRequest.getSSECustomerKey());
        ProgressListenerCallbackExecutor progressListenerCallbackExecutorD = ProgressListenerCallbackExecutor.d(getObjectRequest.getGeneralProgressListener());
        try {
            S3Object s3Object = (S3Object) S(requestG, new S3ObjectResponseHandler(), getObjectRequest.getBucketName(), getObjectRequest.getKey());
            s3Object.setBucketName(getObjectRequest.getBucketName());
            s3Object.setKey(getObjectRequest.getKey());
            FilterInputStream serviceClientHolderInputStream = new ServiceClientHolderInputStream(s3Object.getObjectContent(), this);
            if (progressListenerCallbackExecutorD != null) {
                ProgressReportingInputStream progressReportingInputStream = new ProgressReportingInputStream(serviceClientHolderInputStream, progressListenerCallbackExecutorD);
                progressReportingInputStream.n(true);
                progressReportingInputStream.o(this.f18592q);
                L(progressListenerCallbackExecutorD, 2);
                serviceClientHolderInputStream = progressReportingInputStream;
            }
            if (ServiceUtils.g(getObjectRequest, this.f18589n) || ServiceUtils.h(s3Object.getObjectMetadata(), this.f18589n)) {
                serviceClientHolderInputStream = new LengthCheckInputStream(serviceClientHolderInputStream, s3Object.getObjectMetadata().getContentLength(), true);
            } else {
                String eTag = s3Object.getObjectMetadata().getETag();
                if (eTag != null && !ServiceUtils.b(eTag)) {
                    try {
                        serviceClientHolderInputStream = new DigestValidationInputStream(serviceClientHolderInputStream, MessageDigest.getInstance("MD5"), BinaryUtils.b(s3Object.getObjectMetadata().getETag()));
                    } catch (NoSuchAlgorithmException e11) {
                        f18583s.i("No MD5 digest algorithm available. Unable to calculate checksum and verify data integrity.", e11);
                    }
                }
            }
            s3Object.setObjectContent(new S3ObjectInputStream(serviceClientHolderInputStream));
            return s3Object;
        } catch (AmazonS3Exception e12) {
            if (e12.getStatusCode() == 412 || e12.getStatusCode() == 304) {
                L(progressListenerCallbackExecutorD, 16);
                return null;
            }
            L(progressListenerCallbackExecutorD, 8);
            throw e12;
        }
    }

    public void d0(S3ClientOptions s3ClientOptions) {
        this.f18589n = new S3ClientOptions(s3ClientOptions);
    }

    @Override // com.amazonaws.services.s3.AmazonS3
    public void e(AbortMultipartUploadRequest abortMultipartUploadRequest) {
        ValidationUtils.a(abortMultipartUploadRequest, "The request parameter must be specified when aborting a multipart upload");
        ValidationUtils.a(abortMultipartUploadRequest.getBucketName(), "The bucket name parameter must be specified when aborting a multipart upload");
        ValidationUtils.a(abortMultipartUploadRequest.getKey(), "The key parameter must be specified when aborting a multipart upload");
        ValidationUtils.a(abortMultipartUploadRequest.getUploadId(), "The upload ID parameter must be specified when aborting a multipart upload");
        String bucketName = abortMultipartUploadRequest.getBucketName();
        String key = abortMultipartUploadRequest.getKey();
        Request requestG = G(bucketName, key, abortMultipartUploadRequest, HttpMethodName.DELETE);
        requestG.g(RequestParameters.UPLOAD_ID, abortMultipartUploadRequest.getUploadId());
        Y(requestG, abortMultipartUploadRequest.isRequesterPays());
        S(requestG, this.f18588m, bucketName, key);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0237 */
    /* JADX WARN: Code restructure failed: missing block: B:101:?, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:?, code lost:
    
        throw r0;
     */
    @Override // com.amazonaws.services.s3.AmazonS3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PutObjectResult f(PutObjectRequest putObjectRequest) {
        InputStream inputStream;
        MD5DigestCalculatingInputStream mD5DigestCalculatingInputStream;
        InputStream inputStream2;
        ByteArrayInputStream byteArrayInputStreamH0;
        ValidationUtils.a(putObjectRequest, "The PutObjectRequest parameter must be specified when uploading an object");
        String bucketName = putObjectRequest.getBucketName();
        String key = putObjectRequest.getKey();
        ObjectMetadata metadata = putObjectRequest.getMetadata();
        InputStream inputStream3 = putObjectRequest.getInputStream();
        ProgressListenerCallbackExecutor progressListenerCallbackExecutorD = ProgressListenerCallbackExecutor.d(putObjectRequest.getGeneralProgressListener());
        if (metadata == null) {
            metadata = new ObjectMetadata();
        }
        ValidationUtils.a(bucketName, "The bucket name parameter must be specified when uploading an object");
        ValidationUtils.a(key, "The key parameter must be specified when uploading an object");
        boolean zG = ServiceUtils.g(putObjectRequest, this.f18589n);
        InputStream repeatableFileInputStream = inputStream3;
        if (putObjectRequest.getFile() != null) {
            File file = putObjectRequest.getFile();
            metadata.setContentLength(file.length());
            boolean z10 = metadata.getContentMD5() == null;
            if (metadata.getContentType() == null) {
                metadata.setContentType(Mimetypes.a().b(file));
            }
            if (z10 && !zG) {
                try {
                    metadata.setContentMD5(Md5Utils.d(file));
                } catch (Exception e11) {
                    throw new AmazonClientException("Unable to calculate MD5 hash: " + e11.getMessage(), e11);
                }
            }
            try {
                repeatableFileInputStream = new RepeatableFileInputStream(file);
            } catch (FileNotFoundException e12) {
                throw new AmazonClientException("Unable to find file to upload", e12);
            }
        }
        Request requestG = G(bucketName, key, putObjectRequest, HttpMethodName.PUT);
        if (putObjectRequest.getAccessControlList() != null) {
            y(requestG, putObjectRequest.getAccessControlList());
        } else if (putObjectRequest.getCannedAcl() != null) {
            requestG.addHeader("x-amz-acl", putObjectRequest.getCannedAcl().toString());
        }
        if (putObjectRequest.getStorageClass() != null) {
            requestG.addHeader("x-amz-storage-class", putObjectRequest.getStorageClass());
        }
        InputStream byteArrayInputStream = repeatableFileInputStream;
        if (putObjectRequest.getRedirectLocation() != null) {
            requestG.addHeader("x-amz-website-redirect-location", putObjectRequest.getRedirectLocation());
            if (repeatableFileInputStream == null) {
                byteArrayInputStream = repeatableFileInputStream;
                e0(requestG);
                byteArrayInputStream = new ByteArrayInputStream(new byte[0]);
            }
        }
        byteArrayInputStream = repeatableFileInputStream;
        A(requestG, "x-amz-tagging", i0(putObjectRequest.getTagging()));
        Y(requestG, putObjectRequest.isRequesterPays());
        Z(requestG, putObjectRequest.getSSECustomerKey());
        Long l11 = (Long) metadata.getRawMetadataValue(HttpHeaders.CONTENT_LENGTH);
        if (l11 != null) {
            long jLongValue = l11.longValue();
            if (jLongValue >= 0) {
                inputStream = byteArrayInputStream;
                InputStream lengthCheckInputStream = new LengthCheckInputStream(byteArrayInputStream, jLongValue, false);
                requestG.addHeader(HttpHeaders.CONTENT_LENGTH, l11.toString());
                inputStream = lengthCheckInputStream;
            }
        } else if (byteArrayInputStream.markSupported()) {
            requestG.addHeader(HttpHeaders.CONTENT_LENGTH, String.valueOf(D(byteArrayInputStream)));
        } else {
            f18583s.j("No content length specified for stream data.  Stream contents will be buffered in memory and could result in out of memory errors.");
            byteArrayInputStreamH0 = h0(byteArrayInputStream);
            requestG.addHeader(HttpHeaders.CONTENT_LENGTH, String.valueOf(byteArrayInputStreamH0.available()));
            requestG.n(true);
        }
        if (progressListenerCallbackExecutorD != null) {
            inputStream = byteArrayInputStream;
            inputStream = byteArrayInputStreamH0;
            ProgressReportingInputStream progressReportingInputStream = new ProgressReportingInputStream(inputStream, progressListenerCallbackExecutorD);
            progressReportingInputStream.o(this.f18592q);
            L(progressListenerCallbackExecutorD, 2);
            inputStream = progressReportingInputStream;
        }
        inputStream = byteArrayInputStream;
        inputStream = byteArrayInputStreamH0;
        if (metadata.getContentMD5() != null || zG) {
            mD5DigestCalculatingInputStream = null;
            inputStream2 = inputStream;
        } else {
            mD5DigestCalculatingInputStream = new MD5DigestCalculatingInputStream(inputStream);
            inputStream2 = mD5DigestCalculatingInputStream;
        }
        if (metadata.getContentType() == null) {
            metadata.setContentType(OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
        }
        X(requestG, metadata);
        a0(requestG, putObjectRequest.getSSEAwsKeyManagementParams());
        requestG.a(inputStream2);
        try {
            ObjectMetadata objectMetadata = (ObjectMetadata) S(requestG, new S3MetadataResponseHandler(), bucketName, key);
            try {
                inputStream2.close();
            } catch (AbortedException unused) {
            } catch (Exception e13) {
                f18583s.g("Unable to cleanly close input stream: " + e13.getMessage(), e13);
            }
            String contentMD5 = metadata.getContentMD5();
            if (mD5DigestCalculatingInputStream != null) {
                contentMD5 = BinaryUtils.c(mD5DigestCalculatingInputStream.m());
            }
            if (objectMetadata != null && contentMD5 != null && !zG && !Arrays.equals(BinaryUtils.a(contentMD5), BinaryUtils.b(objectMetadata.getETag()))) {
                L(progressListenerCallbackExecutorD, 8);
                throw new AmazonClientException("Unable to verify integrity of data upload.  Client calculated content hash didn't match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3.");
            }
            L(progressListenerCallbackExecutorD, 4);
            PutObjectResult putObjectResult = new PutObjectResult();
            putObjectResult.setVersionId(objectMetadata.getVersionId());
            putObjectResult.setSSEAlgorithm(objectMetadata.getSSEAlgorithm());
            putObjectResult.setSSECustomerAlgorithm(objectMetadata.getSSECustomerAlgorithm());
            putObjectResult.setSSECustomerKeyMd5(objectMetadata.getSSECustomerKeyMd5());
            putObjectResult.setExpirationTime(objectMetadata.getExpirationTime());
            putObjectResult.setExpirationTimeRuleId(objectMetadata.getExpirationTimeRuleId());
            putObjectResult.setETag(objectMetadata.getETag());
            putObjectResult.b(objectMetadata);
            putObjectResult.setRequesterCharged(objectMetadata.isRequesterCharged());
            putObjectResult.a(contentMD5);
            return putObjectResult;
        } catch (AmazonClientException e14) {
            L(progressListenerCallbackExecutorD, 8);
            throw e14;
        }
    }

    @Override // com.amazonaws.AmazonWebServiceClient
    public void v(String str) {
        if (str.endsWith("s3-accelerate.amazonaws.com")) {
            throw new IllegalStateException("To enable accelerate mode, please use AmazonS3Client.setS3ClientOptions(S3ClientOptions.builder().setAccelerateModeEnabled(true).build());");
        }
        super.v(str);
        if (str.endsWith("s3.amazonaws.com")) {
            return;
        }
        this.f18591p = AwsHostNameUtils.a(this.f18270a.getHost(), "s3");
    }

    @Override // com.amazonaws.AmazonWebServiceClient
    public void w(Region region) {
        super.w(region);
        this.f18591p = region.d();
    }
}
