.class public Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;
.super Lcom/cloud/hisavana/sdk/common/http/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;
    }
.end annotation


# static fields
.field public static q:Z


# instance fields
.field c:J

.field d:Ljava/lang/String;

.field e:J

.field f:I

.field g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/common/http/d;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->c:J

    const-string v2, ""

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->d:Ljava/lang/String;

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->e:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->f:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->g:I

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->i:I

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k:Z

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->l:Ljava/lang/String;

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->m:I

    iput v1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n:I

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o:Z

    return-void
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->x(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z

    move-result p0

    return p0
.end method

.method static synthetic d(Ljava/lang/String;Landroid/widget/ImageView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->q(Ljava/lang/String;Landroid/widget/ImageView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return-void
.end method

.method static synthetic e(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->p(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;I)I
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->i:I

    return p1
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->m:I

    return p0
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)I
    .locals 0

    iget p0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->h:I

    return p0
.end method

.method public static j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 1

    invoke-static {p7}, Lcom/cloud/hisavana/sdk/N0;->B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p8, :cond_0

    new-instance p0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/16 p1, 0xbc8

    const-string p2, "main image is too large."

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p8, p0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p7, :cond_2

    invoke-virtual {p7}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p7

    goto :goto_0

    :cond_2
    const-string p7, ""

    :goto_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;-><init>()V

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->v(I)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    move-result-object p1

    invoke-virtual {p1, p8}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->u(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->w(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p7}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->r(Ljava/lang/Boolean;ILjava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->s(I)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->t(Z)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    move-result-object p0

    invoke-virtual {p0, p6}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->m(Z)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->b()V

    return-void
.end method

.method public static k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 10

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x3

    move-object v1, p0

    move v4, p2

    move v5, p3

    move-object v8, p1

    move-object v9, p4

    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return-void
.end method

.method public static l(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 10

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v0

    goto :goto_0

    :goto_1
    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v2, 0x3

    const/16 v4, 0xa

    move-object v1, p0

    move v5, p2

    move-object v8, p1

    move-object v9, p3

    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return-void
.end method

.method public static n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/N0;->B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    new-instance p0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/16 p1, 0xbc8

    const-string p3, "main image is too large."

    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;

    invoke-direct {v1, p1, p0, p2, p3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$2;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    new-instance p0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/16 p1, 0xbbf

    const-string p3, "filePath == null or imageView == null."

    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_4
    return-void
.end method

.method public static o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V
    .locals 8

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/N0;->B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    new-instance p0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/16 p1, 0xbc8

    const-string p2, "main image is too large."

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v7, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$1;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;ILandroid/widget/ImageView;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    invoke-virtual {v0, v7}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    new-instance p0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/16 p1, 0xbbf

    const-string p2, "url == null."

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_4
    return-void
.end method

.method private static p(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$3;-><init>(Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static q(Ljava/lang/String;Landroid/widget/ImageView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 10

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v0

    goto :goto_0

    :goto_1
    new-instance v9, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$a;

    invoke-direct {v9, p4, p1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$a;-><init>(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p3

    move-object v8, p2

    invoke-static/range {v1 .. v9}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j(Ljava/lang/String;IZIZIZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return-void
.end method

.method private static x(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z
    .locals 2

    invoke-static {}, La7/c;->v()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    move-result p0

    const/4 p1, 0x7

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected a()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Lcom/cloud/hisavana/net/RequestParams;

    invoke-direct {v1}, Lcom/cloud/hisavana/net/RequestParams;-><init>()V

    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j:Z

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/net/RequestParams;->m(Z)V

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/net/RequestParams;->o(Z)V

    iget v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n:I

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/net/RequestParams;->k(I)V

    iget-boolean v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o:Z

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/net/RequestParams;->l(Z)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/net/RequestParams;->j(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->e:J

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->l:Ljava/lang/String;

    new-instance v3, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;

    invoke-direct {v3, p0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$b;-><init>(Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;)V

    invoke-static {v2, v1, v3}, Lcom/cloud/hisavana/net/HttpRequest;->c(Ljava/lang/String;Lcom/cloud/hisavana/net/RequestParams;Lcom/cloud/hisavana/net/impl/IHttpCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->i:I

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_UNKNOWN:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->e(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    const/16 v0, 0x65

    iput v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->f:I

    :goto_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_DOWNLOAD_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->e(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "ssp"

    const-string v2, "url is empty"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->a()V

    return-void
.end method

.method public m(Z)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o:Z

    return-object p0
.end method

.method public r(Ljava/lang/Boolean;ILjava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k:Z

    iput p2, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->h:I

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->p:Ljava/lang/String;

    return-object p0
.end method

.method public s(I)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n:I

    return-object p0
.end method

.method public t(Z)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->j:Z

    return-object p0
.end method

.method public u(Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/d;->b:Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;

    return-object p0
.end method

.method public v(I)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->m:I

    return-object p0
.end method

.method public w(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->l:Ljava/lang/String;

    return-object p0
.end method
