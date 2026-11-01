.class public Lcom/amazonaws/internal/config/InternalConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/internal/config/InternalConfig$Factory;
    }
.end annotation


# static fields
.field private static final g:Lcom/amazonaws/logging/Log;


# instance fields
.field private final a:Lcom/amazonaws/internal/config/SignerConfig;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/internal/config/InternalConfig;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/internal/config/InternalConfig;->g:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->f()Lcom/amazonaws/internal/config/SignerConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->a:Lcom/amazonaws/internal/config/SignerConfig;

    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->c()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->c:Ljava/util/Map;

    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->e()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->d:Ljava/util/Map;

    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->d()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->b:Ljava/util/Map;

    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->b()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->e:Ljava/util/Map;

    invoke-static {}, Lcom/amazonaws/internal/config/InternalConfig;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->f:Ljava/util/List;

    return-void
.end method

.method private static a()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;

    const-string v2, "(.+\\.)?s3\\.amazonaws\\.com"

    const-string v3, "us-east-1"

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;

    const-string v2, "(.+\\.)?s3-external-1\\.amazonaws\\.com"

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;

    const-string v2, "(.+\\.)?s3-fips-us-gov-west-1\\.amazonaws\\.com"

    const-string v3, "us-gov-west-1"

    invoke-direct {v1, v2, v3}, Lcom/amazonaws/internal/config/HostRegexToRegionMapping;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static b()Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "monitoring"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonCloudWatchClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "logs"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonCloudWatchLogsClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "cognito-identity"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonCognitoIdentityClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "cognito-idp"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonCognitoIdentityProviderClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "cognito-sync"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonCognitoSyncClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "comprehend"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonComprehendClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "connect"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonConnectClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "firehose"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonKinesisFirehoseClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "kinesisvideo"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "AWSKinesisVideoArchivedMediaClient"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AWSKinesisVideoSignalingClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "execute-api"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AWSIotClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "runtime.lex"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonLexRuntimeClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "mobiletargeting"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonPinpointClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "mobileanalytics"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonPinpointAnalyticsClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "sagemaker"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonSageMakerRuntimeClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "sdb"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonSimpleDBClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "email"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonSimpleEmailServiceClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "sts"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AWSSecurityTokenServiceClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "textract"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonTextractClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "transcribe"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonTranscribeClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/HttpClientConfig;

    const-string v2, "translate"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/HttpClientConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "AmazonTranslateClient"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static c()Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v2, "AWS4SignerType"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "eu-central-1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "cn-north-1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static d()Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v2, "AWSS3V4SignerType"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "s3/eu-central-1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "s3/cn-north-1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "s3/us-east-2"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "s3/ca-central-1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "s3/ap-south-1"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "s3/ap-northeast-2"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "s3/eu-west-2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static e()Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v2, "QueryStringSignerType"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "ec2"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWS4SignerType"

    invoke-direct {v1, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "email"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v3, "AWSS3V4SignerType"

    invoke-direct {v1, v3}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v3, "s3"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "sdb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v2, "AmazonLexV4Signer"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "runtime.lex"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v2, "AmazonPollyCustomPresigner"

    invoke-direct {v1, v2}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    const-string v2, "polly"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private static f()Lcom/amazonaws/internal/config/SignerConfig;
    .locals 2

    new-instance v0, Lcom/amazonaws/internal/config/SignerConfig;

    const-string v1, "AWS4SignerType"

    invoke-direct {v0, v1}, Lcom/amazonaws/internal/config/SignerConfig;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lcom/amazonaws/internal/config/HttpClientConfig;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/internal/config/HttpClientConfig;

    return-object p1
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/config/SignerConfig;
    .locals 2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/amazonaws/internal/config/InternalConfig;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/internal/config/SignerConfig;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazonaws/internal/config/InternalConfig;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazonaws/internal/config/SignerConfig;

    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    iget-object p2, p0, Lcom/amazonaws/internal/config/InternalConfig;->d:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/internal/config/SignerConfig;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/amazonaws/internal/config/InternalConfig;->a:Lcom/amazonaws/internal/config/SignerConfig;

    :cond_2
    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method
