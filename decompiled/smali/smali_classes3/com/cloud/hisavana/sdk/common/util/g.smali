.class public Lcom/cloud/hisavana/sdk/common/util/g;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfo()Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/cloud/hisavana/sdk/N0;->E(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->setIconUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/common/bean/PslinkInfo;->getImgList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/cloud/hisavana/sdk/N0;->E(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {v1, v2}, Lcom/cloud/hisavana/sdk/common/bean/ImgListDTO;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 8

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdLaunchTypes()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-static {p0}, La7/d;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getOfflineAdStartDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getOfflineAdLaunchDate()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getOfflineAdStartDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setOfflineAdStartDateLong(Ljava/lang/Long;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getOfflineAdLaunchDate()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setOfflineAdLaunchDateStr(Ljava/lang/String;)V

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v0

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setOfflineAdExpireTime(Ljava/lang/Long;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineAdExpireTime()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v1, v4

    if-gtz p0, :cond_4

    return v3

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v2, "CacheAdExpiredUtil"

    invoke-virtual {v1, v2, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return v0
.end method

.method public static c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)I
    .locals 1

    if-nez p0, :cond_0

    const/16 p0, 0x45a

    return p0

    :cond_0
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/g;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x44d

    return p0

    :cond_1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/g;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 p0, 0x44e

    return p0

    :cond_2
    invoke-static {p0, p1}, Lcom/cloud/hisavana/sdk/common/util/g;->e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p0, 0x450

    return p0

    :cond_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/g;->g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0x44f

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineH5Url()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isH5Zip()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/util/m;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "offline_zip"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/common/util/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/N0;->C(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static e(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isVastTypeAd()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getAdType()I

    move-result v1

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/common/constant/Constants;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/v2;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/cloud/hisavana/sdk/N0;->O(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_2
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/v2;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/N0;->C(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdChoiceImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/N0;->C(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setACReady(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getExt()Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreFlag()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-result-object v2

    iget v2, v2, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->adt:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_5

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$Ext;->getStoreImageurl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/N0;->C(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    return v0

    :cond_5
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getPslinkInfoStatus()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    if-eqz p1, :cond_6

    invoke-static {p0, v2}, Lcom/cloud/hisavana/sdk/common/util/g;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    move v0, v2

    :cond_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->isH5Zip()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/g;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result p0

    return p0

    :cond_9
    if-eqz p1, :cond_a

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/util/g;->d(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    move v0, v2

    :cond_b
    return v0
.end method

.method public static f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 8

    const-string v0, "CacheAdExpiredUtil"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineAdStartDateLong()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    long-to-int v2, v4

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineAdLaunchDateStr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v2, 0x31

    if-eq p0, v2, :cond_2

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p0

    const-string v2, "isOfflineAdEfficient false: today is not delivered."

    invoke-virtual {p0, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v3
.end method

.method public static g(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getShowNum()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/cloud/hisavana/sdk/common/util/g;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z

    move-result p0

    return p0
.end method

.method public static h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getViewJsonData()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getMaxShowPPPD()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt p1, v2, :cond_3

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isReachedDisplayTimes, id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", showNum: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", getMaxShowPPPD: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson;->getOffline()Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;

    move-result-object p0

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/ViewJson$OfflineJson;->getMaxShowPPPD()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CacheAdExpiredUtil"

    invoke-virtual {v2, p1, p0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
