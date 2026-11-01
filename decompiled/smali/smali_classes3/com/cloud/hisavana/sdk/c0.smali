.class public Lcom/cloud/hisavana/sdk/c0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/c0$d;,
        Lcom/cloud/hisavana/sdk/c0$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private b:Ljava/util/List;

.field private c:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

.field private d:I

.field e:Landroidx/collection/b;

.field private final f:Lcom/cloud/hisavana/sdk/k0$c;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/c0;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroidx/collection/b;

    invoke-direct {v0}, Landroidx/collection/b;-><init>()V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/c0;->e:Landroidx/collection/b;

    new-instance v0, Lcom/cloud/hisavana/sdk/c0$a;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/sdk/c0$a;-><init>(Lcom/cloud/hisavana/sdk/c0;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/c0;->f:Lcom/cloud/hisavana/sdk/k0$c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloud/hisavana/sdk/c0$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/c0;-><init>()V

    return-void
.end method

.method private B(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/cloud/hisavana/sdk/common/util/g;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/c0;->f:Lcom/cloud/hisavana/sdk/k0$c;

    invoke-interface {p2, p1}, Lcom/cloud/hisavana/sdk/k0$c;->a(Ljava/util/List;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current code seat is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "OfflineAdManager"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/k0;->b()Lcom/cloud/hisavana/sdk/k0;

    move-result-object p1

    iget-object p2, p0, Lcom/cloud/hisavana/sdk/c0;->f:Lcom/cloud/hisavana/sdk/k0$c;

    invoke-virtual {p1, v0, p2}, Lcom/cloud/hisavana/sdk/k0;->j(Ljava/util/List;Lcom/cloud/hisavana/sdk/k0$c;)V

    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/c0;->f:Lcom/cloud/hisavana/sdk/k0$c;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/cloud/hisavana/sdk/k0$c;->a(Ljava/util/List;)V

    return-void
.end method

.method private C(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "OfflineAdManager"

    if-nez v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "response pmid is different with request\'s"

    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/c0;->f:Lcom/cloud/hisavana/sdk/k0$c;

    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_OFFLINE_PLACEMENT_ID_MISMATCH:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-interface {p1, p3, p4, p2}, Lcom/cloud/hisavana/sdk/k0$c;->a(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return v1

    :cond_0
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "response adt is different with request\'s"

    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/c0;->f:Lcom/cloud/hisavana/sdk/k0$c;

    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_OFFLINE_TYPE_MISMATCH:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-interface {p1, p3, p4, p2}, Lcom/cloud/hisavana/sdk/k0$c;->a(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private D(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isPriorityH5Ad()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getH5AdUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/p0;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/cloud/hisavana/sdk/d0;->a:Lcom/cloud/hisavana/sdk/d0;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getH5AdUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/d0;->e(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cloud/hisavana/sdk/c0;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Lcom/cloud/hisavana/sdk/c0;->w(Ljava/lang/String;I)V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private E(Ljava/util/List;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 5

    const-string v0, "OfflineAdManager"

    const/4 v1, 0x1

    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/cloud/hisavana/sdk/common/util/d0;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v1, :cond_4

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x0

    if-ne p1, v1, :cond_3

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getNativeObject()Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean;->getMainImages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/NativeBean$MainImagesDTO;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "Native ad\'s image is empty,remove from list"

    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    return p2

    :cond_4
    :goto_0
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v2, v1, :cond_5

    move v3, v1

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    :cond_6
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "ad is null or ad is not offline,remove from list"

    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static F()Lcom/cloud/hisavana/sdk/c0;
    .locals 1

    invoke-static {}, Lcom/cloud/hisavana/sdk/c0$d;->a()Lcom/cloud/hisavana/sdk/c0;

    move-result-object v0

    return-object v0
.end method

.method static synthetic G(Lcom/cloud/hisavana/sdk/c0;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/c0;->c:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    return-object p0
.end method

.method private synthetic H(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 4

    sget-object v0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v2}, Lcom/cloud/hisavana/sdk/d;->i(Ljava/lang/String;ZLjava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/c0;->t(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V

    return-void
.end method

.method private synthetic I(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V
    .locals 6

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getLastOfflineAdEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p1}, Lcom/cloud/hisavana/sdk/c0;->B(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/c0;->w(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget v0, p0, Lcom/cloud/hisavana/sdk/c0;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/cloud/hisavana/sdk/c0;->B(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2, p1}, Lcom/cloud/hisavana/sdk/c0;->B(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/c0;->w(Ljava/lang/String;I)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isAdRequestFail()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getOfflineAdRequestTimeInterval()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getOfflineAdRequestTimeIntervalNoAd()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0x3c

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getLastRequestAdTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gtz v0, :cond_5

    invoke-direct {p0, p2, p1}, Lcom/cloud/hisavana/sdk/c0;->B(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/c0;->w(Ljava/lang/String;I)V

    return-void

    :cond_5
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/c0;->w(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/c0;->c:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    iget p2, p0, Lcom/cloud/hisavana/sdk/c0;->d:I

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/c0;->s(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;I)V

    return-void
.end method

.method private synthetic J(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/c0;->B(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    return-void
.end method

.method static synthetic K(Lcom/cloud/hisavana/sdk/c0;)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/c0;->j()V

    return-void
.end method

.method private synthetic L(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 4

    sget-object v0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v2}, Lcom/cloud/hisavana/sdk/d;->i(Ljava/lang/String;ZLjava/util/List;Z)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v2, Lcom/cloud/hisavana/sdk/x;

    invoke-direct {v2, p0, v0, p1}, Lcom/cloud/hisavana/sdk/x;-><init>(Lcom/cloud/hisavana/sdk/c0;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    invoke-virtual {v1, v2}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic M(Lcom/cloud/hisavana/sdk/c0;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/c0;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic N(Lcom/cloud/hisavana/sdk/c0;)Lcom/cloud/hisavana/sdk/k0$c;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/c0;->f:Lcom/cloud/hisavana/sdk/k0$c;

    return-object p0
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/c0;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/c0;->I(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/c0;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/c0;->J(Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    return-void
.end method

.method public static synthetic c(Lcom/cloud/hisavana/sdk/c0;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/c0;->L(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    return-void
.end method

.method public static synthetic d(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/c0;->g(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/cloud/hisavana/sdk/c0;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cloud/hisavana/sdk/c0;->H(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    return-void
.end method

.method static synthetic f(Lcom/cloud/hisavana/sdk/c0;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/c0;->c:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    return-object p1
.end method

.method private static synthetic g(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/l1;->c(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/cloud/hisavana/sdk/c0;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/c0;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/cloud/hisavana/sdk/c0;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/c0;->b:Ljava/util/List;

    return-object p1
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c0;->b:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    invoke-direct {p0, v2}, Lcom/cloud/hisavana/sdk/c0;->D(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/cloud/hisavana/sdk/c0;->c:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v3, Lcom/cloud/hisavana/sdk/t;

    invoke-direct {v3, p0, v2}, Lcom/cloud/hisavana/sdk/t;-><init>(Lcom/cloud/hisavana/sdk/c0;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    invoke-virtual {v0, v3}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c0;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c0;->f:Lcom/cloud/hisavana/sdk/k0$c;

    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/k0$c;->a(Ljava/util/List;)V

    :cond_3
    return-void

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c0;->f:Lcom/cloud/hisavana/sdk/k0$c;

    invoke-interface {v0, v1}, Lcom/cloud/hisavana/sdk/k0$c;->a(Ljava/util/List;)V

    return-void
.end method

.method static synthetic k(Lcom/cloud/hisavana/sdk/c0;Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/c0;->n(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    return-void
.end method

.method static synthetic l(Lcom/cloud/hisavana/sdk/c0;Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/c0;->p(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    return-void
.end method

.method static synthetic m(Lcom/cloud/hisavana/sdk/c0;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/c0;->u(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Z)V

    return-void
.end method

.method private n(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 4

    const-string v0, "OfflineAdManager"

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offline loadAd error, response is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getCode()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string v1, "offline loadAd error, response is null"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const/4 p1, -0x1

    const-string v1, "response is null"

    invoke-direct {v0, p1, v1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/c0;->f:Lcom/cloud/hisavana/sdk/k0$c;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lcom/cloud/hisavana/sdk/k0$c;->a(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method private o(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 7

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getScales()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAbTest()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getExtInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAdSeatType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getTestResponse()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-direct {p0, p4, p5, v4}, Lcom/cloud/hisavana/sdk/c0;->E(Ljava/util/List;Ljava/util/List;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineH5Url()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineH5Url()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cloud/hisavana/sdk/common/util/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setFilePath(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setFill_ts(Ljava/lang/Long;)V

    invoke-virtual {v4, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setAbTest(Ljava/util/List;)V

    invoke-virtual {v4, v2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setExtInfo(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setImpBeanRequest(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    invoke-virtual {v4, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setTestResponse(Ljava/lang/Boolean;)V

    invoke-virtual {v4, v3}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdSeatType(Ljava/lang/String;)V

    invoke-virtual {v4, p6}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setAdRequestVer(I)V

    sget-object v5, Lcom/cloud/hisavana/sdk/common/util/b;->a:Lcom/cloud/hisavana/sdk/common/util/b;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/cloud/hisavana/sdk/common/util/b;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setUuid(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setScales(Ljava/util/List;)V

    invoke-direct {p0, v4, v5}, Lcom/cloud/hisavana/sdk/c0;->r(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/cloud/hisavana/sdk/v2;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private p(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 12

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    move-result-object v0

    const-string v1, "OfflineAdManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getOfflineAd()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAds()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/cloud/hisavana/sdk/c0;->C(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdRequestVer()I

    move-result v3

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {p2, v9}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setAdRequestVer(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/P;->g()Lcom/cloud/hisavana/sdk/P;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/cloud/hisavana/sdk/P;->j(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, v0

    move-object v7, v10

    move-object v8, v11

    invoke-direct/range {v3 .. v9}, Lcom/cloud/hisavana/sdk/c0;->o(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    iget-object v4, p3, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    iget-object v5, p3, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    iget-object v6, p3, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 p1, 0x2

    move-object v7, v10

    move-object v8, v11

    move v10, p1

    invoke-static/range {v4 .. v10}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iget-object v3, p0, Lcom/cloud/hisavana/sdk/c0;->e:Landroidx/collection/b;

    invoke-static {v0, v2, p3, p1, v3}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->h0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download ad before"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setLocalOfflineAdCacheCount(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/c0;->F()Lcom/cloud/hisavana/sdk/c0;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/c0;->A(Ljava/util/List;)V

    sget-object p1, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance p3, Lcom/cloud/hisavana/sdk/w;

    invoke-direct {p3, p0, p2}, Lcom/cloud/hisavana/sdk/w;-><init>(Lcom/cloud/hisavana/sdk/c0;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    invoke-virtual {p1, p3}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/c0;->f:Lcom/cloud/hisavana/sdk/k0$c;

    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ADS_OFFLINE_ARE_FILTERED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-interface {p1, p3, v2, p2}, Lcom/cloud/hisavana/sdk/k0$c;->a(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p1

    const-string p2, "ads list is empty"

    invoke-virtual {p1, v1, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/c0;->f:Lcom/cloud/hisavana/sdk/k0$c;

    sget-object p2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_OFFLINE_AD_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-interface {p1, p3, v2, p2}, Lcom/cloud/hisavana/sdk/k0$c;->a(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void
.end method

.method private r(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAppInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAppInfo()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    invoke-static {v0, v1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setGaid(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setShowId(Ljava/lang/String;)V

    invoke-static {}, Lcom/transsion/core/utils/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setAppPackageName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result p2

    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setOfflineAd(Z)V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getShowTrackingSecretKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setShowTrackingSecretKey(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setPslinkInfo(Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load ad extAppInfo error ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OfflineAdManager"

    invoke-virtual {p2, v0, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private s(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/c0;->f:Lcom/cloud/hisavana/sdk/k0$c;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/cloud/hisavana/sdk/k0$c;->a(Ljava/util/List;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAds config id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OfflineAdManager"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;-><init>()V

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getOfflineAdCacheCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->mAdCount:I

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->offlineAd:Z

    invoke-static {}, Lcom/cloud/hisavana/sdk/common/util/m0;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->isOfflineAdEnable()Z

    move-result v2

    iput-boolean v2, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->offlineAdEnable:Z

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getLocalOfflineAdCacheCount()I

    move-result v2

    iput v2, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->cacheAdCount:I

    if-eq p2, v1, :cond_3

    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x7

    iput p2, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestType:I

    goto :goto_0

    :cond_2
    const/4 p2, 0x6

    iput p2, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestType:I

    goto :goto_0

    :cond_3
    const/4 p2, 0x5

    iput p2, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestType:I

    :goto_0
    new-instance p2, Lcom/cloud/hisavana/sdk/common/http/a;

    invoke-direct {p2}, Lcom/cloud/hisavana/sdk/common/http/a;-><init>()V

    new-instance v2, Lcom/cloud/hisavana/sdk/c0$b;

    invoke-direct {v2, p0, p1, v0}, Lcom/cloud/hisavana/sdk/c0$b;-><init>(Lcom/cloud/hisavana/sdk/c0;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    invoke-virtual {p2, v2}, Lcom/cloud/hisavana/sdk/common/http/a;->m(Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p1

    new-instance p2, Lcom/cloud/hisavana/sdk/v;

    invoke-direct {p2, v0}, Lcom/cloud/hisavana/sdk/v;-><init>(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/http/a;->o(Lcom/cloud/hisavana/sdk/common/http/a$b;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p1

    invoke-static {}, La7/c;->p()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/http/a;->k(Z)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/k1;->o()Lcom/cloud/hisavana/sdk/k1;

    move-result-object p2

    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/k1;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/http/a;->q(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p1

    iget-object p2, v0, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->pmid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/http/a;->n(Ljava/lang/String;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/cloud/hisavana/sdk/common/http/a;->l(Z)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/http/a;->j(Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)Lcom/cloud/hisavana/sdk/common/http/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/http/d;->b()V

    return-void
.end method

.method private t(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V
    .locals 2

    sget-object v0, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->a:Lcom/cloud/sdk/commonutil/util/HSScopeHelper;

    new-instance v1, Lcom/cloud/hisavana/sdk/u;

    invoke-direct {v1, p0, p1, p2}, Lcom/cloud/hisavana/sdk/u;-><init>(Lcom/cloud/hisavana/sdk/c0;Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method private u(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setLastRequestAdTime(J)V

    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setAdRequestFail(Z)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/P;->g()Lcom/cloud/hisavana/sdk/P;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/cloud/hisavana/sdk/P;->j(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    return-void
.end method

.method private v(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/cloud/hisavana/sdk/c0;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->j0(Ljava/lang/String;I)V

    return-void
.end method

.method private w(Ljava/lang/String;I)V
    .locals 2

    iget v0, p0, Lcom/cloud/hisavana/sdk/c0;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, v0, p2}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->Y(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public A(Ljava/util/List;)V
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/d;->y(Ljava/util/List;)V

    return-void
.end method

.method public q(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    invoke-virtual {v0, p1}, Lcom/cloud/hisavana/sdk/d;->H(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    return-void
.end method

.method public x(Ljava/lang/String;IZLjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/hisavana/sdk/c0$c;)V
    .locals 7

    sget-object v0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/cloud/hisavana/sdk/d;->o(Ljava/lang/String;IZLjava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Lcom/cloud/hisavana/sdk/c0$c;)V

    return-void
.end method

.method public y(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/cloud/hisavana/sdk/d;->a:Lcom/cloud/hisavana/sdk/d;

    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/d;->r(Ljava/lang/String;Z)V

    return-void
.end method

.method public z(Ljava/util/Collection;I)V
    .locals 3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDownloadAd triggerType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isDownloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/c0;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", config list size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OfflineAdManager"

    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/c0;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/cloud/hisavana/sdk/c0;->b:Ljava/util/List;

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/c0;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput p2, p0, Lcom/cloud/hisavana/sdk/c0;->d:I

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/c0;->j()V

    :cond_2
    :goto_0
    return-void
.end method
