.class public abstract synthetic Lcom/mbridge/msdk/thrid/okhttp/internal/platform/h;
.super Ljava/lang/Object;


# direct methods
.method public static bridge synthetic a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
