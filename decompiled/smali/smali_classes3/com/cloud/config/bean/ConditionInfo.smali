.class public final Lcom/cloud/config/bean/ConditionInfo;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\u0011\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\'\u0010\u0015\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0006H\u00d6\u0001R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/cloud/config/bean/ConditionInfo;",
        "",
        "conditionParams",
        "",
        "Lcom/cloud/config/bean/ConditionParam;",
        "defaultCacheFileUrl",
        "",
        "(Ljava/util/List;Ljava/lang/String;)V",
        "_conditionParam",
        "get_conditionParam",
        "()Lcom/cloud/config/bean/ConditionParam;",
        "set_conditionParam",
        "(Lcom/cloud/config/bean/ConditionParam;)V",
        "getConditionParams",
        "()Ljava/util/List;",
        "getDefaultCacheFileUrl",
        "()Ljava/lang/String;",
        "matchCacheUrl",
        "getMatchCacheUrl",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "config_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private _conditionParam:Lcom/cloud/config/bean/ConditionParam;

.field private final conditionParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/config/bean/ConditionParam;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultCacheFileUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/config/bean/ConditionParam;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    iput-object p2, p0, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/config/bean/ConditionInfo;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/config/bean/ConditionInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/cloud/config/bean/ConditionInfo;->copy(Ljava/util/List;Ljava/lang/String;)Lcom/cloud/config/bean/ConditionInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/config/bean/ConditionParam;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Ljava/lang/String;)Lcom/cloud/config/bean/ConditionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/config/bean/ConditionParam;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/cloud/config/bean/ConditionInfo;"
        }
    .end annotation

    new-instance v0, Lcom/cloud/config/bean/ConditionInfo;

    invoke-direct {v0, p1, p2}, Lcom/cloud/config/bean/ConditionInfo;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/config/bean/ConditionInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/config/bean/ConditionInfo;

    iget-object v1, p0, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    iget-object v3, p1, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getConditionParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/config/bean/ConditionParam;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    return-object v0
.end method

