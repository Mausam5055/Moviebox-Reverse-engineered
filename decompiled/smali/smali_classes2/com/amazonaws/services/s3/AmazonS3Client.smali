.class public Lcom/amazonaws/services/s3/AmazonS3Client;
.super Lcom/amazonaws/AmazonWebServiceClient;

# interfaces
.implements Lcom/amazonaws/services/s3/AmazonS3;


# static fields
.field private static s:Lcom/amazonaws/logging/Log;

.field private static final t:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

.field private static final u:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

.field private static final v:Ljava/util/Map;


# instance fields
.field private final l:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

.field private final m:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

.field protected n:Lcom/amazonaws/services/s3/S3ClientOptions;

.field private final o:Lcom/amazonaws/auth/AWSCredentialsProvider;

.field volatile p:Ljava/lang/String;

.field private q:I

.field private final r:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/amazonaws/services/s3/AmazonS3Client;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    invoke-static {}, Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;->b()[Lcom/amazonaws/services/s3/metrics/S3ServiceMetric;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/metrics/AwsSdkMetrics;->addAll(Ljava/util/Collection;)Z

    const-string v0, "AWSS3V4SignerType"

    const-class v1, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    invoke-static {v0, v1}, Lcom/amazonaws/auth/SignerFactory;->e(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->t:Lcom/amazonaws/services/s3/model/transform/BucketConfigurationXmlFactory;

    new-instance v0, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;-><init>()V

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->u:Lcom/amazonaws/services/s3/model/transform/RequestPaymentConfigurationXmlFactory;

    new-instance v0, Lcom/amazonaws/services/s3/AmazonS3Client$1;

    const v1, 0x3f8ccccd    # 1.1f

    const/4 v2, 0x1

    const/16 v3, 0x12c

    invoke-direct {v0, v3, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client$1;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->v:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;

    invoke-direct {v0}, Lcom/amazonaws/auth/DefaultAWSCredentialsProviderChain;-><init>()V

    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p3}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/internal/StaticCredentialsProvider;

    invoke-direct {v0, p1}, Lcom/amazonaws/internal/StaticCredentialsProvider;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/ClientConfiguration;

    invoke-direct {v0}, Lcom/amazonaws/ClientConfiguration;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/http/UrlHttpClient;

    invoke-direct {v0, p2}, Lcom/amazonaws/http/UrlHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    new-instance p2, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    new-instance p2, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->m:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    new-instance p2, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    const/16 p2, 0x400

    iput p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:I

    new-instance p2, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    invoke-direct {p2}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;-><init>()V

    iput-object p2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->r:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->Q()V

    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1

    invoke-direct {p0, p3, p4}, Lcom/amazonaws/AmazonWebServiceClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    new-instance p4, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-direct {p4}, Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;-><init>()V

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    new-instance p4, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    const/4 v0, 0x0

    invoke-direct {p4, v0}, Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;-><init>(Lcom/amazonaws/transform/Unmarshaller;)V

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->m:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    new-instance p4, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {p4}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>()V

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    const/16 p4, 0x400

    iput p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:I

    new-instance p4, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    invoke-direct {p4}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;-><init>()V

    iput-object p4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->r:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->R(Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V

    return-void
.end method

.method private static A(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static B(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V
    .locals 2

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "response-cache-control"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "response-content-disposition"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "response-content-encoding"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "response-content-language"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "response-content-type"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/amazonaws/Request;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "response-expires"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;->g()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/amazonaws/Request;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private static C(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private D(Ljava/io/InputStream;)J
    .locals 6

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    const-wide/16 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-eq v4, v1, :cond_0

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception p1

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Could not calculate content length."

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private E(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bucket name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private I(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/S3Signer;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-eqz p2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v2

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v2

    :goto_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/amazonaws/services/s3/internal/S3Signer;

    invoke-interface {p1}, Lcom/amazonaws/Request;->m()Lcom/amazonaws/http/HttpMethodName;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/amazonaws/services/s3/internal/S3Signer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method private K(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->v:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bucket region cache doesn\'t have an entry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Trying to get bucket region from Amazon S3."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    invoke-interface {v0}, Lcom/amazonaws/logging/Log;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Region for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    :cond_2
    return-object v1
.end method

.method private L(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    invoke-virtual {v0, p2}, Lcom/amazonaws/event/ProgressEvent;->c(I)V

    invoke-virtual {p1, v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->c(Lcom/amazonaws/event/ProgressEvent;)V

    return-void
.end method

.method private M(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v4, Lcom/amazonaws/services/s3/model/HeadBucketRequest;

    invoke-direct {v4, p1}, Lcom/amazonaws/services/s3/model/HeadBucketRequest;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/amazonaws/http/HttpMethodName;->HEAD:Lcom/amazonaws/http/HttpMethodName;

    new-instance v6, Ljava/net/URI;

    const-string v1, "https://s3-us-west-1.amazonaws.com"

    invoke-direct {v6, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->H(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazonaws/Request;

    move-result-object v1

    new-instance v2, Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/transform/HeadBucketResultHandler;-><init>()V

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->S(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/HeadBucketResult;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/HeadBucketResult;->a()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    const-string v2, "Error while creating URI"

    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    goto :goto_1

    :goto_0
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getAdditionalDetails()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getAdditionalDetails()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-amz-bucket-region"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    invoke-interface {v1}, Lcom/amazonaws/logging/Log;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not able to derive region of the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from the HEAD Bucket requests."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method private N(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private P()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->q()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private Q()V
    .locals 3

    const-string v0, "s3.amazonaws.com"

    invoke-virtual {p0, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->v(Ljava/lang/String;)V

    const-string v0, "s3"

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->i:Ljava/lang/String;

    new-instance v0, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {v0}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/s3/request.handlers"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    const-string v2, "/com/amazonaws/services/s3/request.handler2s"

    invoke-virtual {v0, v2}, Lcom/amazonaws/handlers/HandlerChainFactory;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private R(Lcom/amazonaws/regions/Region;Lcom/amazonaws/ClientConfiguration;)V
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/auth/AWSCredentialsProvider;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    const-string p2, "s3"

    iput-object p2, p0, Lcom/amazonaws/AmazonWebServiceClient;->i:Ljava/lang/String;

    const-string p2, "s3.amazonaws.com"

    invoke-virtual {p0, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->v(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->w(Lcom/amazonaws/regions/Region;)V

    new-instance p1, Lcom/amazonaws/handlers/HandlerChainFactory;

    invoke-direct {p1}, Lcom/amazonaws/handlers/HandlerChainFactory;-><init>()V

    iget-object p2, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    const-string v0, "/com/amazonaws/services/s3/request.handlers"

    invoke-virtual {p1, v0}, Lcom/amazonaws/handlers/HandlerChainFactory;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    const-string v0, "/com/amazonaws/services/s3/request.handler2s"

    invoke-virtual {p1, v0}, Lcom/amazonaws/handlers/HandlerChainFactory;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p1, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initialized with endpoint = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Region cannot be null. Region is required to sign the request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Credentials cannot be null. Credentials is required to sign the request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private S(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const-string v0, "Content-Type"

    invoke-interface {p1}, Lcom/amazonaws/Request;->l()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->F(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/http/ExecutionContext;->a()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/amazonaws/Request;->h(Lcom/amazonaws/util/AWSRequestMetrics;)V

    sget-object v4, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {v3, v4}, Lcom/amazonaws/util/AWSRequestMetrics;->g(Lcom/amazonaws/metrics/MetricType;)V

    const/4 v4, 0x0

    :try_start_0
    iget v5, p0, Lcom/amazonaws/AmazonWebServiceClient;->f:I

    invoke-interface {p1, v5}, Lcom/amazonaws/Request;->e(I)V

    invoke-interface {p1}, Lcom/amazonaws/Request;->getHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "application/octet-stream"

    invoke-interface {p1, v0, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    invoke-interface {p1}, Lcom/amazonaws/Request;->l()Lcom/amazonaws/AmazonWebServiceRequest;

    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->W(Lcom/amazonaws/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->K(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->o:Lcom/amazonaws/auth/AWSCredentialsProvider;

    invoke-interface {v0}, Lcom/amazonaws/auth/AWSCredentialsProvider;->a()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestCredentials()Lcom/amazonaws/auth/AWSCredentials;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Lcom/amazonaws/services/s3/AmazonS3Client;->J(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object p4

    invoke-virtual {v2, p4}, Lcom/amazonaws/http/ExecutionContext;->g(Lcom/amazonaws/auth/Signer;)V

    invoke-virtual {v2, v0}, Lcom/amazonaws/http/ExecutionContext;->f(Lcom/amazonaws/auth/AWSCredentials;)V

    iget-object p4, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->l:Lcom/amazonaws/services/s3/internal/S3ErrorResponseHandler;

    invoke-virtual {p4, p1, p2, v0, v2}, Lcom/amazonaws/http/AmazonHttpClient;->d(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v3, p1, v4}, Lcom/amazonaws/AmazonWebServiceClient;->j(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    return-object p2

    :goto_1
    :try_start_1
    invoke-virtual {p2}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result p4

    const/16 v0, 0x12d

    if-ne p4, v0, :cond_3

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getAdditionalDetails()Ljava/util/Map;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p2}, Lcom/amazonaws/services/s3/model/AmazonS3Exception;->getAdditionalDetails()Ljava/util/Map;

    move-result-object p4

    const-string v0, "x-amz-bucket-region"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->v:Ljava/util/Map;

    invoke-interface {v0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The bucket is in this region: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ". Please use this region to retry the request"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazonaws/AmazonServiceException;->setErrorMessage(Ljava/lang/String;)V

    :cond_3
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {p0, v3, p1, v4}, Lcom/amazonaws/AmazonWebServiceClient;->j(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    throw p2
.end method

.method private T()Z
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private U(Ljava/net/URI;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "s3.amazonaws.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static V(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p0, v2

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v3, :cond_3

    const/16 v4, 0xff

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private W(Lcom/amazonaws/Request;)Z
    .locals 0

    invoke-interface {p1}, Lcom/amazonaws/Request;->r()Ljava/net/URI;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->U(Ljava/net/URI;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->P()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected static X(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V
    .locals 4

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadata()Ljava/util/Map;

    move-result-object v0

    const-string v1, "x-amz-server-side-encryption-aws-kms-key-id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/amazonaws/services/s3/model/ObjectMetadata;->KMS_SERVER_SIDE_ENCRYPTION:Ljava/lang/String;

    const-string v2, "x-amz-server-side-encryption"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "If you specify a KMS key id for server side encryption, you must also set the SSEAlgorithm to ObjectMetadata.KMS_SERVER_SIDE_ENCRYPTION"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getHttpExpiresDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "Expires"

    invoke-static {v0}, Lcom/amazonaws/util/DateUtils;->d(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getUserMetadata()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v2, "x-amz-tagging"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x-amz-meta-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method protected static Y(Lcom/amazonaws/Request;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "x-amz-request-payer"

    const-string v0, "requester"

    invoke-interface {p0, p1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static Z(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "x-amz-server-side-encryption-customer-algorithm"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->A(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-server-side-encryption-customer-key"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->A(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-amz-server-side-encryption-customer-key-MD5"

    invoke-static {p0, v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->A(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->d()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSECustomerKey;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/util/Md5Utils;->e([B)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static a0(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "x-amz-server-side-encryption"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->getEncryption()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->A(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "x-amz-server-side-encryption-aws-kms-key-id"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;->getAwsKmsKeyId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->A(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c0(Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazonaws/auth/AWS4Signer;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/amazonaws/auth/AWS4Signer;->c(Ljava/lang/String;)V

    return-void
.end method

.method private e0(Lcom/amazonaws/Request;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Content-Length"

    invoke-interface {p1, v1, v0}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private f0(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/model/AmazonS3Exception;I)Z
    .locals 3

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->d()Lcom/amazonaws/retry/RetryPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazonaws/retry/RetryPolicy;->c()Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/amazonaws/retry/PredefinedRetryPolicies;->a:Lcom/amazonaws/retry/RetryPolicy;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->r:Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazonaws/services/s3/internal/CompleteMultipartUploadRetryCondition;->a(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method private g0(Ljava/net/URI;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/S3ClientOptions;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/BucketNameUtils;->isDNSBucketName(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->V(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private h0(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;
    .locals 6

    const/high16 v0, 0x40000

    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {p1, v1, v3, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v5, v4, :cond_0

    add-int/2addr v3, v5

    sub-int/2addr v0, v5

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object p1

    :cond_1
    :try_start_1
    new-instance p1, Lcom/amazonaws/AmazonClientException;

    const-string v0, "Input stream exceeds 256k buffer."

    invoke-direct {p1, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Failed to read from inputstream"

    invoke-direct {v0, v1, p1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private i0(Lcom/amazonaws/services/s3/model/ObjectTagging;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectTagging;->getTagSet()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectTagging;->getTagSet()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/Tag;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Tag;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Tag;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/amazonaws/services/s3/internal/S3HttpUtils;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static y(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V
    .locals 10

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AccessControlList;->getGrants()Ljava/util/Set;

    move-result-object p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazonaws/services/s3/model/Grant;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->b()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->b()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->b()Lcom/amazonaws/services/s3/model/Permission;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/Grant;->a()Lcom/amazonaws/services/s3/model/Grantee;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/amazonaws/services/s3/model/Permission;->values()[Lcom/amazonaws/services/s3/model/Permission;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_5

    aget-object v4, p1, v3

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v7, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazonaws/services/s3/model/Grantee;

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    const-string v9, ", "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-interface {v8}, Lcom/amazonaws/services/s3/model/Grantee;->getTypeIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Lcom/amazonaws/services/s3/model/Grantee;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/amazonaws/services/s3/model/Permission;->getHeaderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method private static z(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected final F(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/http/ExecutionContext;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->t(Lcom/amazonaws/AmazonWebServiceRequest;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/amazonaws/AmazonWebServiceClient;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;

    iget-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    invoke-direct {v0, v1, p1, p0}, Lcom/amazonaws/services/s3/internal/S3ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    return-object v0
.end method

.method protected G(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->H(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazonaws/Request;

    move-result-object p1

    return-object p1
.end method

.method protected H(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;Ljava/net/URI;)Lcom/amazonaws/Request;
    .locals 2

    new-instance v0, Lcom/amazonaws/DefaultRequest;

    const-string v1, "Amazon S3"

    invoke-direct {v0, p3, v1}, Lcom/amazonaws/DefaultRequest;-><init>(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {p3}, Lcom/amazonaws/services/s3/S3ClientOptions;->b()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {v0}, Lcom/amazonaws/Request;->l()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p3

    instance-of p3, p3, Lcom/amazonaws/services/s3/model/S3AccelerateUnsupported;

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {p3}, Lcom/amazonaws/services/s3/S3ClientOptions;->d()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "s3-accelerate.dualstack.amazonaws.com"

    iget-object p5, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-static {p3, p5}, Lcom/amazonaws/util/RuntimeHttpUtils;->a(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;

    move-result-object p5

    goto :goto_0

    :cond_0
    const-string p3, "s3-accelerate.amazonaws.com"

    iget-object p5, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-static {p3, p5}, Lcom/amazonaws/util/RuntimeHttpUtils;->a(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;

    move-result-object p5

    :cond_1
    :goto_0
    invoke-interface {v0, p4}, Lcom/amazonaws/Request;->o(Lcom/amazonaws/http/HttpMethodName;)V

    invoke-virtual {p0, v0, p1, p2, p5}, Lcom/amazonaws/services/s3/AmazonS3Client;->b0(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    return-object v0
.end method

.method protected J(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;
    .locals 4

    iget-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/S3ClientOptions;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->r()Ljava/net/URI;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amazonaws/AmazonWebServiceClient;->p(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    invoke-direct {p0}, Lcom/amazonaws/services/s3/AmazonS3Client;->T()Z

    move-result v1

    if-nez v1, :cond_6

    instance-of v1, v0, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->W(Lcom/amazonaws/Request;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/lang/String;

    if-nez v1, :cond_1

    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->v:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/lang/String;

    :goto_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/amazonaws/regions/RegionUtils;->a(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object v2

    const-string v3, "s3"

    invoke-virtual {v2, v3}, Lcom/amazonaws/regions/Region;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-static {v2, v3}, Lcom/amazonaws/util/RuntimeHttpUtils;->a(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->b0(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V

    check-cast v0, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    invoke-direct {p0, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->c0(Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;Ljava/lang/String;)V

    return-object v0

    :cond_2
    invoke-interface {p1}, Lcom/amazonaws/Request;->l()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object v1

    instance-of v1, v1, Lcom/amazonaws/services/s3/model/GeneratePresignedUrlRequest;

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->I(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/S3Signer;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->q()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/lang/String;

    if-nez v1, :cond_4

    sget-object v1, Lcom/amazonaws/services/s3/AmazonS3Client;->v:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/lang/String;

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->q()Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_6

    new-instance p1, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;

    invoke-direct {p1}, Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->c0(Lcom/amazonaws/services/s3/internal/AWSS3V4Signer;Ljava/lang/String;)V

    return-object p1

    :cond_6
    instance-of v1, v0, Lcom/amazonaws/services/s3/internal/S3Signer;

    if-eqz v1, :cond_7

    invoke-direct {p0, p1, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->I(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/s3/internal/S3Signer;

    move-result-object p1

    return-object p1

    :cond_7
    return-object v0
.end method

.method public a(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;
    .locals 12

    const-string v0, "The request parameter must be specified when uploading a part"

    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getUploadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartNumber()I

    move-result v3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getPartSize()J

    move-result-wide v8

    const-string v4, "The bucket name parameter must be specified when uploading a part"

    invoke-static {v0, v4}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "The key parameter must be specified when uploading a part"

    invoke-static {v1, v4}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "The upload ID parameter must be specified when uploading a part"

    invoke-static {v2, v4}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "The part number parameter must be specified when uploading a part"

    invoke-static {v4, v5}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "The part size parameter must be specified when uploading a part"

    invoke-static {v4, v5}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->G(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v11

    const-string v4, "uploadId"

    invoke-interface {v11, v4, v2}, Lcom/amazonaws/Request;->g(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "partNumber"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v2, v4}, Lcom/amazonaws/Request;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v11, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->X(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    :cond_0
    const-string v2, "Content-MD5"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v2, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->A(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Length"

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v2, v4}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->isRequesterPays()Z

    move-result v2

    invoke-static {v11, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->Y(Lcom/amazonaws/Request;Z)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->Z(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_8

    :try_start_0
    new-instance v2, Lcom/amazonaws/services/s3/internal/InputSubstream;

    new-instance v5, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getFileOffset()J

    move-result-wide v6

    const/4 v10, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/amazonaws/services/s3/internal/InputSubstream;-><init>(Ljava/io/InputStream;JJZ)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->getMd5Digest()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-static {p1, v4}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->g(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/S3ClientOptions;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;

    invoke-direct {v4, v2}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->d(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v5, Lcom/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v5, v2, p1}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    iget v2, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:I

    invoke-virtual {v5, v2}, Lcom/amazonaws/event/ProgressReportingInputStream;->o(I)V

    const/16 v2, 0x400

    invoke-direct {p0, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->L(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    move-object v2, v5

    :cond_3
    :try_start_1
    invoke-interface {v11, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    new-instance v5, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    invoke-direct {p0, v11, v5, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->S(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->h(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/S3ClientOptions;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v4}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->m()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/BinaryUtils;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v1, "Unable to verify integrity of data upload.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3."

    invoke-direct {v0, v1}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_2
    const/16 v1, 0x800

    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->L(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    new-instance v1, Lcom/amazonaws/services/s3/model/UploadPartResult;

    invoke-direct {v1}, Lcom/amazonaws/services/s3/model/UploadPartResult;-><init>()V

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setETag(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setPartNumber(I)V

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/internal/SSEResultBase;->setSSEAlgorithm(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/internal/SSEResultBase;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerKeyMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/internal/SSEResultBase;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->isRequesterCharged()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/UploadPartResult;->setRequesterCharged(Z)V
    :try_end_1
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_6

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_6
    return-object v1

    :goto_3
    const/16 v1, 0x1000

    :try_start_3
    invoke-direct {p0, p1, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->L(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    if-eqz v2, :cond_7

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_7
    throw p1

    :catch_3
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified file doesn\'t exist"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "A File or InputStream must be specified when uploading part"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;
    .locals 14

    const/4 v0, 0x1

    const-string v1, "The request parameter must be specified when completing a multipart upload"

    invoke-static {p1, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "The bucket name parameter must be specified when completing a multipart upload"

    invoke-static {v1, v4}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "The key parameter must be specified when completing a multipart upload"

    invoke-static {v2, v4}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "The upload ID parameter must be specified when completing a multipart upload"

    invoke-static {v3, v4}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v4

    const-string v5, "The part ETags parameter must be specified when completing a multipart upload"

    invoke-static {v4, v5}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    sget-object v6, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v2, p1, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->G(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v6

    const-string v7, "uploadId"

    invoke-interface {v6, v7, v3}, Lcom/amazonaws/Request;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->isRequesterPays()Z

    move-result v7

    invoke-static {v6, v7}, Lcom/amazonaws/services/s3/AmazonS3Client;->Y(Lcom/amazonaws/Request;Z)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;->getPartETags()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/services/s3/model/transform/RequestXmlFactory;->a(Ljava/util/List;)[B

    move-result-object v7

    const-string v8, "Content-Type"

    const-string v9, "application/xml"

    invoke-interface {v6, v8, v9}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    array-length v8, v7

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "Content-Length"

    invoke-interface {v6, v9, v8}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v6, v8}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    new-instance v7, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v8, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller;

    invoke-direct {v8}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$CompleteMultipartUploadResultUnmarshaller;-><init>()V

    new-instance v9, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v9}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    new-instance v10, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;

    invoke-direct {v10}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;-><init>()V

    new-instance v11, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;

    invoke-direct {v11}, Lcom/amazonaws/services/s3/internal/S3VersionHeaderHandler;-><init>()V

    new-instance v12, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;

    invoke-direct {v12}, Lcom/amazonaws/services/s3/internal/S3RequesterChargedHeaderHandler;-><init>()V

    const/4 v13, 0x4

    new-array v13, v13, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    aput-object v9, v13, v4

    aput-object v10, v13, v0

    const/4 v9, 0x2

    aput-object v11, v13, v9

    const/4 v9, 0x3

    aput-object v12, v13, v9

    invoke-direct {v7, v8, v13}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    invoke-direct {p0, v6, v7, v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->S(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->h()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->h()Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->g()Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-direct {p0, p1, v7, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->f0(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/model/AmazonS3Exception;I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v8

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Lcom/amazonaws/services/s3/model/transform/XmlResponsesSaxParser$CompleteMultipartUploadHandler;->g()Lcom/amazonaws/services/s3/model/AmazonS3Exception;

    move-result-object p1

    throw p1
.end method

.method public b0(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 3

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    :cond_0
    invoke-direct {p0, p4, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->g0(Ljava/net/URI;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using virtual style addressing. Endpoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p4, p2}, Lcom/amazonaws/services/s3/AmazonS3Client;->E(Ljava/net/URI;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->s(Ljava/net/URI;)V

    invoke-direct {p0, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using path style addressing. Endpoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    invoke-interface {p1, p4}, Lcom/amazonaws/Request;->s(Ljava/net/URI;)V

    if-eqz p2, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/amazonaws/services/s3/AmazonS3Client;->O(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazonaws/Request;->c(Ljava/lang/String;)V

    :cond_2
    :goto_0
    sget-object p2, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Key: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "; Request: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazonaws/logging/Log;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "The request parameter must be specified when initiating a multipart upload"

    invoke-static {p1, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The bucket name parameter must be specified when initiating a multipart upload"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "The key parameter must be specified when initiating a multipart upload"

    invoke-static {v1, v2}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazonaws/http/HttpMethodName;->POST:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->G(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v1

    const-string v2, "uploads"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getStorageClass()Lcom/amazonaws/services/s3/model/StorageClass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/StorageClass;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-amz-storage-class"

    invoke-interface {v1, v3, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "x-amz-website-redirect-location"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->y(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getCannedACL()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getCannedACL()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-amz-acl"

    invoke-interface {v1, v3, v2}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v2, p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->objectMetadata:Lcom/amazonaws/services/s3/model/ObjectMetadata;

    if-eqz v2, :cond_4

    invoke-static {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->X(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    :cond_4
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getTagging()Lcom/amazonaws/services/s3/model/ObjectTagging;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->i0(Lcom/amazonaws/services/s3/model/ObjectTagging;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "x-amz-tagging"

    invoke-static {v1, v3, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->A(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->isRequesterPays()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->Y(Lcom/amazonaws/Request;Z)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->Z(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->a0(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    invoke-direct {p0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->e0(Lcom/amazonaws/Request;)V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    new-array v3, v0, [B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-interface {v1, v2}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    new-instance v2, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;

    new-instance v3, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/model/transform/Unmarshallers$InitiateMultipartUploadResultUnmarshaller;-><init>()V

    new-instance v4, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;

    invoke-direct {v4}, Lcom/amazonaws/services/s3/internal/ServerSideEncryptionHeaderHandler;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/amazonaws/services/s3/internal/HeaderHandler;

    aput-object v4, v5, v0

    invoke-direct {v2, v3, v5}, Lcom/amazonaws/services/s3/internal/ResponseHeaderHandlerChain;-><init>(Lcom/amazonaws/transform/Unmarshaller;[Lcom/amazonaws/services/s3/internal/HeaderHandler;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v2, v0, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->S(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    return-object p1
.end method

.method public d(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;
    .locals 8

    const-string v0, "The GetObjectRequest parameter must be specified when requesting an object"

    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when requesting an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when requesting an object"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->GET:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->G(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "versionId"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getVersionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazonaws/Request;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getRange()[J

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-wide v4, v1, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, v1, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v1, "Range"

    invoke-interface {v0, v1, v3}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->isRequesterPays()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->Y(Lcom/amazonaws/Request;Z)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getResponseHeaders()Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->B(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ResponseHeaderOverrides;)V

    const-string v1, "If-Modified-Since"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getModifiedSinceConstraint()Ljava/util/Date;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->z(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    const-string v1, "If-Unmodified-Since"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getUnmodifiedSinceConstraint()Ljava/util/Date;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->z(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/Date;)V

    const-string v1, "If-Match"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getMatchingETagConstraints()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->C(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    const-string v1, "If-None-Match"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getNonmatchingETagConstraints()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/amazonaws/services/s3/AmazonS3Client;->C(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->Z(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v1

    invoke-static {v1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->d(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object v1

    :try_start_0
    new-instance v3, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;

    invoke-direct {v3}, Lcom/amazonaws/services/s3/internal/S3ObjectResponseHandler;-><init>()V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->S(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/model/S3Object;

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/S3Object;->setBucketName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amazonaws/services/s3/model/S3Object;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectContent()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    move-result-object v3

    new-instance v4, Lcom/amazonaws/util/ServiceClientHolderInputStream;

    invoke-direct {v4, v3, p0}, Lcom/amazonaws/util/ServiceClientHolderInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/AmazonWebServiceClient;)V

    if-eqz v1, :cond_3

    new-instance v3, Lcom/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v3, v4, v1}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    invoke-virtual {v3, v2}, Lcom/amazonaws/event/ProgressReportingInputStream;->n(Z)V

    iget v4, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->q:I

    invoke-virtual {v3, v4}, Lcom/amazonaws/event/ProgressReportingInputStream;->o(I)V

    const/4 v4, 0x2

    invoke-direct {p0, v1, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->L(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    move-object v4, v3

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-static {p1, v3}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->g(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/S3ClientOptions;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    iget-object v3, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-static {p1, v3}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->h(Lcom/amazonaws/services/s3/model/ObjectMetadata;Lcom/amazonaws/services/s3/S3ClientOptions;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazonaws/util/BinaryUtils;->b(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    new-instance v3, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;

    invoke-direct {v3, v4, v2, p1}, Lcom/amazonaws/services/s3/internal/DigestValidationInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;[B)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v3

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_2
    sget-object v2, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    const-string v3, "No MD5 digest algorithm available. Unable to calculate checksum and verify data integrity."

    invoke-interface {v2, v3, p1}, Lcom/amazonaws/logging/Log;->i(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/amazonaws/util/LengthCheckInputStream;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->getObjectMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentLength()J

    move-result-wide v5

    invoke-direct {p1, v4, v5, v6, v2}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    move-object v4, p1

    :cond_5
    :goto_1
    new-instance p1, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    invoke-direct {p1, v4}, Lcom/amazonaws/services/s3/model/S3ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/S3Object;->setObjectContent(Lcom/amazonaws/services/s3/model/S3ObjectInputStream;)V
    :try_end_2
    .catch Lcom/amazonaws/services/s3/model/AmazonS3Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :goto_2
    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v0

    const/16 v2, 0x19c

    if-eq v0, v2, :cond_7

    invoke-virtual {p1}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v0

    const/16 v2, 0x130

    if-ne v0, v2, :cond_6

    goto :goto_3

    :cond_6
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->L(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    throw p1

    :cond_7
    :goto_3
    const/16 p1, 0x10

    invoke-direct {p0, v1, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->L(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public d0(Lcom/amazonaws/services/s3/S3ClientOptions;)V
    .locals 1

    new-instance v0, Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-direct {v0, p1}, Lcom/amazonaws/services/s3/S3ClientOptions;-><init>(Lcom/amazonaws/services/s3/S3ClientOptions;)V

    iput-object v0, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    return-void
.end method

.method public e(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V
    .locals 5

    const-string v0, "The request parameter must be specified when aborting a multipart upload"

    invoke-static {p1, v0}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The bucket name parameter must be specified when aborting a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The key parameter must be specified when aborting a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The upload ID parameter must be specified when aborting a multipart upload"

    invoke-static {v0, v1}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazonaws/http/HttpMethodName;->DELETE:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->G(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v2

    const-string v3, "uploadId"

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->getUploadId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/amazonaws/Request;->g(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;->isRequesterPays()Z

    move-result p1

    invoke-static {v2, p1}, Lcom/amazonaws/services/s3/AmazonS3Client;->Y(Lcom/amazonaws/Request;Z)V

    iget-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->m:Lcom/amazonaws/services/s3/internal/S3XmlResponseHandler;

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/amazonaws/services/s3/AmazonS3Client;->S(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public f(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Unable to cleanly close input stream: "

    const-string v3, "The PutObjectRequest parameter must be specified when uploading an object"

    invoke-static {v0, v3}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getMetadata()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getGeneralProgressListener()Lcom/amazonaws/event/ProgressListener;

    move-result-object v7

    invoke-static {v7}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->d(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    move-result-object v7

    if-nez v5, :cond_0

    new-instance v5, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    invoke-direct {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    :cond_0
    const-string v8, "The bucket name parameter must be specified when uploading an object"

    invoke-static {v3, v8}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "The key parameter must be specified when uploading an object"

    invoke-static {v4, v8}, Lcom/amazonaws/util/ValidationUtils;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v1, Lcom/amazonaws/services/s3/AmazonS3Client;->n:Lcom/amazonaws/services/s3/S3ClientOptions;

    invoke-static {v0, v8}, Lcom/amazonaws/services/s3/internal/ServiceUtils;->g(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/services/s3/S3ClientOptions;)Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentLength(J)V

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    move v9, v10

    goto :goto_0

    :cond_1
    move v9, v11

    :goto_0
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->a()Lcom/amazonaws/services/s3/util/Mimetypes;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/amazonaws/services/s3/util/Mimetypes;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    :cond_2
    if-eqz v9, :cond_3

    if-nez v8, :cond_3

    :try_start_0
    invoke-static {v6}, Lcom/amazonaws/util/Md5Utils;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentMD5(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Lcom/amazonaws/AmazonClientException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to calculate MD5 hash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_3
    :goto_1
    :try_start_1
    new-instance v9, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;

    invoke-direct {v9, v6}, Lcom/amazonaws/services/s3/internal/RepeatableFileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v9

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v2, Lcom/amazonaws/AmazonClientException;

    const-string v3, "Unable to find file to upload"

    invoke-direct {v2, v3, v0}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    :goto_2
    sget-object v9, Lcom/amazonaws/http/HttpMethodName;->PUT:Lcom/amazonaws/http/HttpMethodName;

    invoke-virtual {v1, v3, v4, v0, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->G(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/http/HttpMethodName;)Lcom/amazonaws/Request;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getAccessControlList()Lcom/amazonaws/services/s3/model/AccessControlList;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/amazonaws/services/s3/AmazonS3Client;->y(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/AccessControlList;)V

    goto :goto_3

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getCannedAcl()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "x-amz-acl"

    invoke-interface {v9, v13, v12}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    const-string v12, "x-amz-storage-class"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getStorageClass()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    const-string v12, "x-amz-website-redirect-location"

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getRedirectLocation()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_8

    invoke-direct {v1, v9}, Lcom/amazonaws/services/s3/AmazonS3Client;->e0(Lcom/amazonaws/Request;)V

    new-instance v6, Ljava/io/ByteArrayInputStream;

    new-array v12, v11, [B

    invoke-direct {v6, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getTagging()Lcom/amazonaws/services/s3/model/ObjectTagging;

    move-result-object v12

    invoke-direct {v1, v12}, Lcom/amazonaws/services/s3/AmazonS3Client;->i0(Lcom/amazonaws/services/s3/model/ObjectTagging;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "x-amz-tagging"

    invoke-static {v9, v13, v12}, Lcom/amazonaws/services/s3/AmazonS3Client;->A(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->isRequesterPays()Z

    move-result v12

    invoke-static {v9, v12}, Lcom/amazonaws/services/s3/AmazonS3Client;->Y(Lcom/amazonaws/Request;Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getSSECustomerKey()Lcom/amazonaws/services/s3/model/SSECustomerKey;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/amazonaws/services/s3/AmazonS3Client;->Z(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSECustomerKey;)V

    const-string v12, "Content-Length"

    invoke-virtual {v5, v12}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getRawMetadataValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-nez v13, :cond_a

    invoke-virtual {v6}, Ljava/io/InputStream;->markSupported()Z

    move-result v11

    if-nez v11, :cond_9

    sget-object v11, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    const-string v13, "No content length specified for stream data.  Stream contents will be buffered in memory and could result in out of memory errors."

    invoke-interface {v11, v13}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    invoke-direct {v1, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->h0(Ljava/io/InputStream;)Ljava/io/ByteArrayInputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v12, v11}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v10}, Lcom/amazonaws/Request;->n(Z)V

    goto :goto_4

    :cond_9
    invoke-direct {v1, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->D(Ljava/io/InputStream;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v12, v10}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v10, v14, v16

    if-ltz v10, :cond_b

    new-instance v10, Lcom/amazonaws/util/LengthCheckInputStream;

    invoke-direct {v10, v6, v14, v15, v11}, Lcom/amazonaws/util/LengthCheckInputStream;-><init>(Ljava/io/InputStream;JZ)V

    invoke-virtual {v13}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v12, v6}, Lcom/amazonaws/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v10

    :cond_b
    :goto_4
    if-eqz v7, :cond_c

    new-instance v10, Lcom/amazonaws/event/ProgressReportingInputStream;

    invoke-direct {v10, v6, v7}, Lcom/amazonaws/event/ProgressReportingInputStream;-><init>(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    iget v6, v1, Lcom/amazonaws/services/s3/AmazonS3Client;->q:I

    invoke-virtual {v10, v6}, Lcom/amazonaws/event/ProgressReportingInputStream;->o(I)V

    const/4 v6, 0x2

    invoke-direct {v1, v7, v6}, Lcom/amazonaws/services/s3/AmazonS3Client;->L(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    move-object v6, v10

    :cond_c
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_d

    if-nez v8, :cond_d

    new-instance v10, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;

    invoke-direct {v10, v6}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v10

    goto :goto_5

    :cond_d
    const/4 v10, 0x0

    :goto_5
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentType()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_e

    const-string v11, "application/octet-stream"

    invoke-virtual {v5, v11}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->setContentType(Ljava/lang/String;)V

    :cond_e
    invoke-static {v9, v5}, Lcom/amazonaws/services/s3/AmazonS3Client;->X(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    invoke-virtual/range {p1 .. p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->getSSEAwsKeyManagementParams()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;->a0(Lcom/amazonaws/Request;Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    invoke-interface {v9, v6}, Lcom/amazonaws/Request;->a(Ljava/io/InputStream;)V

    const/16 v11, 0x8

    :try_start_2
    new-instance v0, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;

    invoke-direct {v0}, Lcom/amazonaws/services/s3/internal/S3MetadataResponseHandler;-><init>()V

    invoke-direct {v1, v9, v0, v3, v4}, Lcom/amazonaws/services/s3/AmazonS3Client;->S(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/amazonaws/services/s3/model/ObjectMetadata;
    :try_end_2
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lcom/amazonaws/AbortedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v4, v0

    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :catch_3
    :goto_6
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getContentMD5()Ljava/lang/String;

    move-result-object v0

    if-eqz v10, :cond_f

    invoke-virtual {v10}, Lcom/amazonaws/services/s3/internal/MD5DigestCalculatingInputStream;->m()[B

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/BinaryUtils;->c([B)Ljava/lang/String;

    move-result-object v0

    :cond_f
    if-eqz v3, :cond_11

    if-eqz v0, :cond_11

    if-nez v8, :cond_11

    invoke-static {v0}, Lcom/amazonaws/util/BinaryUtils;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazonaws/util/BinaryUtils;->b(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_7

    :cond_10
    invoke-direct {v1, v7, v11}, Lcom/amazonaws/services/s3/AmazonS3Client;->L(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    new-instance v0, Lcom/amazonaws/AmazonClientException;

    const-string v2, "Unable to verify integrity of data upload.  Client calculated content hash didn\'t match hash calculated by Amazon S3.  You may need to delete the data stored in Amazon S3."

    invoke-direct {v0, v2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_7
    const/4 v2, 0x4

    invoke-direct {v1, v7, v2}, Lcom/amazonaws/services/s3/AmazonS3Client;->L(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    new-instance v2, Lcom/amazonaws/services/s3/model/PutObjectResult;

    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/PutObjectResult;-><init>()V

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getVersionId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setVersionId(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSEAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/internal/SSEResultBase;->setSSEAlgorithm(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/internal/SSEResultBase;->setSSECustomerAlgorithm(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getSSECustomerKeyMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/internal/SSEResultBase;->setSSECustomerKeyMd5(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getExpirationTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setExpirationTime(Ljava/util/Date;)V

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getExpirationTimeRuleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setExpirationTimeRuleId(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->getETag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setETag(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectResult;->b(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->isRequesterCharged()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/PutObjectResult;->setRequesterCharged(Z)V

    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/PutObjectResult;->a(Ljava/lang/String;)V

    return-object v2

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_8

    :catch_4
    move-exception v0

    :try_start_4
    invoke-direct {v1, v7, v11}, Lcom/amazonaws/services/s3/AmazonS3Client;->L(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;I)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_8
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Lcom/amazonaws/AbortedException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    :catch_5
    move-exception v0

    move-object v4, v0

    sget-object v0, Lcom/amazonaws/services/s3/AmazonS3Client;->s:Lcom/amazonaws/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v4}, Lcom/amazonaws/logging/Log;->g(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :catch_6
    :goto_9
    throw v3
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "s3-accelerate.amazonaws.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->v(Ljava/lang/String;)V

    const-string v0, "s3.amazonaws.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    const-string v0, "s3"

    invoke-static {p1, v0}, Lcom/amazonaws/util/AwsHostNameUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "To enable accelerate mode, please use AmazonS3Client.setS3ClientOptions(S3ClientOptions.builder().setAccelerateModeEnabled(true).build());"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w(Lcom/amazonaws/regions/Region;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->w(Lcom/amazonaws/regions/Region;)V

    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/services/s3/AmazonS3Client;->p:Ljava/lang/String;

    return-void
.end method
