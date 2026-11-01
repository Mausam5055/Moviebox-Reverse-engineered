.class public Lcom/cloud/hisavana/sdk/k0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/k0$d;,
        Lcom/cloud/hisavana/sdk/k0$e;,
        Lcom/cloud/hisavana/sdk/k0$c;
    }
.end annotation


# instance fields
.field private a:Lcom/cloud/hisavana/sdk/k0$c;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/k0$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/k0;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/k0;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/k0;->i(Ljava/util/List;)V

    return-void
.end method

.method public static b()Lcom/cloud/hisavana/sdk/k0;
    .locals 1

    invoke-static {}, Lcom/cloud/hisavana/sdk/k0$e;->a()Lcom/cloud/hisavana/sdk/k0;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/k0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/k0;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/cloud/hisavana/sdk/k0;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/k0;->k(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V

    return-void
.end method

.method private e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;IZLcom/cloud/hisavana/sdk/o4;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/k0$d;)V
    .locals 8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p6, p5, p7}, Lcom/cloud/hisavana/sdk/k0;->k(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V

    return-void

    :cond_0
    new-instance v0, Lcom/cloud/hisavana/sdk/k0$b;

    move-object v1, v0

    move-object v2, p0

    move v3, p4

    move-object v4, p2

    move-object v5, p6

    move-object v6, p5

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/cloud/hisavana/sdk/k0$b;-><init>(Lcom/cloud/hisavana/sdk/k0;ZLjava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V

    invoke-static {p2, p1, p3, p4, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return-void
.end method

.method private f(Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-interface {p2}, Lcom/cloud/hisavana/sdk/k0$d;->a()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/o4;->a()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/o4;->c()Lcom/cloud/hisavana/sdk/o4;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/k0;->f(Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V

    return-void

    :cond_1
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/v2;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/o4;->c()Lcom/cloud/hisavana/sdk/o4;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/k0;->f(Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V

    return-void

    :cond_2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/cloud/hisavana/sdk/k0;->l(Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/k0$d;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/cloud/hisavana/sdk/k0;->n(Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/k0$d;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/cloud/hisavana/sdk/k0;->p(Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/k0$d;)V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/cloud/hisavana/sdk/k0;->g(Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/k0$d;)V

    return-void
.end method

.method private g(Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/k0$d;)V
    .locals 8

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineH5Url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p1, p4}, Lcom/cloud/hisavana/sdk/k0;->k(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isH5Zip()Z

    move-result v4

    const/4 v3, 0x5

    move-object v0, p0

    move-object v1, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/cloud/hisavana/sdk/k0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;IZLcom/cloud/hisavana/sdk/o4;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/k0$d;)V

    :goto_0
    return-void
.end method

.method private h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/m;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "offline_zip"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/common/util/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/cloud/hisavana/sdk/common/util/s0;->b(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private synthetic i(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/k0;->m(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/k0;->o(Ljava/util/List;)V

    return-void
.end method

.method private k(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-gtz p1, :cond_3

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/o4;->c()Lcom/cloud/hisavana/sdk/o4;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/k0;->f(Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V

    :cond_3
    return-void
.end method

.method private l(Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/k0$d;)V
    .locals 10

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/cloud/hisavana/sdk/common/util/q0;->a:Lcom/cloud/hisavana/sdk/common/util/q0$a;

    new-instance v1, Lcom/cloud/hisavana/sdk/k0$a;

    invoke-direct {v1, p0, p3, p1, p4}, Lcom/cloud/hisavana/sdk/k0$a;-><init>(Lcom/cloud/hisavana/sdk/k0;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V

    invoke-virtual {v0, v1, p2}, Lcom/cloud/hisavana/sdk/common/util/q0$a;->c(Lcom/cloud/hisavana/sdk/common/util/q0$b;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_2

    :cond_0
    invoke-static {p2}, Lcom/cloud/hisavana/sdk/v2;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Lcom/cloud/hisavana/sdk/v2;->p(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :goto_1
    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object v7, p1

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/cloud/hisavana/sdk/k0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;IZLcom/cloud/hisavana/sdk/o4;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/k0$d;)V

    :goto_2
    return-void
.end method

.method private m(Ljava/util/List;)V
    .locals 7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v1, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->q:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-static {v1, v0, v4, v3, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    :cond_1
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getMaterialStyle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v5

    iget v5, v5, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    const-string v5, "B20301"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "B20302"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "B20303"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v4, 0x1

    invoke-static {v1, v0, v4, v3, v2}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private n(Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/k0$d;)V
    .locals 11

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfoStatus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getImgList()Ljava/util/List;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f00\u59cb\u4e0b\u8f7dPslink Half\u7d20\u6750 =="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,psImgUrl.size() == "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OfflineDownload"

    invoke-virtual {v1, v4, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v6, p1

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/cloud/hisavana/sdk/k0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;IZLcom/cloud/hisavana/sdk/o4;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/k0$d;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p2

    move-object v8, p1

    move-object v9, p3

    move-object v10, p4

    invoke-direct/range {v3 .. v10}, Lcom/cloud/hisavana/sdk/k0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;IZLcom/cloud/hisavana/sdk/o4;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/k0$d;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private o(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/k0;->a:Lcom/cloud/hisavana/sdk/k0$c;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/cloud/hisavana/sdk/k0$c;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private p(Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/k0$d;)V
    .locals 10

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p2

    move-object v7, p1

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v2 .. v9}, Lcom/cloud/hisavana/sdk/k0;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;IZLcom/cloud/hisavana/sdk/o4;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/k0$d;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, p1, p4}, Lcom/cloud/hisavana/sdk/k0;->k(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3, p1, p4}, Lcom/cloud/hisavana/sdk/k0;->k(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public j(Ljava/util/List;Lcom/cloud/hisavana/sdk/k0$c;)V
    .locals 6

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/k0;->a:Lcom/cloud/hisavana/sdk/k0$c;

    const-string p2, "OfflineDownload"

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    move-object v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/cloud/hisavana/sdk/o4;

    invoke-direct {v5, v4}, Lcom/cloud/hisavana/sdk/o4;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    if-nez v3, :cond_2

    move-object v2, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v5}, Lcom/cloud/hisavana/sdk/o4;->b(Lcom/cloud/hisavana/sdk/o4;)V

    :goto_1
    move-object v3, v5

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {p1, p2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/k0;->o(Ljava/util/List;)V

    return-void

    :cond_4
    new-instance p2, Lcom/cloud/hisavana/sdk/i0;

    invoke-direct {p2, p0, p1}, Lcom/cloud/hisavana/sdk/i0;-><init>(Lcom/cloud/hisavana/sdk/k0;Ljava/util/List;)V

    invoke-direct {p0, v2, p2}, Lcom/cloud/hisavana/sdk/k0;->f(Lcom/cloud/hisavana/sdk/o4;Lcom/cloud/hisavana/sdk/k0$d;)V

    return-void

    :cond_5
    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v1, "\u5e7f\u544alist\u4e3a\u7a7a"

    invoke-virtual {p1, p2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/sdk/k0;->o(Ljava/util/List;)V

    return-void
.end method
