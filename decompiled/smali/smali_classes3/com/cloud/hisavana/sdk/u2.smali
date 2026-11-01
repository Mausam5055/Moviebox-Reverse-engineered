.class public Lcom/cloud/hisavana/sdk/u2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/u2$e;,
        Lcom/cloud/hisavana/sdk/u2$g;,
        Lcom/cloud/hisavana/sdk/u2$f;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

.field private c:J

.field private final d:Lcom/cloud/hisavana/sdk/i1;

.field private e:Ljava/lang/String;

.field private f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Z

.field private l:Z

.field private m:Lcom/cloud/hisavana/sdk/q4;

.field private n:I

.field private final o:Lcom/cloud/hisavana/sdk/u2$e;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/i1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->e:Ljava/lang/String;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/cloud/hisavana/sdk/u2;->g:F

    iput v0, p0, Lcom/cloud/hisavana/sdk/u2;->h:F

    iput v0, p0, Lcom/cloud/hisavana/sdk/u2;->i:F

    iput v0, p0, Lcom/cloud/hisavana/sdk/u2;->j:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/u2;->k:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/u2;->l:Z

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    new-instance p1, Lcom/cloud/hisavana/sdk/u2$e;

    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/u2$e;-><init>(Lcom/cloud/hisavana/sdk/u2;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->o:Lcom/cloud/hisavana/sdk/u2$e;

    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/u2;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/u2;->g:F

    return p1
.end method

.method private d(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/cloud/hisavana/sdk/u2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/u2;->q(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/u2;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/u2;->h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method static synthetic g(Lcom/cloud/hisavana/sdk/u2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/u2;->l(Ljava/lang/String;)V

    return-void
.end method

.method private h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/i1;->D0()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/i1;->e0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->a:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/i1;->H()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->a:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/u2$d;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/u2$d;-><init>(Lcom/cloud/hisavana/sdk/u2;)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/u2;->a:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, p1, v1, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    return-void
.end method

.method private j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/i1;->m0(Z)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_AD_INTERACTIVEAD_FILE_NOT_EXIST:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, p2}, Lcom/cloud/hisavana/sdk/u2;->r(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/i1;->B0()V

    :cond_2
    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INDEXLOCATION_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/u2;->r(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/i1;->B0()V

    :cond_5
    return-void
.end method

.method private l(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    const-string v1, "SplashImage"

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "trackInteractionEvent splashAd is null"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "trackInteractionEvent adsDto is null"

    invoke-virtual {p1, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m(Lcom/cloud/hisavana/sdk/u2;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/cloud/hisavana/sdk/u2;->k:Z

    return p0
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/u2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/u2;->k:Z

    return p1
.end method

.method static synthetic o(Lcom/cloud/hisavana/sdk/u2;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/u2;->h:F

    return p1
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/u2;)Lcom/cloud/hisavana/sdk/i1;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    return-object p0
.end method

.method private q(Landroid/view/View;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/u2;->c:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    if-eqz v2, :cond_1

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/u2;->c:J

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v9, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget v3, p0, Lcom/cloud/hisavana/sdk/u2;->g:F

    iget v4, p0, Lcom/cloud/hisavana/sdk/u2;->h:F

    iget v5, p0, Lcom/cloud/hisavana/sdk/u2;->i:F

    iget v6, p0, Lcom/cloud/hisavana/sdk/u2;->j:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->v()Z

    move-result p1

    invoke-static {v0, v1, v9, p1}, Lcom/cloud/hisavana/sdk/N0;->b(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Z)I

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    iget-object p1, p1, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->W(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/i1;->O()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "ssp"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private r(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/cloud/hisavana/sdk/i1;->f0(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private s(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "SplashImage"

    const-string v2, "attachImgAd"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->a:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/i1;->H()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->a:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->a:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/u2$c;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/u2$c;-><init>(Lcom/cloud/hisavana/sdk/u2;)V

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/u2;->a:Landroid/view/View;

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x2

    invoke-static {v0, p1, v3, v1, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic t(Lcom/cloud/hisavana/sdk/u2;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/u2;->i:F

    return p1
.end method

.method static synthetic u(Lcom/cloud/hisavana/sdk/u2;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/u2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    return-object p0
.end method

.method private v(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/u2;->o:Lcom/cloud/hisavana/sdk/u2$e;

    invoke-virtual {v0, v1, p1, v2}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/r;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/i1;->K()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    new-instance p1, Lcom/cloud/hisavana/sdk/u2$g;

    invoke-direct {p1, p0, v2}, Lcom/cloud/hisavana/sdk/u2$g;-><init>(Lcom/cloud/hisavana/sdk/u2;Lcom/cloud/hisavana/sdk/u2$a;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/cloud/hisavana/sdk/u2$f;

    invoke-direct {p1, p0, v2}, Lcom/cloud/hisavana/sdk/u2$f;-><init>(Lcom/cloud/hisavana/sdk/u2;Lcom/cloud/hisavana/sdk/u2$a;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/cloud/hisavana/sdk/u2$g;

    invoke-direct {v0, p0, v2}, Lcom/cloud/hisavana/sdk/u2$g;-><init>(Lcom/cloud/hisavana/sdk/u2;Lcom/cloud/hisavana/sdk/u2$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/u2$f;

    invoke-direct {v0, p0, v2}, Lcom/cloud/hisavana/sdk/u2$f;-><init>(Lcom/cloud/hisavana/sdk/u2;Lcom/cloud/hisavana/sdk/u2$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method private w(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "SplashImage"

    const-string v2, "attachInteractiveAd"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/u2;->h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/u2;->C(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/u2;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V

    return-void
.end method

.method static synthetic x(Lcom/cloud/hisavana/sdk/u2;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/u2;->j:F

    return p1
.end method

.method private y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "SplashImage"

    const-string v2, "fillVideoAd"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/i1;->H()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/util/r;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->resetVolumePosition(Z)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->m:Lcom/cloud/hisavana/sdk/q4;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/q4;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/v2;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_AD_MAINURL_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/u2;->r(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/i1;->B0()V

    :cond_1
    return-void

    :cond_2
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/u2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-virtual {v2, v0, p1, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->setMediaData(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/i1;->m0(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/u2;->h(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/u2;->y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/u2;->w(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/u2;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->a:Landroid/view/View;

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/u2;->y(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/u2;->s(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->a:Landroid/view/View;

    :goto_0
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/u2;->v(Landroid/view/View;)V

    return-void
.end method

.method public B(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Landroid/view/View;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v0, "SplashImage"

    const-string v1, "getView adsDto is null"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/view/View;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDefaultMaterialType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->a:Landroid/view/View;

    return-object p1

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    return-object p1
.end method

.method public C(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 5

    const-string v0, "SplashImage"

    if-nez p1, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v1, "initializeInteractiveAdView adsDTO is null"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/i1;->H()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/i1;->H()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/u2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2, p1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setWebClientCallback(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    new-instance v0, Lcom/cloud/hisavana/sdk/u2$a;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/u2$a;-><init>(Lcom/cloud/hisavana/sdk/u2;)V

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setInteractiveListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    new-instance v0, Lcom/cloud/hisavana/sdk/u2$g;

    invoke-direct {v0, p0, v1}, Lcom/cloud/hisavana/sdk/u2$g;-><init>(Lcom/cloud/hisavana/sdk/u2;Lcom/cloud/hisavana/sdk/u2$a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create webview error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    :cond_1
    :goto_0
    return-void
.end method

.method public D(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->pause()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->d:Lcom/cloud/hisavana/sdk/i1;

    iget-object v1, v1, Lcom/cloud/hisavana/sdk/i1;->o:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->g(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->a:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/u2;->d(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setInteractiveListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->destroy()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/q4;)V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/u2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->release()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/u2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "ssp"

    const-string v2, "destroy"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/u2;->n:I

    return-void
.end method

.method public k(Lcom/cloud/hisavana/sdk/q4;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->m:Lcom/cloud/hisavana/sdk/q4;

    return-void
.end method

.method public z(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->b:Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/widget/video/SplashAdVideoView;->play()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/u2;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz p1, :cond_2

    new-instance v0, Lcom/cloud/hisavana/sdk/u2$b;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/u2$b;-><init>(Lcom/cloud/hisavana/sdk/u2;)V

    const-string v1, "javascript:continuePlay()"

    invoke-virtual {p1, v1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_2
    :goto_0
    return-void
.end method
