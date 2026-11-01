.class public Lcom/cloud/hisavana/sdk/m;
.super Lcom/cloud/hisavana/sdk/l0;


# instance fields
.field private final d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private e:Lcom/cloud/hisavana/sdk/r3;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/r3;)V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/l0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/m;->g:Z

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput p2, p0, Lcom/cloud/hisavana/sdk/m;->h:I

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/m;->e:Lcom/cloud/hisavana/sdk/r3;

    return-void
.end method

.method static synthetic g(Lcom/cloud/hisavana/sdk/m;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object p0
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/m;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/l0;->f(I)V

    return-void
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/m;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/m;->k(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method static synthetic j(Lcom/cloud/hisavana/sdk/m;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/m;->l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method private k(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/m;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/m;->g:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/m;->e:Lcom/cloud/hisavana/sdk/r3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/l0;->a:Landroid/os/Bundle;

    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/r3;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private l(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateDownloadCount imageCounter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/m;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BannerDownload"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/m;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/l0;->d()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/m;->e:Lcom/cloud/hisavana/sdk/r3;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/l0;->a:Landroid/os/Bundle;

    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/r3;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    :cond_1
    iget v0, p0, Lcom/cloud/hisavana/sdk/m;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/cloud/hisavana/sdk/u0;->a:Lcom/cloud/hisavana/sdk/u0;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/u0;->b(Ljava/util/List;)V

    :cond_2
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/N0;->M(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_3
    return-void
.end method

.method static synthetic m(Lcom/cloud/hisavana/sdk/m;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/l0;->b(I)V

    return-void
.end method

.method private n()V
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    const-string v2, "ssp"

    const-string v3, "textView impression"

    invoke-virtual {v1, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cloud/hisavana/sdk/m$a;

    invoke-direct {v2, p0, v0}, Lcom/cloud/hisavana/sdk/m$a;-><init>(Lcom/cloud/hisavana/sdk/m;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "BannerDownload"

    const-string v2, "Not found adChoiceImageUrl"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic o(Lcom/cloud/hisavana/sdk/m;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/l0;->f(I)V

    return-void
.end method

.method private p()V
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/m;->e:Lcom/cloud/hisavana/sdk/r3;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_DOWNLOAD_NO_NETWORK:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/l0;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/cloud/hisavana/sdk/r3;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/m;->e:Lcom/cloud/hisavana/sdk/r3;

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "BannerDownload"

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "getAdmView,adm is null"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ADM_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/m;->k(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getScales()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v4, "3:2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "20:3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ADM_SCALE_TAKE_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/m;->k(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "getAdmView adm scale is not fit"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/m;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/m;->k(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_5
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v2, Lcom/cloud/hisavana/sdk/m$d;

    invoke-direct {v2, p0}, Lcom/cloud/hisavana/sdk/m$d;-><init>(Lcom/cloud/hisavana/sdk/m;)V

    const/4 v4, 0x6

    invoke-static {v0, v1, v4, v3, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/m;->e:Lcom/cloud/hisavana/sdk/r3;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/l0;->a()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/m;->e:Lcom/cloud/hisavana/sdk/r3;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/l0;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/cloud/hisavana/sdk/r3;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    :cond_7
    :goto_0
    return-void

    :cond_8
    :goto_1
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ADM_SCALE_TAKE_FAILED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/m;->k(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/m;->e:Lcom/cloud/hisavana/sdk/r3;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_MATERIAL_DOWNLOAD_LOCAL_BEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/l0;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/cloud/hisavana/sdk/r3;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void
.end method

.method private r()V
    .locals 9

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/m;->e:Lcom/cloud/hisavana/sdk/r3;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_MATERIAL_DOWNLOAD_LOCAL_BEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/l0;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/cloud/hisavana/sdk/r3;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "B20301"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v2

    const-string v6, "B20302"

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v2

    const-string v6, "B20303"

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    move v2, v5

    move v6, v2

    goto :goto_0

    :cond_2
    move v6, v3

    move v2, v4

    :goto_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    move v6, v5

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_5

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v5, p0, Lcom/cloud/hisavana/sdk/m;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/m;->k(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_4
    invoke-virtual {v7}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/cloud/hisavana/sdk/m$b;

    invoke-direct {v5, p0, v0}, Lcom/cloud/hisavana/sdk/m$b;-><init>(Lcom/cloud/hisavana/sdk/m;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    const/4 v7, 0x6

    invoke-static {v4, v0, v7, v3, v5}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/cloud/hisavana/sdk/m;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    :goto_1
    new-instance v3, Lcom/cloud/hisavana/sdk/m$c;

    invoke-direct {v3, p0, v2, v0}, Lcom/cloud/hisavana/sdk/m$c;-><init>(Lcom/cloud/hisavana/sdk/m;ILcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {v1, v0, v2, v6, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    sget-boolean v0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->q:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/m;->n()V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/m;->e:Lcom/cloud/hisavana/sdk/r3;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_MATERIAL_DOWNLOAD_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/l0;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/cloud/hisavana/sdk/r3;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "BannerDownload"

    const-string v2, "Not found the render type"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public q()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/m;->g:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/cloud/hisavana/sdk/m;->h:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/m;->r()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/m;->p()V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/m;->e:Lcom/cloud/hisavana/sdk/r3;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/l0;->a()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/m;->e:Lcom/cloud/hisavana/sdk/r3;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/m;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/l0;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/cloud/hisavana/sdk/r3;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    :cond_3
    :goto_1
    return-void
.end method
