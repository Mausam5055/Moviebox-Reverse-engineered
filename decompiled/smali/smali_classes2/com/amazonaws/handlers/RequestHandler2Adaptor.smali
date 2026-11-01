.class final Lcom/amazonaws/handlers/RequestHandler2Adaptor;
.super Lcom/amazonaws/handlers/RequestHandler2;


# direct methods
.method constructor <init>(Lcom/amazonaws/handlers/RequestHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/handlers/RequestHandler2;-><init>()V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public b(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/lang/Exception;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public c(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/amazonaws/Request;->b()Lcom/amazonaws/util/AWSRequestMetrics;

    move-result-object p1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/amazonaws/Response;->a()Ljava/lang/Object;

    :goto_1
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/amazonaws/util/AWSRequestMetrics;->c()Lcom/amazonaws/util/TimingInfo;

    :goto_2
    throw v0
.end method

.method public d(Lcom/amazonaws/Request;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/amazonaws/handlers/RequestHandler2Adaptor;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/amazonaws/handlers/RequestHandler2Adaptor;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    throw p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method
