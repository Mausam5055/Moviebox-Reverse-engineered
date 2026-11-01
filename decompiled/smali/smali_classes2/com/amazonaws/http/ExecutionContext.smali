.class public Lcom/amazonaws/http/ExecutionContext;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/amazonaws/util/AWSRequestMetrics;

.field private final b:Ljava/util/List;

.field private c:Ljava/lang/String;

.field private final d:Lcom/amazonaws/AmazonWebServiceClient;

.field private e:Lcom/amazonaws/auth/AWSCredentials;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v0}, Lcom/amazonaws/http/ExecutionContext;-><init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->b:Ljava/util/List;

    if-eqz p2, :cond_0

    new-instance p1, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;

    invoke-direct {p1}, Lcom/amazonaws/util/AWSRequestMetricsFullSupport;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/amazonaws/util/AWSRequestMetrics;

    invoke-direct {p1}, Lcom/amazonaws/util/AWSRequestMetrics;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    iput-object p3, p0, Lcom/amazonaws/http/ExecutionContext;->d:Lcom/amazonaws/AmazonWebServiceClient;

    return-void
.end method


# virtual methods
.method public a()Lcom/amazonaws/util/AWSRequestMetrics;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->a:Lcom/amazonaws/util/AWSRequestMetrics;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/amazonaws/auth/AWSCredentials;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->e:Lcom/amazonaws/auth/AWSCredentials;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->b:Ljava/util/List;

    return-object v0
.end method

.method public e(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/http/ExecutionContext;->d:Lcom/amazonaws/AmazonWebServiceClient;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amazonaws/AmazonWebServiceClient;->p(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public f(Lcom/amazonaws/auth/AWSCredentials;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/http/ExecutionContext;->e:Lcom/amazonaws/auth/AWSCredentials;

    return-void
.end method

.method public g(Lcom/amazonaws/auth/Signer;)V
    .locals 0

    return-void
.end method
