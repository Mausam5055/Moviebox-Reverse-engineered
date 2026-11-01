.class public Lcom/transsion/transfer/androidasync/http/n;
.super Lcom/transsion/transfer/androidasync/http/t;


# instance fields
.field protected j:Ljavax/net/ssl/SSLContext;

.field protected k:[Ljavax/net/ssl/TrustManager;

.field protected l:Ljavax/net/ssl/HostnameVerifier;

.field protected m:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;)V
    .locals 2

    const-string v0, "https"

    const/16 v1, 0x1bb

    invoke-direct {p0, p1, v0, v1}, Lcom/transsion/transfer/androidasync/http/t;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ljava/lang/String;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/http/n;->m:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public A(Lcom/transsion/transfer/androidasync/http/m;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected B(Lcom/transsion/transfer/androidasync/http/g$a;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 4

    invoke-virtual {p0}, Lcom/transsion/transfer/androidasync/http/n;->D()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/http/n;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/transfer/androidasync/http/m;

    invoke-interface {v2, v0, p2, p3}, Lcom/transsion/transfer/androidasync/http/m;->a(Ljavax/net/ssl/SSLContext;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/transfer/androidasync/http/m;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/transsion/transfer/androidasync/http/m;->b(Ljavax/net/ssl/SSLEngine;Lcom/transsion/transfer/androidasync/http/g$a;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method protected C(Lcom/transsion/transfer/androidasync/http/g$a;Lbv/b;)Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;
    .locals 0

    new-instance p1, Lcom/transsion/transfer/androidasync/http/n$a;

    invoke-direct {p1, p0, p2}, Lcom/transsion/transfer/androidasync/http/n$a;-><init>(Lcom/transsion/transfer/androidasync/http/n;Lbv/b;)V

    return-object p1
.end method

.method public D()Ljavax/net/ssl/SSLContext;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/http/n;->j:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->q()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected E(Lcom/transsion/transfer/androidasync/j;Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;ILbv/b;)V
    .locals 8

    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p2, p3, p4}, Lcom/transsion/transfer/androidasync/http/n;->B(Lcom/transsion/transfer/androidasync/http/g$a;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v3

    iget-object v4, p0, Lcom/transsion/transfer/androidasync/http/n;->k:[Ljavax/net/ssl/TrustManager;

    iget-object v5, p0, Lcom/transsion/transfer/androidasync/http/n;->l:Ljavax/net/ssl/HostnameVerifier;

    const/4 v6, 0x1

    invoke-virtual {p0, p2, p5}, Lcom/transsion/transfer/androidasync/http/n;->C(Lcom/transsion/transfer/androidasync/http/g$a;Lbv/b;)Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;

    move-result-object v7

    move-object v0, p1

    move v2, p4

    invoke-static/range {v0 .. v7}, Lcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper;->w(Lcom/transsion/transfer/androidasync/j;Ljava/lang/String;ILjavax/net/ssl/SSLEngine;[Ljavax/net/ssl/TrustManager;Ljavax/net/ssl/HostnameVerifier;ZLcom/transsion/transfer/androidasync/AsyncSSLSocketWrapper$g;)V

    return-void
.end method

.method protected z(Lcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;IZLbv/b;)Lbv/b;
    .locals 8

    new-instance v7, Lcom/transsion/transfer/androidasync/http/n$b;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/transsion/transfer/androidasync/http/n$b;-><init>(Lcom/transsion/transfer/androidasync/http/n;Lbv/b;ZLcom/transsion/transfer/androidasync/http/g$a;Landroid/net/Uri;I)V

    return-object v7
.end method
