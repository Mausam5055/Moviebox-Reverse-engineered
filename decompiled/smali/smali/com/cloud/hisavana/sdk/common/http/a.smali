.class public Lcom/cloud/hisavana/sdk/common/http/a;
.super Lcom/cloud/hisavana/sdk/common/http/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/http/a$b;
    }
.end annotation


# static fields
.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Z


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljavax/net/ssl/SSLSocketFactory;

.field private g:Lcom/cloud/hisavana/sdk/common/http/a$b;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/d;-><init>()V

    const-string v0, "0"

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/a;->c:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/a;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/common/http/a;->e:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/a;->g:Lcom/cloud/hisavana/sdk/common/http/a$b;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/a;->h:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/a;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/common/http/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/a;->i()V

    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/http/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/cloud/hisavana/sdk/common/http/a;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Z)Z
    .locals 0

    sput-boolean p0, Lcom/cloud/hisavana/sdk/common/http/a;->m:Z

    return p0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/http/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/cloud/hisavana/sdk/common/http/a;->l:Ljava/lang/String;

    return-object p0
.end method

.method private i()V
    .locals 11

    const-string v0, "cloudControlVersion"

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/a;->g:Lcom/cloud/hisavana/sdk/common/http/a$b;

    invoke-interface {v1}, Lcom/cloud/hisavana/sdk/common/http/a$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;

    const-string v1, "TextUtils.isEmpty(postBodyString) == true "

    invoke-virtual {v0, v3, v1, v4}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->c(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string v0, "sendRequestToServer() --> TextUtils.isEmpty(postBodyString) == true "

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/a;->j:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v2, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestTs:Ljava/lang/Long;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/a;->j:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->g0(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    :cond_2
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----- full url = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/common/http/a;->d:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n ----- postBodyString = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lj7/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lj7/a;->e()Lj7/a;

    move-result-object v6

    const-string v7, "hisavanaCurrentCloudControlVersion"

    invoke-virtual {v6, v7, v4}, Lj7/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/common/http/a;->d:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    check-cast v6, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;

    invoke-virtual {v6, v7}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->f(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_3
    :goto_0
    invoke-static {}, Lg7/a;->c()I

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    move v7, v8

    :goto_1
    invoke-static {v7}, Lcom/cloud/hisavana/sdk/h0;->f(Z)V

    const-string v6, "post"

    const-string v7, ""

    const-string v9, "application/json"

    iget-object v10, p0, Lcom/cloud/hisavana/sdk/common/http/a;->d:Ljava/lang/String;

    invoke-static {v6, v7, v9, v10, v1}, Lcom/cloud/hisavana/sdk/h0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/cloud/hisavana/net/RequestParams;

    invoke-direct {v7}, Lcom/cloud/hisavana/net/RequestParams;-><init>()V

    const-string v9, "x-tr-signature"

    invoke-virtual {v7, v9, v6}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0, v5}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cloudControlOfflineVersion"

    invoke-virtual {v7, v0, v4}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "defaultAd"

    const-string v4, "2"

    invoke-virtual {v7, v0, v4}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "offlineAd"

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/http/a;->h:Ljava/lang/String;

    invoke-virtual {v7, v0, v4}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Timezone"

    const-string v4, "UTC"

    invoke-virtual {v7, v0, v4}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdktype"

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/common/http/a;->i:Ljava/lang/String;

    invoke-virtual {v7, v0, v4}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pkg"

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Lcom/cloud/hisavana/net/RequestParams;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lcom/cloud/hisavana/net/RequestParams;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/a;->d:Ljava/lang/String;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/http/a$a;

    invoke-direct {v1, p0, v8, v2}, Lcom/cloud/hisavana/sdk/common/http/a$a;-><init>(Lcom/cloud/hisavana/sdk/common/http/a;ZLjava/lang/String;)V

    invoke-static {v0, v7, v1}, Lcom/cloud/hisavana/net/HttpRequest;->j(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdServerRequest --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/c;->netLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    if-eqz v1, :cond_5

    check-cast v1, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;

    new-instance v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->e(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/a;->i()V

    return-void
.end method

.method public j(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Lcom/cloud/hisavana/sdk/common/http/a;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/a;->j:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    return-object p0
.end method

.method public k(Z)Lcom/cloud/hisavana/sdk/common/http/a;
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/http/a;->e:Z

    return-object p0
.end method

.method public l(Z)Lcom/cloud/hisavana/sdk/common/http/a;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public m(Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;)Lcom/cloud/hisavana/sdk/common/http/a;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public o(Lcom/cloud/hisavana/sdk/common/http/a$b;)Lcom/cloud/hisavana/sdk/common/http/a;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/a;->g:Lcom/cloud/hisavana/sdk/common/http/a$b;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public q(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/a;->d:Ljava/lang/String;

    return-object p0
.end method
