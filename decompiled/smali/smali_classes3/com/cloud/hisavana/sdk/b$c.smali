.class Lcom/cloud/hisavana/sdk/b$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/hisavana/sdk/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/b$c;

.field private final b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

.field private final c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/b$c;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/b$c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/b$c;->i(Z)V

    return-void
.end method

.method static synthetic b(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/b$c;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$c;->a:Lcom/cloud/hisavana/sdk/b$c;

    return-object p0
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/b$c;Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/b$c;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/b$c;->a:Lcom/cloud/hisavana/sdk/b$c;

    return-object p1
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->p()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/cloud/hisavana/sdk/b$c;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/b$c;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V

    return-void
.end method

.method private f(Lcom/cloud/hisavana/sdk/common/bean/AdImage;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getImgUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2, p3, p4, p5}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "NativeLoadManager"

    const-string p3, "image url is null"

    invoke-virtual {p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_2

    sget-object p1, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_PRE_CACHE_IMG_URL_IS_EMPTY:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p5, p1}, Lcom/cloud/hisavana/sdk/common/http/listener/ResponseBaseListener;->a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :cond_2
    return-void
.end method

.method private g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdImgUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/cloud/hisavana/sdk/b$c$b;

    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/b$c$b;-><init>(Lcom/cloud/hisavana/sdk/b$c;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-static {v0, p1, v2, v3, v1}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return-void
.end method

.method private h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/common/bean/AdImage;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->d()V

    return-void

    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/z;->a:Lcom/cloud/hisavana/sdk/common/util/z;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->getFilePath()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/cloud/hisavana/sdk/c;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/c;-><init>(Lcom/cloud/hisavana/sdk/b$c;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/cloud/hisavana/sdk/common/util/z;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/util/n;)V

    return-void
.end method

.method private synthetic i(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setCached(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->d()V

    return-void
.end method

.method static synthetic j(Lcom/cloud/hisavana/sdk/b$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->u()V

    return-void
.end method

.method private k()Z
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAcImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAcImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v2

    new-instance v3, Lcom/cloud/hisavana/sdk/b$c$d;

    invoke-direct {v3, p0}, Lcom/cloud/hisavana/sdk/b$c$d;-><init>(Lcom/cloud/hisavana/sdk/b$c;)V

    const/4 v4, 0x3

    invoke-static {v0, v2, v4, v1, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setACReady(Ljava/lang/Boolean;)V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method static synthetic l(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$c;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    return-object p0
.end method

.method private m()Z
    .locals 8

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/b$c;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v4

    new-instance v7, Lcom/cloud/hisavana/sdk/b$c$a;

    invoke-direct {v7, p0}, Lcom/cloud/hisavana/sdk/b$c$a;-><init>(Lcom/cloud/hisavana/sdk/b$c;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/cloud/hisavana/sdk/b$c;->f(Lcom/cloud/hisavana/sdk/common/bean/AdImage;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return v1
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/b$c;)Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    return-object p0
.end method

.method private o()Z
    .locals 7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getIconImage()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v3

    new-instance v6, Lcom/cloud/hisavana/sdk/b$c$c;

    invoke-direct {v6, p0}, Lcom/cloud/hisavana/sdk/b$c$c;-><init>(Lcom/cloud/hisavana/sdk/b$c;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/b$c;->f(Lcom/cloud/hisavana/sdk/common/bean/AdImage;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    const/4 v0, 0x1

    return v0
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->a:Lcom/cloud/hisavana/sdk/b$c;

    if-eqz v0, :cond_0

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/b$c;->u()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->c:Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest$c;->onSuccess()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic q(Lcom/cloud/hisavana/sdk/b$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->d()V

    return-void
.end method

.method private r()Z
    .locals 7

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getStore()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v3

    new-instance v6, Lcom/cloud/hisavana/sdk/b$c$e;

    invoke-direct {v6, p0}, Lcom/cloud/hisavana/sdk/b$c$e;-><init>(Lcom/cloud/hisavana/sdk/b$c;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/cloud/hisavana/sdk/b$c;->f(Lcom/cloud/hisavana/sdk/common/bean/AdImage;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v1, "NativeLoadManager"

    const-string v2, "downloadStoreIcon nativeInfo of adItem is null"

    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private s()Z
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getIcon()Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->getIconResource()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->getIconResource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->getIconResource()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/cloud/hisavana/sdk/b$c$f;

    invoke-direct {v2, p0}, Lcom/cloud/hisavana/sdk/b$c$f;-><init>(Lcom/cloud/hisavana/sdk/b$c;)V

    const/16 v3, 0xb

    const/4 v4, 0x1

    invoke-static {v1, v0, v3, v4, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return v4

    :cond_3
    :goto_0
    return v1
.end method

.method private t()Z
    .locals 5

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVideoMask()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;->getResource()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;->getResource()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;->getResource()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/cloud/hisavana/sdk/b$c$g;

    invoke-direct {v3, p0, v2}, Lcom/cloud/hisavana/sdk/b$c$g;-><init>(Lcom/cloud/hisavana/sdk/b$c;Lcom/cloud/hisavana/sdk/common/bean/VastData;)V

    const/16 v2, 0xc

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v4, v3}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return v4

    :cond_3
    :goto_0
    return v1
.end method

.method private u()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->p()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->p()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    move-result v1

    const/4 v3, 0x6

    if-eq v1, v3, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getStore()Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->setImgUrl(Ljava/lang/String;)V

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/b$c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    :cond_4
    iget-object v3, p0, Lcom/cloud/hisavana/sdk/b$c;->b:Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdType()I

    move-result v3

    if-ne v3, v2, :cond_9

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v0

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/b$c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->checkVast()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->s()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->d()V

    :cond_5
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->t()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->d()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->m()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->d()V

    :cond_7
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->o()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->d()V

    :cond_8
    :goto_1
    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->r()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->d()V

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/b$c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->o()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->d()V

    :cond_a
    if-eqz v1, :cond_b

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->r()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->d()V

    :cond_b
    :goto_2
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/b$c;->k()Z

    return-void
.end method
