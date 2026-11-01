.class Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$c;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->w(Lcom/transsion/transfer/androidasync/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$c;->a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$c;->a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    invoke-interface {v1, p1, v0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/a;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$c;->a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "socket closed during handshake"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;->a(Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/a;)V

    :goto_0
    return-void
.end method
