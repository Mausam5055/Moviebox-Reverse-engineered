.class public Lcom/cloud/hisavana/sdk/common/tranmeasure/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/common/tranmeasure/d$b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AdImpressionListenerImpl"

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/common/tranmeasure/a;->a:Ljava/lang/String;

    return-void
.end method

.method private b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 6

    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/common/util/b;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPreloadStatus(I)V

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/a;->a:Lcom/cloud/hisavana/sdk/manager/a;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/manager/a;->b0()I

    move-result v2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preloadLandingPage: ccTabTestCode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdImpressionListenerImpl"

    invoke-virtual {v3, v5, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x1b6a

    if-eq v2, v3, :cond_2

    const/16 v3, 0x1b6b

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/cloud/hisavana/sdk/k4;->a:Lcom/cloud/hisavana/sdk/k4;

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/cloud/hisavana/sdk/k4;->l(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/manager/a;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v2

    const/16 v3, 0x1b68

    if-ne v2, v3, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPreloadStatus(I)V

    return-void

    :cond_3
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p1, v1}, Lcom/cloud/hisavana/sdk/manager/a;->s(Landroid/content/Context;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "ssp"

    const-string v2, "-------------------------> onViewImpressed"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    new-instance v7, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getImageWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getImageHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;-><init>(FFFFII)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/j3;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setClickid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getShowTrackingUrls()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p1, v7}, Lcom/cloud/hisavana/sdk/c1;->o(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/y;->a:Lcom/cloud/hisavana/sdk/y;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/y;->C(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/common/tranmeasure/a;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_2
    sget-object p1, Lcom/cloud/hisavana/sdk/y;->a:Lcom/cloud/hisavana/sdk/y;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/y;->Q()V

    return-void
.end method
