.class Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$d;
.super Ljava/lang/Object;

# interfaces
.implements Lbv/j;


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

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$d;->a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$d;->a:Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;

    iget-object v0, v0, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->l:Lbv/j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lbv/j;->a()V

    :cond_0
    return-void
.end method
