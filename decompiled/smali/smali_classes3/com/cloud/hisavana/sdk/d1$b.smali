.class Lcom/cloud/hisavana/sdk/d1$b;
.super Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/d1;->a(Lcom/cloud/hisavana/sdk/q3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener<",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

.field final synthetic e:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

.field final synthetic f:Lcom/cloud/hisavana/sdk/d1;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/d1;ZLjava/lang/String;ILcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/d1$b;->b:Ljava/lang/String;

    iput p4, p0, Lcom/cloud/hisavana/sdk/d1$b;->c:I

    iput-object p5, p0, Lcom/cloud/hisavana/sdk/d1$b;->d:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    iput-object p6, p0, Lcom/cloud/hisavana/sdk/d1$b;->e:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-direct {p0, p2}, Lcom/cloud/hisavana/sdk/common/http/listener/CommonResponseListener;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 3

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    invoke-static {v0, p1}, Lcom/cloud/hisavana/sdk/d1;->n(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load ad error: code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ssp_load"

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic g(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;

    invoke-virtual {p0, p1, p2}, Lcom/cloud/hisavana/sdk/d1$b;->k(ILcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;)V

    return-void
.end method

.method protected k(ILcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const/4 v3, 0x1

    invoke-static/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/common/http/e;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;)V

    const/4 v4, -0x1

    if-eqz v0, :cond_1c

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getCode()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_1c

    invoke-static {}, La7/c;->p()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "on response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v6}, Lcom/cloud/hisavana/sdk/d1;->q(Lcom/cloud/hisavana/sdk/d1;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getData()Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_ONLINE_RESPONSE_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {v0, v2}, Lcom/cloud/hisavana/sdk/d1;->n(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_1
    invoke-static {}, La7/c;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v0, :cond_4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getRecommendInfos()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;

    invoke-virtual {v9}, Lcom/cloud/hisavana/sdk/common/bean/SSPWebRecommendInfo;->getRecommend()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    add-int/2addr v8, v3

    goto :goto_0

    :cond_3
    iget-object v7, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    iget-object v7, v7, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    iget-object v7, v7, Lcom/cloud/hisavana/sdk/l4;->a:Lcom/cloud/hisavana/sdk/l4$a;

    invoke-interface {v7, v0}, Lcom/cloud/hisavana/sdk/l4$a;->a(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v7

    const-string v8, "OnlineAdNode"

    const-string v9, "processWebRecommendInfo error"

    invoke-virtual {v7, v8, v9, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getAds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    goto/16 :goto_a

    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Lcom/cloud/hisavana/sdk/d1$b;->b:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response pmid is diffrent with request\'s, request is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getCodeSeatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Lcom/cloud/hisavana/sdk/d1;->q(Lcom/cloud/hisavana/sdk/d1;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_ONLINE_PLACEMENT_ID_MISMATCH:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {v0, v2}, Lcom/cloud/hisavana/sdk/d1;->n(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_6
    iget v8, v1, Lcom/cloud/hisavana/sdk/d1$b;->c:I

    invoke-virtual {v5}, Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_7

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    const-string v2, "response adt is diffrent with request\'s"

    invoke-static {v0, v2, v6}, Lcom/cloud/hisavana/sdk/d1;->q(Lcom/cloud/hisavana/sdk/d1;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_ONLINE_TYPE_MISMATCH:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {v0, v2}, Lcom/cloud/hisavana/sdk/d1;->n(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_7
    iget-object v8, v1, Lcom/cloud/hisavana/sdk/d1$b;->d:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    if-nez v8, :cond_8

    const/4 v14, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->getAdRequestVer()I

    move-result v8

    add-int/2addr v8, v3

    move v14, v8

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    :cond_9
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_15

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    if-nez v13, :cond_a

    iget-object v8, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    iget-object v8, v8, Lcom/cloud/hisavana/sdk/d1;->h:Landroidx/collection/b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    const-string v9, "filter: ad is null, remove from list"

    invoke-static {v8, v9, v6}, Lcom/cloud/hisavana/sdk/d1;->q(Lcom/cloud/hisavana/sdk/d1;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v13, v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setFill_ts(Ljava/lang/Long;)V

    invoke-static {v13}, Lcom/cloud/hisavana/sdk/common/util/g;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    const-string v10, "filter: CacheAdExpiredUtil.isCacheAdEnd"

    invoke-static {v8, v10, v13}, Lcom/cloud/hisavana/sdk/d1;->q(Lcom/cloud/hisavana/sdk/d1;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    iget-object v8, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    iget-object v8, v8, Lcom/cloud/hisavana/sdk/d1;->h:Landroidx/collection/b;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_b
    invoke-static {v13}, Lcom/cloud/hisavana/sdk/common/util/g;->f(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    iget-object v8, v8, Lcom/cloud/hisavana/sdk/d1;->h:Landroidx/collection/b;

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    const-string v9, "filter:CacheAdExpiredUtil.isOfflineAdEfficient is false"

    invoke-static {v8, v9, v13}, Lcom/cloud/hisavana/sdk/d1;->q(Lcom/cloud/hisavana/sdk/d1;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineH5Url()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineH5Url()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/cloud/hisavana/sdk/common/util/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setFilePath(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPullNewestLive()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPsPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcom/cloud/hisavana/sdk/common/util/d0;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eq v8, v3, :cond_d

    if-ne v8, v9, :cond_e

    :cond_d
    move-object v10, v13

    move-object/from16 v2, v19

    move-object/from16 v6, v20

    goto/16 :goto_7

    :cond_e
    invoke-virtual {v13}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->setInteractiveAd()V

    iget-object v8, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    iget-object v10, v1, Lcom/cloud/hisavana/sdk/d1$b;->e:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    move-object v9, v13

    move-object v11, v5

    move v12, v14

    move-object/from16 p2, v13

    move-object/from16 v2, v19

    move-object/from16 v6, v20

    move-object v13, v15

    invoke-static/range {v8 .. v13}, Lcom/cloud/hisavana/sdk/d1;->p(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;Lcom/cloud/hisavana/sdk/data/bean/response/DataDTO;ILjava/util/Iterator;)V

    invoke-static/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/v2;->a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)I

    move-result v8

    if-ne v8, v4, :cond_10

    iget-object v8, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    const-string v9, "filter: video data format failed"

    move-object/from16 v10, p2

    invoke-static {v8, v9, v10}, Lcom/cloud/hisavana/sdk/d1;->q(Lcom/cloud/hisavana/sdk/d1;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    :cond_f
    :goto_6
    move-object/from16 v19, v2

    move-object/from16 v20, v6

    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_10
    move-object/from16 v10, p2

    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isOfflineAd()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineH5Url()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getOfflineH5Url()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/cloud/hisavana/sdk/common/util/a0;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setFilePath(Ljava/lang/String;)V

    :cond_11
    sget-object v8, Lcom/cloud/hisavana/sdk/k4;->a:Lcom/cloud/hisavana/sdk/k4;

    invoke-virtual {v8, v10}, Lcom/cloud/hisavana/sdk/k4;->k(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Z

    sget-object v8, Lcom/cloud/hisavana/sdk/d4;->a:Lcom/cloud/hisavana/sdk/d4;

    invoke-virtual {v8}, Lcom/cloud/hisavana/sdk/d4;->b()Z

    move-result v8

    if-nez v8, :cond_f

    iget-object v8, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    invoke-static {v8, v10}, Lcom/cloud/hisavana/sdk/d1;->i(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    iget-object v8, v8, Lcom/cloud/hisavana/sdk/d1;->h:Landroidx/collection/b;

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :goto_7
    if-ne v8, v3, :cond_12

    iget-object v11, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    iget-object v11, v11, Lcom/cloud/hisavana/sdk/d1;->h:Landroidx/collection/b;

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_12
    if-ne v8, v9, :cond_13

    iget-object v11, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    iget-object v11, v11, Lcom/cloud/hisavana/sdk/d1;->h:Landroidx/collection/b;

    const/4 v12, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_8
    invoke-virtual {v10}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdCreativeId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v8, v3, :cond_14

    move v9, v3

    :cond_14
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    const-string v9, "filter:filterResult == Constants.FilterResult.NEW_BUT_EXIT || filterResult == Constants.FilterResult.PULL_BUT_NOT_EXIT"

    invoke-static {v8, v9, v10}, Lcom/cloud/hisavana/sdk/d1;->q(Lcom/cloud/hisavana/sdk/d1;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_6

    :cond_15
    move-object/from16 v2, v19

    move-object/from16 v6, v20

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/d1$b;->d:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    if-eqz v4, :cond_16

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setLocalOfflineAdCacheCount(I)V

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/d1$b;->d:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    invoke-virtual {v4, v14}, Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;->setAdRequestVer(I)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/P;->g()Lcom/cloud/hisavana/sdk/P;

    move-result-object v4

    iget-object v5, v1, Lcom/cloud/hisavana/sdk/d1$b;->d:Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;

    invoke-virtual {v4, v5}, Lcom/cloud/hisavana/sdk/P;->j(Lcom/cloud/hisavana/sdk/data/bean/response/ConfigCodeSeatDTO;)V

    :cond_16
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, v1, Lcom/cloud/hisavana/sdk/d1$b;->e:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    if-eqz v4, :cond_17

    iget-object v5, v4, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->requestId:Ljava/lang/String;

    iget-object v4, v4, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->triggerId:Ljava/lang/String;

    iget-object v8, v1, Lcom/cloud/hisavana/sdk/d1$b;->b:Ljava/lang/String;

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move-object/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    invoke-static/range {v16 .. v22}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZI)V

    :cond_17
    iget-object v2, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    iget-object v4, v2, Lcom/cloud/hisavana/sdk/d1;->h:Landroidx/collection/b;

    invoke-static {v2, v4}, Lcom/cloud/hisavana/sdk/d1;->m(Lcom/cloud/hisavana/sdk/d1;Landroidx/collection/b;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, v1, Lcom/cloud/hisavana/sdk/d1$b;->e:Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    iget-object v5, v5, Lcom/cloud/hisavana/sdk/d1;->h:Landroidx/collection/b;

    const/4 v6, 0x0

    invoke-static {v0, v6, v2, v4, v5}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->h0(Ljava/util/List;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;ILandroidx/collection/b;)V

    invoke-static {}, La7/c;->p()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v2

    sget v4, Lcom/cloud/sdk/commonutil/R$string;->ssp_log_msg4:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lcom/cloud/sdk/commonutil/util/q;->b(Ljava/lang/String;I)V

    iget-object v2, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "online request result after filtered, count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/cloud/hisavana/sdk/d1;->q(Lcom/cloud/hisavana/sdk/d1;Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :cond_18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ADS_ONLINE_ARE_FILTERED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {v0, v2}, Lcom/cloud/hisavana/sdk/d1;->n(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    goto :goto_9

    :cond_19
    iget-object v2, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    invoke-static {v2, v0}, Lcom/cloud/hisavana/sdk/d1;->r(Lcom/cloud/hisavana/sdk/d1;Ljava/util/List;)V

    goto :goto_9

    :cond_1a
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_ADS_ONLINE_ARE_FILTERED:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {v0, v2}, Lcom/cloud/hisavana/sdk/d1;->n(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :goto_9
    invoke-static {}, Lcom/cloud/hisavana/sdk/c0;->F()Lcom/cloud/hisavana/sdk/c0;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/cloud/hisavana/sdk/c0;->A(Ljava/util/List;)V

    goto :goto_b

    :cond_1b
    :goto_a
    iget-object v0, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    sget-object v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;->ERROR_AD_ONLINE_ADS_IS_NULL:Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-static {v0, v2}, Lcom/cloud/hisavana/sdk/d1;->n(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    return-void

    :cond_1c
    const-string v2, "ssp_load"

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "business error: code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getCode()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    new-instance v3, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/cloud/hisavana/sdk/data/bean/response/AdResponseBody;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v2, v3}, Lcom/cloud/hisavana/sdk/d1;->n(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    goto :goto_b

    :cond_1d
    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    const-string v3, "business error: response is null"

    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/cloud/hisavana/sdk/d1$b;->f:Lcom/cloud/hisavana/sdk/d1;

    new-instance v2, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;

    const-string v3, "response is null"

    invoke-direct {v2, v4, v3}, Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v2}, Lcom/cloud/hisavana/sdk/d1;->n(Lcom/cloud/hisavana/sdk/d1;Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    :goto_b
    return-void
.end method
