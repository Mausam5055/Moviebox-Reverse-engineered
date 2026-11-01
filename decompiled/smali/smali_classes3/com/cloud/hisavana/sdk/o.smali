.class public Lcom/cloud/hisavana/sdk/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/o$g;,
        Lcom/cloud/hisavana/sdk/o$i;,
        Lcom/cloud/hisavana/sdk/o$h;,
        Lcom/cloud/hisavana/sdk/o$f;
    }
.end annotation


# instance fields
.field private final a:Lcom/cloud/hisavana/sdk/p3;

.field private b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

.field private g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

.field private h:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field private i:Z

.field private j:Z

.field private final k:Le7/n;

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:J

.field private final q:Lcom/cloud/hisavana/sdk/o$g;

.field private r:Lcom/cloud/hisavana/sdk/r;

.field private s:Z

.field private t:Z

.field private u:Z

.field v:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/p3;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/o;->i:Z

    new-instance v1, Le7/n;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Le7/n;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/o;->k:Le7/n;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/cloud/hisavana/sdk/o;->l:F

    iput v1, p0, Lcom/cloud/hisavana/sdk/o;->m:F

    iput v1, p0, Lcom/cloud/hisavana/sdk/o;->n:F

    iput v1, p0, Lcom/cloud/hisavana/sdk/o;->o:F

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/o;->s:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/o;->t:Z

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/o;->u:Z

    new-instance v0, Lcom/cloud/hisavana/sdk/o$e;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/o$e;-><init>(Lcom/cloud/hisavana/sdk/o;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/o;->v:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    new-instance p1, Lcom/cloud/hisavana/sdk/o$g;

    invoke-direct {p1, p0}, Lcom/cloud/hisavana/sdk/o$g;-><init>(Lcom/cloud/hisavana/sdk/o;)V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o;->q:Lcom/cloud/hisavana/sdk/o$g;

    return-void
.end method

.method private A(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->h:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->destroy()V

    :cond_2
    :try_start_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/o;->h:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/sdk/o;->i(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Landroid/view/ViewGroup;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create webview error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BannerGemini"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o;->h:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INTERACTIVE_WEBVIEW_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_3
    return-void
.end method

.method private B(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B20301"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B20302"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "B20303"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/o;->e(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_5

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o;->v:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/o;->d:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/o;->e:Landroid/widget/ImageView;

    :cond_4
    invoke-static {v0, p1, v1, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/o;->v:Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/o;->d:Landroid/widget/ImageView;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/o;->e:Landroid/widget/ImageView;

    :cond_6
    invoke-static {v0, p1, v1, v2, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/cloud/hisavana/sdk/o;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/o;->l:F

    return p1
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/o;)Lcom/cloud/hisavana/sdk/p3;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->tvBtn:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "BannerGemini"

    if-ne v0, v1, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "pslink half setClickType, click_install"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setTrackUserClickArea(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "pslink half setClickType, click_img"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/cloud/hisavana/sdk/o;->p:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o;->q(Landroid/view/View;)I

    iput-wide v0, p0, Lcom/cloud/hisavana/sdk/o;->p:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private f(Landroid/view/ViewGroup;Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ad_flag:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ad_close_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ps_mark_view:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/G;->v()Lcom/cloud/hisavana/sdk/J0;

    move-result-object p2

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {p2, v1, p1, v0}, Lcom/cloud/hisavana/sdk/m0;->a(Lcom/cloud/hisavana/sdk/J0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/ViewGroup;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/o;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o;->d(Landroid/view/View;)V

    return-void
.end method

.method private k(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;ZZZ)V
    .locals 6

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object v0, p2

    check-cast v0, Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/cloud/hisavana/sdk/R$layout;->banner_style_3201_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    if-nez p5, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object p5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o;->q:Lcom/cloud/hisavana/sdk/o$g;

    invoke-virtual {p5, v0, p2, v1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    :cond_0
    new-instance p5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x31

    iput v3, p5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v4, Lcom/cloud/hisavana/sdk/R$id;->ivBanner:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, p1, p5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget p5, Lcom/cloud/hisavana/sdk/R$id;->ad_flag:I

    invoke-virtual {p4, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_2

    const/16 p5, 0x8

    invoke-virtual {p4, p5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p4, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object p5, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    invoke-direct {p0, p4, p5}, Lcom/cloud/hisavana/sdk/o;->v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;)V

    iget-object p4, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object p5, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    invoke-direct {p0, p4, p5}, Lcom/cloud/hisavana/sdk/o;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;)V

    iget-object p4, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object p5, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    invoke-direct {p0, p4, p5, p3}, Lcom/cloud/hisavana/sdk/o;->m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;Z)V

    iget-object p3, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget p4, Lcom/cloud/hisavana/sdk/R$id;->ivIcon:I

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const/4 p4, 0x1

    if-eqz p3, :cond_3

    iget-object p5, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object p5

    if-eqz p5, :cond_3

    iget-object p5, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object p5

    invoke-virtual {p5}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    move-result-object p5

    if-eqz p5, :cond_3

    iget-object p5, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object p5

    invoke-virtual {p5}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    move-result-object p5

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v5, 0x0

    invoke-static {p5, v4, p4, v5, p3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    const/4 p5, 0x2

    if-eqz p3, :cond_a

    iget-object p3, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_7

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->e()I

    move-result v4

    if-ne v4, p4, :cond_6

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    const-string v4, "3:2"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string p4, "20:3"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-static {}, Li7/c;->k()I

    move-result p4

    mul-int/lit8 p4, p4, 0x3

    div-int/lit8 p4, p4, 0x14

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-static {}, Li7/c;->k()I

    move-result p4

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-static {}, Li7/c;->k()I

    move-result v4

    mul-int/2addr v4, p5

    div-int/lit8 v4, v4, 0x3

    iput v4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-static {}, Li7/c;->k()I

    move-result v4

    iput v4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->e()I

    move-result p3

    if-ne p3, p4, :cond_9

    iget-object p3, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object p3

    const-string v4, "B3201"

    invoke-static {p3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-static {}, Li7/c;->k()I

    move-result v4

    mul-int/2addr v4, p5

    div-int/lit8 v4, v4, 0x3

    iput v4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-static {}, Li7/c;->k()I

    move-result v4

    iput v4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-static {}, Li7/c;->k()I

    move-result p4

    mul-int/lit8 p4, p4, 0x3

    div-int/lit8 p4, p4, 0x14

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-static {}, Li7/c;->k()I

    move-result p4

    iput p4, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_a
    :goto_0
    move p4, v2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p3, "BannerGemini"

    const-string v4, "banner attachBannerToViewTree"

    invoke-virtual {p1, p3, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_b
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->e()I

    move-result p1

    if-ne p1, p5, :cond_d

    if-eqz p4, :cond_c

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    const/high16 p3, 0x43960000    # 300.0f

    invoke-static {p3}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result p3

    const/high16 p4, 0x43480000    # 200.0f

    invoke-static {p4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result p4

    invoke-virtual {p2, p1, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_2

    :cond_c
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    const/high16 p3, 0x43b40000    # 360.0f

    invoke-static {p3}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result p3

    const/high16 p4, 0x42580000    # 54.0f

    invoke-static {p4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result p4

    invoke-virtual {p2, p1, p3, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    :cond_d
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_3
    return-void
.end method

.method private l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_badge_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object v0

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/util/f0;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result p1

    invoke-virtual {p2, v0, p1}, Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;I)V

    return-void
.end method

.method private m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;Z)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_close_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;

    if-nez p2, :cond_2

    return-void

    :cond_2
    if-eqz p3, :cond_3

    iget-boolean p3, p0, Lcom/cloud/hisavana/sdk/o;->i:Z

    if-eqz p3, :cond_3

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/t2;->p()Lcom/cloud/hisavana/sdk/t2;

    move-result-object v0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    iget-boolean v5, p0, Lcom/cloud/hisavana/sdk/o;->j:Z

    move-object v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/cloud/hisavana/sdk/t2;->g(Landroid/content/Context;Lcom/cloud/hisavana/sdk/api/view/AdCloseView;Ljava/lang/Object;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getDisplayRule()Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;

    move-result-object p1

    sget-object v0, Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;->CLOSE:Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;

    invoke-virtual {p2, p1, v0}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;->setDisplayStyle(Lcom/cloud/hisavana/sdk/common/constant/Constants$AdDisplayRule;Lcom/cloud/hisavana/sdk/api/view/AdCloseView$CloseImageType;)V

    :try_start_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object p1

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/o;->s:Z

    if-eqz v0, :cond_5

    const-string v0, "B20301"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "B20302"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "B20303"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p1

    sget p3, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_banner_close:I

    invoke-static {p1, p3}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p3

    sget v0, Lcom/cloud/hisavana/sdk/R$color;->ad_banner_close_bg:I

    invoke-static {p3, v0}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;->setCloseStyle(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/o;->t:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/o;->u:Z

    if-nez v0, :cond_6

    const-string v0, "B20304"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/cloud/hisavana/sdk/R$drawable;->hs_ad_banner_20304_close:I

    invoke-static {p1, v0}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;->setCloseStyle(Landroid/graphics/drawable/Drawable;I)V

    const/16 p1, 0x18

    invoke-virtual {p2, p1, p1}, Lcom/cloud/hisavana/sdk/api/view/AdCloseView;->setViewSize(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    :goto_0
    return-void
.end method

.method private n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V
    .locals 2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getIndexLocation()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

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

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/p3;->P()V

    :cond_2
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->S(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private o(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLandroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_4

    if-nez p3, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/common/util/i0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v0

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->ps_mark_view:I

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    if-eqz p3, :cond_4

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_2

    const/4 v0, -0x1

    goto :goto_1

    :cond_2
    const v0, -0x878788

    :goto_1
    invoke-virtual {p3, v0}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    if-eqz p2, :cond_3

    const/high16 p2, 0x41000000    # 8.0f

    goto :goto_2

    :cond_3
    const/high16 p2, 0x40c00000    # 6.0f

    :goto_2
    invoke-virtual {p3, p2}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    invoke-virtual {p3, p1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->attachInfo(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_4
    :goto_3
    return-void
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/o;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/o;->m:F

    return p1
.end method

.method private q(Landroid/view/View;)I
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v9, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    iget v3, p0, Lcom/cloud/hisavana/sdk/o;->l:F

    iget v4, p0, Lcom/cloud/hisavana/sdk/o;->m:F

    iget v5, p0, Lcom/cloud/hisavana/sdk/o;->n:F

    iget v6, p0, Lcom/cloud/hisavana/sdk/o;->o:F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/q3;->v()Z

    move-result p1

    :goto_0
    invoke-static {v0, v1, v9, p1}, Lcom/cloud/hisavana/sdk/N0;->b(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;Z)I

    move-result p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->W(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/p3;->U()V

    :cond_1
    return p1
.end method

.method static synthetic r(Lcom/cloud/hisavana/sdk/o;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o;->q(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static synthetic s(Lcom/cloud/hisavana/sdk/o;)Lcom/cloud/hisavana/sdk/o$g;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o;->q:Lcom/cloud/hisavana/sdk/o$g;

    return-object p0
.end method

.method private t(Landroid/view/ViewGroup;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;->destroy()V

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/o;->t:Z

    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/o;->g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/sdk/o;->j(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create webview error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BannerGemini"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o;->g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADM_WEBVIEW_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_4

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADM_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIEWGROUP_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    sget v0, Lcom/cloud/hisavana/sdk/R$id;->ad_choices_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    if-nez p2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, v2, p2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->n(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, p1, v1, v2, p2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->o(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;Landroid/widget/ImageView;)V

    :goto_0
    new-instance p1, Lcom/cloud/hisavana/sdk/o$f;

    invoke-direct {p1, p0, v2}, Lcom/cloud/hisavana/sdk/o$f;-><init>(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/o$a;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/o;->f:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    return-void
.end method

.method static synthetic w(Lcom/cloud/hisavana/sdk/o;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/o;->n:F

    return p1
.end method

.method static synthetic x(Lcom/cloud/hisavana/sdk/o;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object p0
.end method

.method private y(Landroid/view/ViewGroup;)V
    .locals 3

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIEWGROUP_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;->destroy()V

    :cond_2
    :try_start_0
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/o;->g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0, p1}, Lcom/cloud/hisavana/sdk/o;->u(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create webview error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BannerGemini"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/o;->g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz p1, :cond_3

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADM_WEBVIEW_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_3
    return-void
.end method

.method static synthetic z(Lcom/cloud/hisavana/sdk/o;F)F
    .locals 0

    iput p1, p0, Lcom/cloud/hisavana/sdk/o;->o:F

    return p1
.end method


# virtual methods
.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->d:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->e:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->f:Lcom/cloud/hisavana/sdk/api/view/AdChoicesView;

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;->destroy()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/o;->g:Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->h:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->destroy()V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/o;->h:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->r:Lcom/cloud/hisavana/sdk/r;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/r;->c()V

    :cond_2
    return-void
.end method

.method e(Landroid/view/ViewGroup;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v4, "B20303"

    const-string v6, "B20302"

    const-string v7, "B20301"

    const/4 v8, 0x0

    const/4 v10, 0x1

    iget-object v11, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v11, :cond_29

    if-nez v1, :cond_0

    goto/16 :goto_15

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object v11, v1

    check-cast v11, Landroid/widget/RelativeLayout;

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setGravity(I)V

    iget-object v11, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v11}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v11

    const-string v12, "BannerGemini"

    if-eqz v11, :cond_1

    iget-object v11, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v11}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_2

    :cond_1
    move-object v4, v12

    goto/16 :goto_14

    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "*----> TranBanner --> MaterialStyle ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Lcom/cloud/hisavana/sdk/s;

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {v11, v13}, Lcom/cloud/hisavana/sdk/s;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v11}, Lcom/cloud/hisavana/sdk/s;->g()I

    move-result v13

    iput-boolean v10, v0, Lcom/cloud/hisavana/sdk/o;->s:Z

    iget-object v14, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v14}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    const/4 v15, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :goto_0
    const/4 v9, -0x1

    goto :goto_1

    :sswitch_0
    const-string v9, "B20304"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    const/4 v9, 0x4

    goto :goto_1

    :sswitch_1
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_0

    :cond_4
    const/4 v9, 0x3

    goto :goto_1

    :sswitch_2
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_0

    :cond_5
    const/4 v9, 0x2

    goto :goto_1

    :sswitch_3
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_0

    :cond_6
    move v9, v10

    goto :goto_1

    :sswitch_4
    const-string v9, "B3201"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_0

    :cond_7
    move v9, v8

    :goto_1
    packed-switch v9, :pswitch_data_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TranBanner --> \u6ca1\u6709\u5339\u914d\u5230 materialStyle --> \u914d\u7f6e\u9519\u8bef materialStyle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v13, Lcom/cloud/hisavana/sdk/R$layout;->banner_style_20304_layout:I

    invoke-virtual {v9, v13, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    move v9, v8

    :goto_2
    move v14, v9

    const/4 v13, -0x1

    goto :goto_3

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v14, Lcom/cloud/hisavana/sdk/R$layout;->banner_style_203_newstyle_layout:I

    invoke-virtual {v9, v14, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v14, Lcom/cloud/hisavana/sdk/R$id;->clRoot:I

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v14, Lcom/cloud/hisavana/sdk/o$i;

    invoke-direct {v14, v0, v15}, Lcom/cloud/hisavana/sdk/o$i;-><init>(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/o$a;)V

    invoke-virtual {v9, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v9, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v14, Lcom/cloud/hisavana/sdk/R$id;->clRoot:I

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v14, Lcom/cloud/hisavana/sdk/o$h;

    invoke-direct {v14, v0, v15}, Lcom/cloud/hisavana/sdk/o$h;-><init>(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/o$a;)V

    invoke-virtual {v9, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v9, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v14, Lcom/cloud/hisavana/sdk/R$id;->tvBtn:I

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    new-instance v14, Lcom/cloud/hisavana/sdk/o$h;

    invoke-direct {v14, v0, v15}, Lcom/cloud/hisavana/sdk/o$h;-><init>(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/o$a;)V

    invoke-virtual {v9, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v9, v8

    move v14, v9

    goto :goto_3

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v13, Lcom/cloud/hisavana/sdk/R$layout;->banner_style_3201_layout:I

    invoke-virtual {v9, v13, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    move v9, v10

    goto :goto_2

    :goto_3
    iget-object v15, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v15, v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setBannerStyle(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v15

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v2, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    iget-object v8, v0, Lcom/cloud/hisavana/sdk/o;->q:Lcom/cloud/hisavana/sdk/o$g;

    invoke-virtual {v15, v3, v2, v8}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    iget-object v2, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v2, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    if-nez v2, :cond_9

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz v1, :cond_8

    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_RENDERVIEW_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_8
    return-void

    :cond_9
    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvDescription:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Lcom/cloud/hisavana/sdk/common/util/r;->a:Lcom/cloud/hisavana/sdk/common/util/r;

    iget-object v8, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3, v8}, Lcom/cloud/hisavana/sdk/common/util/r;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v8

    iget-object v15, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v15}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    const-string v5, " \u00b7 "

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v17

    packed-switch v17, :pswitch_data_1

    :goto_4
    const/4 v4, -0x1

    goto :goto_5

    :pswitch_3
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_4

    :cond_a
    const/4 v4, 0x2

    goto :goto_5

    :pswitch_4
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_4

    :cond_b
    move v4, v10

    goto :goto_5

    :pswitch_5
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_4

    :cond_c
    const/4 v4, 0x0

    :goto_5
    packed-switch v4, :pswitch_data_2

    goto/16 :goto_6

    :pswitch_6
    if-eqz v2, :cond_e

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_d
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvBtn:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v3

    iget-object v4, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :pswitch_7
    iget-object v4, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v15, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v15, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v15}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v15

    invoke-virtual {v15}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getTitleTxt()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v15, Lcom/cloud/hisavana/sdk/R$id;->tvBtn:I

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v15, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v15}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v15

    iget-object v10, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getInstallApk()I

    move-result v10

    invoke-virtual {v15, v10}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getButtonTxt(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    if-eq v13, v4, :cond_10

    const/4 v4, 0x2

    if-ne v13, v4, :cond_f

    goto :goto_7

    :cond_f
    :goto_6
    move-object/from16 v20, v7

    move/from16 v19, v9

    move-object/from16 v18, v12

    const/4 v7, 0x1

    goto/16 :goto_d

    :cond_10
    :goto_7
    iget-object v4, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v10, Lcom/cloud/hisavana/sdk/R$id;->score_icon:I

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v10, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v15, Lcom/cloud/hisavana/sdk/R$id;->score_text:I

    invoke-virtual {v10, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iget-object v15, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    move-object/from16 v18, v12

    sget v12, Lcom/cloud/hisavana/sdk/R$id;->source_size:I

    invoke-virtual {v15, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-object v15, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v1, Lcom/cloud/hisavana/sdk/R$id;->tv_source_separator:I

    invoke-virtual {v15, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v15, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    move/from16 v19, v9

    sget v9, Lcom/cloud/hisavana/sdk/R$id;->tv_score_separator:I

    invoke-virtual {v15, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    if-eqz v4, :cond_11

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v20, v7

    invoke-virtual {v11, v13}, Lcom/cloud/hisavana/sdk/s;->f(I)I

    move-result v7

    invoke-static {v15, v7}, Landroidx/core/content/b;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    :cond_11
    move-object/from16 v20, v7

    :goto_8
    iget-object v7, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3, v7}, Lcom/cloud/hisavana/sdk/common/util/r;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v7

    const/4 v15, 0x2

    if-ne v7, v15, :cond_13

    if-eqz v12, :cond_15

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    const/4 v7, 0x0

    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    :cond_12
    const/4 v7, 0x4

    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_13
    if-eqz v2, :cond_15

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getDescriptionTxt()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_14
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :goto_9
    const/4 v7, 0x0

    goto :goto_b

    :cond_15
    :goto_a
    const/4 v7, 0x1

    :goto_b
    if-eqz v10, :cond_19

    invoke-virtual {v11, v13}, Lcom/cloud/hisavana/sdk/s;->h(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_17

    const-string v11, "0.0"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    const-string v11, "0"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_17

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v12}, Lcom/cloud/hisavana/sdk/common/util/r;->e(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_16

    if-eqz v1, :cond_16

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_16
    if-nez v7, :cond_19

    if-eqz v2, :cond_19

    invoke-virtual {v3, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->e(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v9, :cond_19

    invoke-virtual {v9, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_17
    const/16 v1, 0x8

    if-eqz v4, :cond_18

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_18
    invoke-virtual {v10, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    :goto_c
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/i0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz v7, :cond_1a

    if-eqz v10, :cond_1a

    invoke-virtual {v3, v10}, Lcom/cloud/hisavana/sdk/common/util/r;->e(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1a

    if-eqz v9, :cond_1a

    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    :try_start_0
    invoke-virtual {v3, v10}, Lcom/cloud/hisavana/sdk/common/util/r;->e(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v3, v2}, Lcom/cloud/hisavana/sdk/common/util/r;->e(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v3, v12}, Lcom/cloud/hisavana/sdk/common/util/r;->e(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1c

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/i0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v1

    if-eqz v1, :cond_1b

    if-eqz v7, :cond_1b

    goto :goto_d

    :cond_1b
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v2, Lcom/cloud/hisavana/sdk/R$id;->clRoot:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Landroidx/constraintlayout/widget/b;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/b;-><init>()V

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/b;->q(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/b;->n(I)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    sget v4, Lcom/cloud/hisavana/sdk/R$id;->ivIcon:I

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v5, v4, v5}, Landroidx/constraintlayout/widget/b;->t(IIII)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    sget v4, Lcom/cloud/hisavana/sdk/R$id;->ivIcon:I

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroidx/constraintlayout/widget/b;->t(IIII)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    sget v4, Lcom/cloud/hisavana/sdk/R$id;->ivIcon:I

    const/4 v5, 0x7

    const/4 v8, 0x6

    invoke-virtual {v2, v3, v8, v4, v5}, Landroidx/constraintlayout/widget/b;->t(IIII)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    sget v4, Lcom/cloud/hisavana/sdk/R$id;->tvBtn:I

    invoke-virtual {v2, v3, v5, v4, v8}, Landroidx/constraintlayout/widget/b;->t(IIII)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/widget/b;->w(IZ)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/cloud/hisavana/sdk/R$dimen;->dp_8:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    invoke-virtual {v2, v4, v8, v3}, Landroidx/constraintlayout/widget/b;->X(III)V

    sget v4, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    invoke-virtual {v2, v4, v5, v3}, Landroidx/constraintlayout/widget/b;->X(III)V

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v4}, Landroidx/constraintlayout/widget/b;->v(II)V

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/b;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1c
    :goto_d
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/i0;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v1

    if-eqz v1, :cond_1d

    if-eqz v7, :cond_1d

    const/4 v1, 0x1

    goto :goto_e

    :cond_1d
    const/4 v1, 0x0

    :goto_e
    iget-object v2, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->ps_mark_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;

    if-eqz v2, :cond_22

    if-eqz v1, :cond_1e

    const/4 v7, 0x0

    goto :goto_f

    :cond_1e
    const/16 v7, 0x8

    :goto_f
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    if-eqz v14, :cond_1f

    const/4 v1, -0x1

    goto :goto_10

    :cond_1f
    const v1, -0x878788

    :goto_10
    invoke-virtual {v2, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextColor(I)V

    const/high16 v1, 0x40c00000    # 6.0f

    if-eqz v14, :cond_20

    const/high16 v3, 0x41000000    # 8.0f

    goto :goto_11

    :cond_20
    move v3, v1

    :goto_11
    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->attachInfo(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v20

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_21
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setLogoSize(I)V

    invoke-virtual {v2, v1}, Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;->setTextSize(F)V

    :cond_22
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->tvName:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_23
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->iv_main_image:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/o;->d:Landroid/widget/ImageView;

    if-eqz v1, :cond_24

    new-instance v3, Lcom/cloud/hisavana/sdk/o$i;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/cloud/hisavana/sdk/o$i;-><init>(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/o$a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->d:Landroid/widget/ImageView;

    new-instance v3, Lcom/cloud/hisavana/sdk/o$h;

    invoke-direct {v3, v0, v4}, Lcom/cloud/hisavana/sdk/o$h;-><init>(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/o$a;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_24
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v3, Lcom/cloud/hisavana/sdk/R$id;->ivIcon:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/o;->e:Landroid/widget/ImageView;

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    invoke-direct {v0, v1, v3}, Lcom/cloud/hisavana/sdk/o;->v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;)V

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    invoke-direct {v0, v1, v3}, Lcom/cloud/hisavana/sdk/o;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;)V

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v3, v4}, Lcom/cloud/hisavana/sdk/o;->m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;Z)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->e()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_26

    if-eqz v19, :cond_25

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v3

    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v4

    move-object/from16 v5, p1

    invoke-virtual {v5, v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_12

    :cond_25
    move-object/from16 v5, p1

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    const/high16 v3, 0x43b40000    # 360.0f

    invoke-static {v3}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v3

    const/high16 v4, 0x42580000    # 54.0f

    invoke-static {v4}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v4

    invoke-virtual {v5, v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_12

    :cond_26
    move-object/from16 v5, p1

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-virtual {v5, v1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_13

    :cond_27
    const/4 v3, 0x0

    :goto_13
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    const-string v3, "ad banner show..."

    move-object/from16 v4, v18

    invoke-virtual {v1, v4, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v5, v2}, Lcom/cloud/hisavana/sdk/o;->f(Landroid/view/ViewGroup;Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;)V

    return-void

    :goto_14
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    const-string v2, "TranBanner --> null == mAdBean.nativeBean || null == mAdBean.materialStyle"

    invoke-virtual {v1, v4, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz v1, :cond_28

    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_NATIVEOBJ_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_28
    return-void

    :cond_29
    :goto_15
    iget-object v1, v0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz v1, :cond_2b

    if-nez v11, :cond_2a

    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    goto :goto_16

    :cond_2a
    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIEWGROUP_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_2b
    :goto_16
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3b9ffe2 -> :sswitch_4
        0x73770774 -> :sswitch_3
        0x73770775 -> :sswitch_2
        0x73770776 -> :sswitch_1
        0x73770777 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x73770774
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public g(Landroid/view/ViewGroup;ZZLcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    iput-boolean p2, p0, Lcom/cloud/hisavana/sdk/o;->i:Z

    iput-boolean p3, p0, Lcom/cloud/hisavana/sdk/o;->j:Z

    if-eqz p4, :cond_4

    iput-object p4, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x0

    invoke-static {p3}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result p3

    if-eqz p3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isPriorityH5Ad()Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getH5AdUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/util/p0;->f(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o;->y(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o;->t(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o;->A(Landroid/view/ViewGroup;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/o;->B(Landroid/view/ViewGroup;)V

    :cond_4
    :goto_1
    return-void
.end method

.method i(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Landroid/view/ViewGroup;)V
    .locals 12

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v5, :cond_14

    if-eqz p2, :cond_14

    if-nez p1, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object v6, p2

    check-cast v6, Landroid/widget/RelativeLayout;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setGravity(I)V

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v6

    const-string v7, "BannerGemini"

    if-eqz v6, :cond_12

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "*----> TranBanner --> MaterialStyle ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_0
    move v6, v3

    goto :goto_1

    :sswitch_0
    const-string v8, "B20304"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x4

    goto :goto_1

    :sswitch_1
    const-string v8, "B20303"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    move v6, v0

    goto :goto_1

    :sswitch_2
    const-string v8, "B20302"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    move v6, v1

    goto :goto_1

    :sswitch_3
    const-string v8, "B20301"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    move v6, v2

    goto :goto_1

    :sswitch_4
    const-string v8, "B3201"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    :cond_6
    move v6, v4

    :goto_1
    packed-switch v6, :pswitch_data_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TranBanner --> \u6ca1\u6709\u5339\u914d\u5230 materialStyle --> \u914d\u7f6e\u9519\u8bef materialStyle="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v7, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz p1, :cond_7

    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_MATERIAL_STYLE_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_7
    return-void

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v6, Lcom/cloud/hisavana/sdk/R$layout;->banner_style_20304_layout:I

    invoke-virtual {v2, v6, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    move v2, v4

    :goto_2
    move v6, v2

    goto :goto_3

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    sget v8, Lcom/cloud/hisavana/sdk/R$layout;->banner_style_3201_layout:I

    invoke-virtual {v6, v8, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    goto :goto_2

    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->c()Lcom/cloud/hisavana/sdk/common/tranmeasure/e;

    move-result-object v8

    iget-object v9, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    iget-object v10, p0, Lcom/cloud/hisavana/sdk/o;->q:Lcom/cloud/hisavana/sdk/o$g;

    invoke-virtual {v8, v5, v9, v10}, Lcom/cloud/hisavana/sdk/common/tranmeasure/e;->e(Ljava/lang/Object;Landroid/view/View;Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;)V

    iget-object v8, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v8}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v8, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    if-nez v8, :cond_9

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz p1, :cond_8

    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_RENDERVIEW_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_8
    return-void

    :cond_9
    sget v9, Lcom/cloud/hisavana/sdk/R$id;->ivBanner:I

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_c

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_c

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    const-string v11, "3:2"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    const-string v11, "20:3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {}, Li7/c;->k()I

    move-result v10

    mul-int/2addr v10, v0

    div-int/lit8 v10, v10, 0x14

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, Li7/c;->k()I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_4

    :cond_b
    invoke-static {}, Li7/c;->k()I

    move-result v10

    mul-int/2addr v10, v1

    div-int/2addr v10, v0

    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, Li7/c;->k()I

    move-result v0

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_c
    :goto_4
    invoke-virtual {v8, p1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/o$i;

    const/4 v9, 0x0

    invoke-direct {v0, p0, v9}, Lcom/cloud/hisavana/sdk/o$i;-><init>(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/o$a;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v5}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setWebClientCallback(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/o$a;

    invoke-direct {v0, p0, v5, p1}, Lcom/cloud/hisavana/sdk/o$a;-><init>(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setInteractiveListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;)V

    invoke-direct {p0, v5, p1}, Lcom/cloud/hisavana/sdk/o;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;)V

    :cond_d
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    invoke-direct {p0, v5, v2, v0}, Lcom/cloud/hisavana/sdk/o;->o(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ZLandroid/view/View;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    sget v2, Lcom/cloud/hisavana/sdk/R$id;->ivIcon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/cloud/hisavana/sdk/o;->v(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    invoke-direct {p0, v5, v0}, Lcom/cloud/hisavana/sdk/o;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    invoke-direct {p0, v5, v0, v4}, Lcom/cloud/hisavana/sdk/o;->m(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/view/View;Z)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/h;->e()I

    move-result p1

    if-ne p1, v1, :cond_10

    if-eqz v6, :cond_f

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    const/high16 v0, 0x43960000    # 300.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_5

    :cond_f
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    const/high16 v0, 0x43b40000    # 360.0f

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v0

    const/high16 v1, 0x42580000    # 54.0f

    invoke-static {v1}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_5

    :cond_10
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->c:Landroid/view/View;

    const/4 v0, -0x2

    invoke-virtual {p2, p1, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_5
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_11
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "ad banner attachInteractiveAd show..."

    invoke-virtual {p1, v7, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    :goto_6
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "TranBanner --> null == mAdBean.nativeBean || null == mAdBean.materialStyle"

    invoke-virtual {p1, v7, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz p1, :cond_13

    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_NATIVEOBJ_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_13
    return-void

    :cond_14
    :goto_7
    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_INTERACTIVE_WEBVIEW_ERROR:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    if-nez v5, :cond_15

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    goto :goto_8

    :cond_15
    if-nez p2, :cond_16

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_VIEWGROUP_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    :cond_16
    :goto_8
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz p2, :cond_17

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_17
    return-void

    :sswitch_data_0
    .sparse-switch
        0x3b9ffe2 -> :sswitch_4
        0x73770774 -> :sswitch_3
        0x73770775 -> :sswitch_2
        0x73770776 -> :sswitch_1
        0x73770777 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method j(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;)V
    .locals 9

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->r:Lcom/cloud/hisavana/sdk/r;

    if-nez v0, :cond_1

    new-instance v0, Lcom/cloud/hisavana/sdk/r;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/r;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/o;->r:Lcom/cloud/hisavana/sdk/r;

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/o;->r:Lcom/cloud/hisavana/sdk/r;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v2, Lcom/cloud/hisavana/sdk/o$b;

    invoke-direct {v2, p0, p1}, Lcom/cloud/hisavana/sdk/o$b;-><init>(Lcom/cloud/hisavana/sdk/o;Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/cloud/hisavana/sdk/r;->d(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/s4;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/cloud/hisavana/sdk/o;->k(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;ZZZ)V

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "<script>   window.addEventListener(\n          \"error\",\n          function (e) {\n            var target = e.srcElement;\n            var tagName = target.tagName || \"\";\n            if (tagName && tagName.toUpperCase() === \"IMG\" && target) {\n              const isShow = window.getComputedStyle(target).display != \"none\";\n              const isShow1 = window.getComputedStyle(target).visibility != \"hidden\";\n              const { width, height } = target.getBoundingClientRect();\n              const hasWidth = typeof width == \"number\" && width > 1;\n              const hasHeight = typeof height == \"number\" && height > 1;\n              if (hasWidth && hasHeight && isShow && isShow1) {\n                 window.loadError&&window.loadError.loadMaterialError&&window.loadError.loadMaterialError(target.src);\n              }\n            }\n          },\n          true\n        );\n        </script>"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "utf-8"

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v4, "text/html"

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method u(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;)V
    .locals 11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/o;->u:Z

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/G;->p()Lcom/cloud/hisavana/sdk/q3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/q3;->f()Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getH5AdUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-static {v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->A(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v4, 0x0

    invoke-static {v4, v2, v2, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->z(ILjava/lang/Integer;Ljava/lang/Integer;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    new-instance v2, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;

    invoke-direct {v2}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;-><init>()V

    invoke-virtual {v2, p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->setWebview(Landroid/webkit/WebView;)V

    new-instance v3, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getH5AdUrl()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTriggerId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->setCurrentAdInfo(Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;)V

    new-instance v4, Lcom/cloud/hisavana/sdk/o$c;

    invoke-direct {v4, p0, p2}, Lcom/cloud/hisavana/sdk/o$c;-><init>(Lcom/cloud/hisavana/sdk/o;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v4}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->setAdActionListener(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$a;)V

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v2, v4}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->setCurrentAd(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    const-string v4, "AgentPageJsBridge"

    invoke-virtual {p1, v2, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient;

    new-instance v4, Lcom/cloud/hisavana/sdk/o$d;

    invoke-direct {v4, p0}, Lcom/cloud/hisavana/sdk/o$d;-><init>(Lcom/cloud/hisavana/sdk/o;)V

    invoke-direct {v2, v4}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient;-><init>(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient$OverrideListener;)V

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getH5AdUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient;->setMainPageUrl(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageWebViewClient;->setSource(I)V

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/o;->i:Z

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v8, 0x1

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/cloud/hisavana/sdk/o;->k(Lcom/cloud/hisavana/sdk/common/widget/TadmWebView;Landroid/view/ViewGroup;ZZZ)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez p2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->setWidth(I)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->setHeight(I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/o;->b:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object p2

    const-string v0, "B3201"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/high16 p2, 0x43480000    # 200.0f

    invoke-static {p2}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->setHeight(I)V

    const/high16 p2, 0x43960000    # 300.0f

    invoke-static {p2}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->setWidth(I)V

    goto :goto_2

    :cond_5
    const/high16 p2, 0x42580000    # 54.0f

    invoke-static {p2}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->setHeight(I)V

    const/high16 p2, 0x43b40000    # 360.0f

    invoke-static {p2}, Lcom/cloud/sdk/commonutil/util/h;->a(F)I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/cloud/hisavana/sdk/internal/agentpage/bean/AgentPageCurrentAd;->setWidth(I)V

    :cond_6
    :goto_2
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getH5AdUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "BannerGemini"

    const-string v0, "getConfig().getH5AdUrl() == null"

    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz p1, :cond_8

    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_H5_ADURL_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_8
    return-void

    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/o;->a:Lcom/cloud/hisavana/sdk/p3;

    if-eqz p1, :cond_a

    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_SHOW_ADBEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/p3;->J(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_a
    return-void
.end method
