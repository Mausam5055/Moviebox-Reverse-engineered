.class abstract Lcom/facebook/biddingkit/logging/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/biddingkit/logging/g$b;,
        Lcom/facebook/biddingkit/logging/g$d;,
        Lcom/facebook/biddingkit/logging/g$c;,
        Lcom/facebook/biddingkit/logging/g$e;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    invoke-static {p0, v0}, Lcom/facebook/biddingkit/logging/g;->b(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lcom/facebook/biddingkit/logging/g$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/facebook/biddingkit/logging/g$b;-><init>(Lcom/facebook/biddingkit/logging/g$a;)V

    if-ltz p1, :cond_1

    new-instance v2, Lcom/facebook/biddingkit/logging/g$c;

    invoke-direct {v2, v1, p1}, Lcom/facebook/biddingkit/logging/g$c;-><init>(Lcom/facebook/biddingkit/logging/g$d;I)V

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    new-instance p1, Ljava/io/PrintWriter;

    new-instance v3, Lcom/facebook/biddingkit/logging/g$e;

    invoke-direct {v3, v2}, Lcom/facebook/biddingkit/logging/g$e;-><init>(Lcom/facebook/biddingkit/logging/g$d;)V

    invoke-direct {p1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-interface {v2}, Lcom/facebook/biddingkit/logging/g$d;->flush()V

    invoke-virtual {v1}, Lcom/facebook/biddingkit/logging/g$b;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method