.method public final getDefaultCacheFileUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getMatchCacheUrl()Ljava/lang/String;
    .locals 9

    const-string v0, "config"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_21

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloud/config/bean/ConditionParam;

    invoke-virtual {v3}, Lcom/cloud/config/bean/ConditionParam;->getConditionParam()Lcom/cloud/config/bean/ConditionParamX;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "*"

    const-string v6, ""

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lcom/cloud/config/bean/ConditionParamX;->getMcc()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    check-cast v4, Ljava/lang/Iterable;

    instance-of v7, v4, Ljava/util/Collection;

    if-eqz v7, :cond_3

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_c

    :catchall_0
    move-exception v2

    goto/16 :goto_d

    :cond_3
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    sget-object v8, Lcom/cloud/config/utils/CommonUtils;->INSTANCE:Lcom/cloud/config/utils/CommonUtils;

    invoke-virtual {v8}, Lcom/cloud/config/utils/CommonUtils;->getMcc()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_5
    :goto_2
    invoke-virtual {v3}, Lcom/cloud/config/bean/ConditionParam;->getConditionParam()Lcom/cloud/config/bean/ConditionParamX;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Lcom/cloud/config/bean/ConditionParamX;->getOsVersion()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    check-cast v4, Ljava/lang/Iterable;

    instance-of v7, v4, Ljava/util/Collection;

    if-eqz v7, :cond_8

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    goto/16 :goto_b

    :cond_8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    sget-object v8, Lcom/cloud/config/utils/CommonUtils;->INSTANCE:Lcom/cloud/config/utils/CommonUtils;

    invoke-virtual {v8}, Lcom/cloud/config/utils/CommonUtils;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_a
    :goto_3
    invoke-virtual {v3}, Lcom/cloud/config/bean/ConditionParam;->getConditionParam()Lcom/cloud/config/bean/ConditionParamX;

    move-result-object v4

    if-nez v4, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v4}, Lcom/cloud/config/bean/ConditionParamX;->getPhoneModel()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_4

    :cond_c
    check-cast v4, Ljava/lang/Iterable;

    instance-of v7, v4, Ljava/util/Collection;

    if-eqz v7, :cond_d

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_d

    goto/16 :goto_a

    :cond_d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    sget-object v8, Lcom/cloud/config/utils/CommonUtils;->INSTANCE:Lcom/cloud/config/utils/CommonUtils;

    invoke-virtual {v8}, Lcom/cloud/config/utils/CommonUtils;->getModel()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_f
    :goto_4
    invoke-virtual {v3}, Lcom/cloud/config/bean/ConditionParam;->getConditionParam()Lcom/cloud/config/bean/ConditionParamX;

    move-result-object v4

    if-nez v4, :cond_10

    goto :goto_5

    :cond_10
    invoke-virtual {v4}, Lcom/cloud/config/bean/ConditionParamX;->getPhoneBrand()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_11

    goto :goto_5

    :cond_11
    check-cast v4, Ljava/lang/Iterable;

    instance-of v7, v4, Ljava/util/Collection;

    if-eqz v7, :cond_12

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_12

    goto/16 :goto_9

    :cond_12
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    sget-object v8, Lcom/cloud/config/utils/CommonUtils;->INSTANCE:Lcom/cloud/config/utils/CommonUtils;

    invoke-virtual {v8}, Lcom/cloud/config/utils/CommonUtils;->getBrand()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    :cond_14
    :goto_5
    invoke-virtual {v3}, Lcom/cloud/config/bean/ConditionParam;->getConditionParam()Lcom/cloud/config/bean/ConditionParamX;

    move-result-object v4

    if-nez v4, :cond_15

    goto :goto_6

    :cond_15
    invoke-virtual {v4}, Lcom/cloud/config/bean/ConditionParamX;->getPhoneLanguage()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_16

    goto :goto_6

    :cond_16
    check-cast v4, Ljava/lang/Iterable;

    instance-of v7, v4, Ljava/util/Collection;

    if-eqz v7, :cond_17

    move-object v7, v4

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_17

    goto :goto_8

    :cond_17
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    invoke-static {v7, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    sget-object v8, Lcom/cloud/config/utils/CommonUtils;->INSTANCE:Lcom/cloud/config/utils/CommonUtils;

    invoke-virtual {v8}, Lcom/cloud/config/utils/CommonUtils;->getSystemLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    :cond_19
    :goto_6
    invoke-virtual {v3}, Lcom/cloud/config/bean/ConditionParam;->getShuntInfo()Lcom/cloud/config/bean/ShuntInfo;

    move-result-object v2

    if-nez v2, :cond_1a

    goto :goto_7

    :cond_1a
    invoke-virtual {v2}, Lcom/cloud/config/bean/ShuntInfo;->isShuntOpen()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1b

    iput-object v3, p0, Lcom/cloud/config/bean/ConditionInfo;->_conditionParam:Lcom/cloud/config/bean/ConditionParam;

    const-string v0, "shuntopen"

    return-object v0

    :cond_1b
    :goto_7
    invoke-virtual {v3}, Lcom/cloud/config/bean/ConditionParam;->getCacheFileUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1c
    :goto_8
    sget-object v3, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {v3}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object v3

    const-string v4, "CloudConfigResponse --> phoneLanguage\u4e0d\u5339\u914d"

    invoke-virtual {v3, v0, v4}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1d
    :goto_9
    sget-object v3, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {v3}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object v3

    const-string v4, "CloudConfigResponse --> phoneBrand\u4e0d\u5339\u914d"

    invoke-virtual {v3, v0, v4}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1e
    :goto_a
    sget-object v3, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {v3}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object v3

    const-string v4, "CloudConfigResponse --> phoneModel\u4e0d\u5339\u914d"

    invoke-virtual {v3, v0, v4}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1f
    :goto_b
    sget-object v3, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {v3}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object v3

    const-string v4, "CloudConfigResponse --> osVersion\u4e0d\u5339\u914d"

    invoke-virtual {v3, v0, v4}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_20
    :goto_c
    sget-object v3, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {v3}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object v3

    const-string v4, "CloudConfigResponse --> mcc\u4e0d\u5339\u914d"

    invoke-virtual {v3, v0, v4}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_21
    iget-object v0, p0, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :goto_d
    sget-object v3, Lcom/cloud/config/utils/XLogUtil;->Companion:Lcom/cloud/config/utils/XLogUtil$Companion;

    invoke-virtual {v3}, Lcom/cloud/config/utils/XLogUtil$Companion;->getLog()Lcom/cloud/config/utils/XLogUtil;

    move-result-object v3

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/cloud/config/utils/XLogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final get_conditionParam()Lcom/cloud/config/bean/ConditionParam;
    .locals 1

    iget-object v0, p0, Lcom/cloud/config/bean/ConditionInfo;->_conditionParam:Lcom/cloud/config/bean/ConditionParam;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final set_conditionParam(Lcom/cloud/config/bean/ConditionParam;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/config/bean/ConditionInfo;->_conditionParam:Lcom/cloud/config/bean/ConditionParam;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConditionInfo(conditionParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/config/bean/ConditionInfo;->conditionParams:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", defaultCacheFileUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cloud/config/bean/ConditionInfo;->defaultCacheFileUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
