.class public Lcom/cloud/hisavana/sdk/c1$d;
.super Lcom/cloud/hisavana/sdk/manager/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/manager/g$c;-><init>()V

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/c1$d;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c1$d;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getDspType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x1e0

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c1$d;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isDownloadAd()Z

    move-result v0

    if-eqz v0, :cond_2

    if-lt p2, v2, :cond_2

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/c1$d;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdxAscribeRetryEnable()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/c1$d;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->setData(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/manager/g;->d:Lcom/cloud/hisavana/sdk/manager/g$a;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/manager/g$a;->a()Lcom/cloud/hisavana/sdk/manager/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/manager/g;->h(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-lt p2, v2, :cond_2

    new-instance p2, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;

    invoke-direct {p2, p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/c1$d;->a:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;->setData(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    sget-object p1, Lcom/cloud/hisavana/sdk/manager/g;->d:Lcom/cloud/hisavana/sdk/manager/g$a;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/manager/g$a;->a()Lcom/cloud/hisavana/sdk/manager/g;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/manager/g;->h(Lcom/cloud/hisavana/sdk/common/bean/DiskTrackingBean;)V

    :cond_2
    :goto_0
    return-void
.end method
