.class public Lcom/facebook/biddingkit/http/client/HttpRequestException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = -0x217eef64b70b44c1L


# instance fields
.field private httpResponse:Ll8/e;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;Ll8/e;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    iput-object p2, p0, Lcom/facebook/biddingkit/http/client/HttpRequestException;->httpResponse:Ll8/e;

    return-void
.end method


# virtual methods
.method public getHttpResponse()Ll8/e;
    .locals 1

    iget-object v0, p0, Lcom/facebook/biddingkit/http/client/HttpRequestException;->httpResponse:Ll8/e;

    return-object v0
.end method
