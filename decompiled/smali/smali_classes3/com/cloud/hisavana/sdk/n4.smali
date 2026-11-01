.class public Lcom/cloud/hisavana/sdk/n4;
.super Lcom/cloud/hisavana/sdk/l0;


# instance fields
.field private d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

.field private e:Ljava/util/concurrent/atomic/AtomicInteger;

.field private f:Lcom/cloud/hisavana/sdk/r3;

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILcom/cloud/hisavana/sdk/r3;)V
    .locals 1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/l0;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/n4;->g:Z

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/n4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    iput p2, p0, Lcom/cloud/hisavana/sdk/n4;->h:I

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/n4;->f:Lcom/cloud/hisavana/sdk/r3;

    return-void
.end method

.method private g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/n4;->g:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4;->f:Lcom/cloud/hisavana/sdk/r3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/l0;->a:Landroid/os/Bundle;

    invoke-interface {v0, p1, v1}, Lcom/cloud/hisavana/sdk/r3;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateDownloadCount imageCounter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/n4;->e:Ljava/util/concurrent/atomic/AtomicInteger;

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

    const-string v2, "SplashLoadManager"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/l0;->d()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/n4;->w()V

    invoke-static {p1}, Lcom/cloud/hisavana/sdk/N0;->M(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_1
    return-void
.end method

.method private i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->setCached(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/cloud/hisavana/sdk/n4;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/n4;->w()V

    return-void
.end method

.method static synthetic k(Lcom/cloud/hisavana/sdk/n4;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/l0;->e(I)V

    return-void
.end method

.method static synthetic l(Lcom/cloud/hisavana/sdk/n4;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/n4;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method static synthetic m(Lcom/cloud/hisavana/sdk/n4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/n4;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/n4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/n4;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    return-void
.end method

.method static synthetic o(Lcom/cloud/hisavana/sdk/n4;)Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/n4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    return-object p0
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/n4;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/l0;->f(I)V

    return-void
.end method

.method static synthetic r(Lcom/cloud/hisavana/sdk/n4;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/l0;->b(I)V

    return-void
.end method

.method private s()V
    .locals 5

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "SplashLoadManager"

    const-string v2, "interstitial loadAdmAd"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4;->f:Lcom/cloud/hisavana/sdk/r3;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_DOWNLOAD_NO_NETWORK:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/l0;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/cloud/hisavana/sdk/r3;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/n4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/n4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/n4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/n4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_4

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lcom/cloud/hisavana/sdk/n4;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/n4;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/n4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v2, Lcom/cloud/hisavana/sdk/n4$d;

    invoke-direct {v2, p0}, Lcom/cloud/hisavana/sdk/n4$d;-><init>(Lcom/cloud/hisavana/sdk/n4;)V

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/l0;->a()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/n4;->w()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4;->f:Lcom/cloud/hisavana/sdk/r3;

    sget-object v1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_MATERIAL_DOWNLOAD_LOCAL_BEAN_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/l0;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/cloud/hisavana/sdk/r3;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic t(Lcom/cloud/hisavana/sdk/n4;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/l0;->f(I)V

    return-void
.end method

.method private u()V
    .locals 6

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "SplashLoadManager"

    const-string v2, "interstitial loadNormalAd"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/cloud/hisavana/sdk/n4;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/n4;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/n4;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/n4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    new-instance v3, Lcom/cloud/hisavana/sdk/n4$b;

    invoke-direct {v3, p0, v0}, Lcom/cloud/hisavana/sdk/n4$b;-><init>(Lcom/cloud/hisavana/sdk/n4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    :cond_2
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x8

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v3

    new-instance v4, Lcom/cloud/hisavana/sdk/n4$c;

    invoke-direct {v4, p0, v0}, Lcom/cloud/hisavana/sdk/n4$c;-><init>(Lcom/cloud/hisavana/sdk/n4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ADM_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/n4;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :goto_1
    return-void
.end method

.method private v()V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "SplashLoadManager"

    const-string v2, "interstitial loadVastAd"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_INTERSTITIAL_MATERIAL_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/n4;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_0
    sget-object v1, Lcom/cloud/hisavana/sdk/common/util/q0;->a:Lcom/cloud/hisavana/sdk/common/util/q0$a;

    new-instance v2, Lcom/cloud/hisavana/sdk/n4$a;

    invoke-direct {v2, p0, v0}, Lcom/cloud/hisavana/sdk/n4$a;-><init>(Lcom/cloud/hisavana/sdk/n4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-virtual {v1, v2, v0}, Lcom/cloud/hisavana/sdk/common/util/q0$a;->c(Lcom/cloud/hisavana/sdk/common/util/q0$b;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method private w()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/n4;->g:Z

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4;->f:Lcom/cloud/hisavana/sdk/r3;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/n4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/l0;->a:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/cloud/hisavana/sdk/r3;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Lcom/cloud/hisavana/sdk/n4;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/n4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/cloud/hisavana/sdk/u0;->a:Lcom/cloud/hisavana/sdk/u0;

    invoke-virtual {v1, v0}, Lcom/cloud/hisavana/sdk/u0;->b(Ljava/util/List;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public q()V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_INTERSTITIAL_MATERIAL_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/n4;->g(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/cloud/hisavana/sdk/n4;->g:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cloud/hisavana/sdk/n4;->g:Z

    iget v1, p0, Lcom/cloud/hisavana/sdk/n4;->h:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/n4;->v()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/n4;->d:Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/n4;->u()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/n4;->s()V

    :goto_0
    return-void

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/l0;->a()V

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/n4;->w()V

    return-void
.end method
