.class public abstract Lcom/amazonaws/AmazonWebServiceClient;
.super Ljava/lang/Object;


# static fields
.field private static final k:Lcom/amazonaws/logging/Log;


# instance fields
.field protected volatile a:Ljava/net/URI;

.field private volatile b:Ljava/lang/String;

.field protected c:Lcom/amazonaws/ClientConfiguration;

.field protected d:Lcom/amazonaws/http/AmazonHttpClient;

.field protected final e:Ljava/util/List;

.field protected f:I

.field private volatile g:Lcom/amazonaws/auth/Signer;

.field private volatile h:Ljava/lang/String;

.field protected volatile i:Ljava/lang/String;

.field private volatile j:Lcom/amazonaws/regions/Region;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amazonaws/AmazonWebServiceClient;

    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/AmazonWebServiceClient;->k:Lcom/amazonaws/logging/Log;

    return-void
.end method

.method protected constructor <init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    new-instance v0, Lcom/amazonaws/http/AmazonHttpClient;

    invoke-direct {v0, p1, p2}, Lcom/amazonaws/http/AmazonHttpClient;-><init>(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->e:Ljava/util/List;

    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/amazonaws/AmazonWebServiceClient;

    invoke-static {v0, p0}, Lcom/amazonaws/util/Classes;->childClassOf(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/ServiceNameFactory;->getServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const-string v1, "JavaClient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const-string v1, "Client"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized suffix for the AWS http client class name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    const-string v3, "Amazon"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_4

    const-string v3, "AWS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_3

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized prefix for the AWS http client class name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v2, 0x6

    :goto_1
    if-ge v3, v1, :cond_5

    add-int/2addr v3, v2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazonaws/util/StringUtils;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized AWS http client class name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v0}, Lcom/amazonaws/ClientConfiguration;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/amazonaws/auth/SignerFactory;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Lcom/amazonaws/auth/SignerFactory;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    :goto_0
    instance-of v0, p1, Lcom/amazonaws/auth/RegionAwareSigner;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/amazonaws/auth/RegionAwareSigner;

    if-eqz p3, :cond_1

    invoke-interface {v0, p3}, Lcom/amazonaws/auth/RegionAwareSigner;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    if-eqz p4, :cond_2

    invoke-interface {v0, p2}, Lcom/amazonaws/auth/RegionAwareSigner;->c(Ljava/lang/String;)V

    :cond_2
    :goto_1
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/amazonaws/regions/Region;->f(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    move-result-object p2

    iput-object p2, p0, Lcom/amazonaws/AmazonWebServiceClient;->j:Lcom/amazonaws/regions/Region;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private i(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->o()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/amazonaws/util/AwsHostNameUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazonaws/AmazonWebServiceClient;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Endpoint is not set. Use setEndpoint to set an endpoint before performing any request."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static r()Z
    .locals 1

    const-string v0, "com.amazonaws.sdk.enableRuntimeProfiling"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private s()Z
    .locals 1

    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->u()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazonaws/metrics/RequestMetricCollector;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private x(Ljava/lang/String;)Ljava/net/URI;
    .locals 3

    const-string v0, "://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazonaws/AmazonWebServiceClient;->c:Lcom/amazonaws/ClientConfiguration;

    invoke-virtual {v2}, Lcom/amazonaws/ClientConfiguration;->c()Lcom/amazonaws/Protocol;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazonaws/Protocol;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method protected final j(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/amazonaws/AmazonWebServiceClient;->k(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V

    return-void
.end method

.method protected final k(Lcom/amazonaws/util/AWSRequestMetrics;Lcom/amazonaws/Request;Lcom/amazonaws/Response;Z)V
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/amazonaws/util/AWSRequestMetrics$Field;->ClientExecuteTime:Lcom/amazonaws/util/AWSRequestMetrics$Field;

    invoke-virtual {p1, v0}, Lcom/amazonaws/util/AWSRequestMetrics;->b(Lcom/amazonaws/metrics/MetricType;)V

    invoke-virtual {p1}, Lcom/amazonaws/util/AWSRequestMetrics;->c()Lcom/amazonaws/util/TimingInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/util/TimingInfo;->c()Lcom/amazonaws/util/TimingInfo;

    invoke-virtual {p0, p2}, Lcom/amazonaws/AmazonWebServiceClient;->l(Lcom/amazonaws/Request;)Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/amazonaws/metrics/RequestMetricCollector;->a(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p1}, Lcom/amazonaws/util/AWSRequestMetrics;->e()V

    :cond_1
    return-void
.end method

.method protected final l(Lcom/amazonaws/Request;)Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 0

    invoke-interface {p1}, Lcom/amazonaws/Request;->l()Lcom/amazonaws/AmazonWebServiceRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->n()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->i:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->f()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    return-object v0
.end method

.method protected o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->h:Ljava/lang/String;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceClient;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->h:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    goto :goto_1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->h:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/AmazonWebServiceClient;->i(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    return-object p1
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final t(Lcom/amazonaws/AmazonWebServiceRequest;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/amazonaws/AmazonWebServiceRequest;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazonaws/metrics/RequestMetricCollector;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/amazonaws/AmazonWebServiceClient;->s()Z

    move-result p1

    return p1
.end method

.method protected u()Lcom/amazonaws/metrics/RequestMetricCollector;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->d:Lcom/amazonaws/http/AmazonHttpClient;

    invoke-virtual {v0}, Lcom/amazonaws/http/AmazonHttpClient;->f()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazonaws/metrics/AwsSdkMetrics;->getRequestMetricCollector()Lcom/amazonaws/metrics/RequestMetricCollector;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->x(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iget-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazonaws/AmazonWebServiceClient;->i(Ljava/net/URI;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    iput-object v0, p0, Lcom/amazonaws/AmazonWebServiceClient;->g:Lcom/amazonaws/auth/Signer;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public w(Lcom/amazonaws/regions/Region;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/amazonaws/regions/Region;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/amazonaws/regions/Region;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_1

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "%s.%s.%s"

    invoke-virtual {p0}, Lcom/amazonaws/AmazonWebServiceClient;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->a()Ljava/lang/String;

    move-result-object v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    const/4 v4, 0x1

    aput-object v5, v1, v4

    const/4 v4, 0x2

    aput-object v6, v1, v4

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-direct {p0, v3}, Lcom/amazonaws/AmazonWebServiceClient;->x(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazonaws/regions/Region;->d()Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/amazonaws/AmazonWebServiceClient;->b:Ljava/lang/String;

    invoke-direct {p0, v2, p1, v3, v0}, Lcom/amazonaws/AmazonWebServiceClient;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    monitor-enter p0

    :try_start_0
    iput-object v1, p0, Lcom/amazonaws/AmazonWebServiceClient;->a:Ljava/net/URI;

    iput-object p1, p0, Lcom/amazonaws/AmazonWebServiceClient;->g:Lcom/amazonaws/auth/Signer;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No region provided"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
