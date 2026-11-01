.class public final Lqi/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lqi/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqi/b;

    invoke-direct {v0}, Lqi/b;-><init>()V

    sput-object v0, Lqi/b;->a:Lqi/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lqi/b;Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const-wide/16 p4, 0x0

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lqi/b;->a(Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method private final e()Ljava/lang/String;
    .locals 2

    const-class v0, Lqi/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final f(Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "palmplay://thirdlauncher.com/?entryType=AppDetail&packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&_source=Moviebox&HalfScreenType=B&isHalfScreen=1&sceneCode="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final g(Lcom/transsion/ad/ps/model/RecommendInfo;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "palmplay://thirdlauncher.com/?entryType=AppDetail&packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&_source=Moviebox"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final h(Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const-string v3, "id"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->isOffer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const-string v3, "isOffer"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getShowType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    const-string v3, "showType"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPlanName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    const-string v3, "planName"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "media"

    const-string v3, "MovieBox"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "scene"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_4

    :cond_4
    move-object p2, v1

    :goto_4
    const-string v2, "planId"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "c_source"

    const-string v2, "PS"

    invoke-virtual {v0, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getAdSource()Ljava/lang/String;

    move-result-object v1

    :cond_5
    const-string p1, "adSource"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/blankj/utilcode/util/c;->f()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "mbVc"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "key"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final j(Lcom/transsion/ad/ps/model/RecommendInfo;Z)Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;
    .locals 6

    new-instance v0, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;-><init>()V

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setClickType(I)V

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getItemID()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setItemID(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, p2

    :goto_2
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setPackageName(Ljava/lang/String;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setAppPackageName(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/transsion/ad/ps/model/ItemDetail;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_4
    move-object v2, p2

    :cond_5
    :goto_3
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setName(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getStar()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_6
    move-object v2, p2

    :goto_4
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setStar(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDownloadCount()I

    move-result v2

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setDownloadCount(I)V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_8
    move-object v2, p2

    :goto_6
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setSourceSize(Ljava/lang/String;)V

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_9
    move-object v2, p2

    :goto_7
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setIconUrl(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/ItemDetail;->getImg0()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_a
    move-object v3, p2

    :goto_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    new-instance v3, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;

    invoke-direct {v3}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;-><init>()V

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lcom/transsion/ad/ps/model/ItemDetail;->getImg0()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_b
    move-object v4, p2

    :goto_9
    invoke-virtual {v3, v4}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->setUrl(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Lcom/transsion/ad/ps/model/ItemDetail;->getScreenshotMode()Ljava/util/List;

    move-result-object v4

    goto :goto_a

    :cond_c
    move-object v4, p2

    :goto_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {p0, v4, v5}, Lqi/b;->k(Ljava/util/List;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->setHv(I)V

    :cond_d
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/ItemDetail;->getImg1()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_e
    move-object v3, p2

    :goto_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    new-instance v3, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;

    invoke-direct {v3}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;-><init>()V

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/transsion/ad/ps/model/ItemDetail;->getImg1()Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_f
    move-object v4, p2

    :goto_c
    invoke-virtual {v3, v4}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->setUrl(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Lcom/transsion/ad/ps/model/ItemDetail;->getScreenshotMode()Ljava/util/List;

    move-result-object v4

    goto :goto_d

    :cond_10
    move-object v4, p2

    :goto_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {p0, v4, v5}, Lqi/b;->k(Ljava/util/List;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->setHv(I)V

    :cond_11
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/ItemDetail;->getImg2()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_12
    move-object v3, p2

    :goto_e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    new-instance v3, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;

    invoke-direct {v3}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;-><init>()V

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual {v4}, Lcom/transsion/ad/ps/model/ItemDetail;->getImg2()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :cond_13
    move-object v4, p2

    :goto_f
    invoke-virtual {v3, v4}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->setUrl(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v4

    if-eqz v4, :cond_14

    invoke-virtual {v4}, Lcom/transsion/ad/ps/model/ItemDetail;->getScreenshotMode()Ljava/util/List;

    move-result-object v4

    goto :goto_10

    :cond_14
    move-object v4, p2

    :goto_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {p0, v4, v5}, Lqi/b;->k(Ljava/util/List;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->setHv(I)V

    :cond_15
    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/ItemDetail;->getImg3()Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    :cond_16
    move-object v3, p2

    :goto_11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    new-instance v3, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;

    invoke-direct {v3}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;-><init>()V

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Lcom/transsion/ad/ps/model/ItemDetail;->getImg3()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_17
    move-object v4, p2

    :goto_12
    invoke-virtual {v3, v4}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->setUrl(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Lcom/transsion/ad/ps/model/ItemDetail;->getScreenshotMode()Ljava/util/List;

    move-result-object v4

    goto :goto_13

    :cond_18
    move-object v4, p2

    :goto_13
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {p0, v4, v5}, Lqi/b;->k(Ljava/util/List;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->setHv(I)V

    :cond_19
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/transsion/ad/ps/model/ItemDetail;->getImg4()Ljava/lang/String;

    move-result-object v3

    goto :goto_14

    :cond_1a
    move-object v3, p2

    :goto_14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    new-instance v3, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;

    invoke-direct {v3}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;-><init>()V

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v4

    if-eqz v4, :cond_1b

    invoke-virtual {v4}, Lcom/transsion/ad/ps/model/ItemDetail;->getImg4()Ljava/lang/String;

    move-result-object v4

    goto :goto_15

    :cond_1b
    move-object v4, p2

    :goto_15
    invoke-virtual {v3, v4}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->setUrl(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Lcom/transsion/ad/ps/model/ItemDetail;->getScreenshotMode()Ljava/util/List;

    move-result-object v4

    goto :goto_16

    :cond_1c
    move-object v4, p2

    :goto_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-direct {p0, v4, v5}, Lqi/b;->k(Ljava/util/List;I)I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->setHv(I)V

    :cond_1d
    invoke-virtual {v0, v2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setImgList(Ljava/util/List;)V

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getSimpleDescription()Ljava/lang/String;

    move-result-object p2

    :cond_1e
    invoke-virtual {v0, p2}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setSimpleDescription(Ljava/lang/String;)V

    return-object v0
.end method

.method private final k(Ljava/util/List;I)I
    .locals 2

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p2, v0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method private final l(Landroid/content/Context;Ljava/lang/String;)J
    .locals 3

    const-wide/16 v0, 0x0

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt p2, v2, :cond_0

    invoke-static {p1}, Ld7/a;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide p1

    :goto_0
    move-wide v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long p1, p1

    goto :goto_0

    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;)V
    .locals 5

    const-string v0, "scene"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getGpLink()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lqi/b;->n()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "play.google.com"

    invoke-static {v1, v4, v2, v3, v0}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    sget-object p1, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    invoke-virtual {p1, v1}, Lcom/transsion/ad/strategy/b;->g(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lqi/b;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, p2, p3, p4}, Lqi/b;->p(Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1}, Lqi/b;->q(Lcom/transsion/ad/ps/model/RecommendInfo;)Z

    :goto_1
    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final d()Z
    .locals 2

    const-string v0, "com.transsnet.store"

    invoke-static {v0}, Lcom/blankj/utilcode/util/c;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lqi/b;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final i()J
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getApp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.transsnet.store"

    invoke-direct {p0, v0, v1}, Lqi/b;->l(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final m()Z
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final n()Z
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getApp(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.transsnet.store"

    invoke-direct {p0, v0, v1}, Lqi/b;->l(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x80389c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final o(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "android.intent.category.LAUNCHER"

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    const-string v3, "queryIntentActivities(...)"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    if-eqz p1, :cond_3

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_3
    if-eqz v4, :cond_6

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v2

    :goto_2
    sget-object v3, Loi/a;->a:Loi/a;

    invoke-direct {p0}, Lqi/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --> it = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    :cond_6
    return v2
.end method

.method public final p(Lcom/transsion/ad/ps/model/RecommendInfo;ZLjava/lang/String;Ljava/lang/Double;)Z
    .locals 9

    const-string v0, "scene"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lqi/b;->a:Lqi/b;

    invoke-direct {v1, p1, p3}, Lqi/b;->f(Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Loi/a;->a:Loi/a;

    invoke-direct {v1}, Lqi/b;->e()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " --> startPsActivity() --> isAutoDownload = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " --> deeplink = "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "PslinkInfo"

    invoke-direct {v1, p1, p2}, Lqi/b;->j(Lcom/transsion/ad/ps/model/RecommendInfo;Z)Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "versionCode"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getVersionCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const p2, 0x8000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "psExtendFields"

    invoke-direct {v1, p1, p3}, Lqi/b;->h(Lcom/transsion/ad/ps/model/RecommendInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p2, Lcom/transsion/ad/ps/installed/AppInstallManager;->a:Lcom/transsion/ad/ps/installed/AppInstallManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/RecommendInfo;->getDetail()Lcom/transsion/ad/ps/model/ItemDetail;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/ps/model/ItemDetail;->getPackageName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    :cond_1
    const-string p1, "ps\u6ca1\u6709\u4f20\u9012\u8fc7\u6765"

    :cond_2
    invoke-virtual {p2, p1}, Lcom/transsion/ad/ps/installed/AppInstallManager;->a(Ljava/lang/String;)Lcom/transsion/ad/db/pslink/AppInstalledBean;

    move-result-object p1

    const-string p3, "MB"

    invoke-virtual {p1, p3}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->setSource(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lcom/transsion/ad/db/pslink/AppInstalledBean;->setECPM(Ljava/lang/Double;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p3

    const-string p4, "getApp(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3, p1}, Lcom/transsion/ad/ps/installed/AppInstallManager;->e(Landroid/content/Context;Lcom/transsion/ad/db/pslink/AppInstalledBean;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    sget-object v0, Loi/a;->a:Loi/a;

    sget-object p1, Lqi/b;->a:Lqi/b;

    invoke-direct {p1}, Lqi/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> startPsActivity --> it = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final q(Lcom/transsion/ad/ps/model/RecommendInfo;)Z
    .locals 7

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lqi/b;->a:Lqi/b;

    invoke-direct {v1, p1}, Lqi/b;->g(Lcom/transsion/ad/ps/model/RecommendInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p1, "versionCode"

    invoke-static {}, Lcom/blankj/utilcode/util/c;->f()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const p1, 0x8000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Loi/a;->a:Loi/a;

    sget-object p1, Lqi/b;->a:Lqi/b;

    invoke-direct {p1}, Lqi/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " --> startPsActivity --> it = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Loi/a;->k(Loi/a;Ljava/lang/String;IZILjava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
