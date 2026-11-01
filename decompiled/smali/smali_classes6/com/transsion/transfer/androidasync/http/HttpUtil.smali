.class public Lcom/transsion/transfer/androidasync/http/HttpUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/transsion/transfer/androidasync/http/Headers;)J
    .locals 2

    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v0
.end method

.method public static b(Lcom/transsion/transfer/androidasync/p;Lbv/a;Lcom/transsion/transfer/androidasync/http/Headers;)Lcv/a;
    .locals 3

    const-string p0, "Content-Type"

    invoke-virtual {p2, p0}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    :goto_1
    if-ge p2, v0, :cond_5

    aget-object v1, p1, p2

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Lcv/h;

    invoke-direct {p0}, Lcv/h;-><init>()V

    return-object p0

    :cond_1
    const-string v2, "application/json"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance p0, Lcv/b;

    invoke-direct {p0}, Lcv/b;-><init>()V

    return-object p0

    :cond_2
    const-string v2, "text/plain"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance p0, Lcv/f;

    invoke-direct {p0}, Lcv/f;-><init>()V

    return-object p0

    :cond_3
    if-eqz v1, :cond_4

    const-string v2, "multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcv/c;

    invoke-direct {p1, p0}, Lcv/c;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/http/Protocol;Lcom/transsion/transfer/androidasync/http/Headers;Z)Lcom/transsion/transfer/androidasync/p;
    .locals 6

    const-wide/16 v0, -0x1

    :try_start_0
    const-string p1, "Content-Length"

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-wide v2, v0

    :goto_0
    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    invoke-interface {p0}, Lcom/transsion/transfer/androidasync/p;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object p1

    new-instance p2, Lcom/transsion/transfer/androidasync/http/BodyDecoderException;

    const-string p3, "not using chunked encoding, and no content-length found."

    invoke-direct {p2, p3}, Lcom/transsion/transfer/androidasync/http/BodyDecoderException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;->P(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/Exception;)Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    return-object p1

    :cond_1
    if-nez p1, :cond_2

    invoke-interface {p0}, Lcom/transsion/transfer/androidasync/p;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;->P(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/Exception;)Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    return-object p1

    :cond_2
    new-instance p1, Lev/b;

    invoke-direct {p1, v2, v3}, Lev/b;-><init>(J)V

    invoke-virtual {p1, p0}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    :goto_1
    move-object p0, p1

    goto :goto_2

    :cond_3
    const-string p1, "Transfer-Encoding"

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "chunked"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;

    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/http/filter/ChunkedInputFilter;-><init>()V

    invoke-virtual {p1, p0}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    invoke-interface {p0}, Lcom/transsion/transfer/androidasync/p;->a()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;->P(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/Exception;)Lcom/transsion/transfer/androidasync/http/HttpUtil$EndEmitter;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    return-object p1

    :cond_5
    :goto_2
    const-string p1, "Content-Encoding"

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "gzip"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    new-instance p1, Lev/c;

    invoke-direct {p1}, Lev/c;-><init>()V

    invoke-virtual {p1, p0}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    :goto_3
    move-object p0, p1

    goto :goto_4

    :cond_6
    const-string p3, "deflate"

    invoke-virtual {p2, p1}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Lev/d;

    invoke-direct {p1}, Lev/d;-><init>()V

    invoke-virtual {p1, p0}, Lcom/transsion/transfer/androidasync/t;->N(Lcom/transsion/transfer/androidasync/p;)V

    goto :goto_3

    :cond_7
    :goto_4
    return-object p0
.end method

.method public static d(Lcom/transsion/transfer/androidasync/http/Protocol;Lcom/transsion/transfer/androidasync/http/Headers;)Z
    .locals 1

    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_1:Lcom/transsion/transfer/androidasync/http/Protocol;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const-string p0, "keep-alive"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static e(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/Headers;)Z
    .locals 1

    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/http/Headers;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/transsion/transfer/androidasync/http/Protocol;->get(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/Protocol;

    move-result-object p0

    sget-object p1, Lcom/transsion/transfer/androidasync/http/Protocol;->HTTP_1_1:Lcom/transsion/transfer/androidasync/http/Protocol;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    const-string p0, "keep-alive"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
