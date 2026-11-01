.class public Ll8/b;
.super Ll8/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ll8/d;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    sget-object p1, Lcom/facebook/biddingkit/http/client/HttpMethod;->GET:Lcom/facebook/biddingkit/http/client/HttpMethod;

    iput-object p1, p0, Ll8/d;->b:Lcom/facebook/biddingkit/http/client/HttpMethod;

    return-void
.end method
