.class Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$e;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;-><init>(Lcom/transsion/transfer/androidasync/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$e;->a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$e;->a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;

    iget-boolean v1, v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->p:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->p:Z

    iput-object p1, v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->q:Ljava/lang/Exception;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->r:Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->r()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$e;->a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->u:Lbv/a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lbv/a;->g(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method
