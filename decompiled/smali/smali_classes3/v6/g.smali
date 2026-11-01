.class public abstract Lv6/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/google/common/hash/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/hash/f;->b(I)Lcom/google/common/hash/d;

    move-result-object v0

    const-string v1, "murmur3_128(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lv6/g;->a:Lcom/google/common/hash/d;

    return-void
.end method

.method public static final a(Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;)Lcom/cloud/hisavana/abtestkit/bean/ABVariantState;
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ABTEST"

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getSubExps()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getWhiteList()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    const-string v5, "ADSDK"

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ABChecker check, whiteResult = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getWhiteList()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ABChecker check, whiteValue = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getSubExps()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;->getVarId()Ljava/lang/Long;

    move-result-object v8

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v7}, Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;->getVarId()Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->Companion:Lcom/cloud/hisavana/abtestkit/bean/ABVariant$Companion;

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0, v7}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant$Companion;->initFromSubExpInfo(Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;)Lcom/cloud/hisavana/abtestkit/bean/ABVariant;

    move-result-object p0

    new-instance v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABVariant;)V

    return-object v0

    :cond_8
    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getProjectId()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_9

    goto/16 :goto_4

    :cond_9
    :try_start_0
    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v3, "%s_%s_%s"

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getProjectId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    move-result-object v7

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->e()Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v1

    const/4 v1, 0x1

    aput-object v7, v9, v1

    aput-object v8, v9, v0

    invoke-static {v9, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v1, Lv6/g;->a:Lcom/google/common/hash/d;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v1, v0, v3}, Lcom/google/common/hash/d;->hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/HashCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/hash/HashCode;->asLong()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    invoke-static {v6, v7, v8, v9}, Lv6/f;->a(JJ)J

    move-result-wide v6

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ABChecker check, hashStr = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and hashVal = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getSubExps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;->getBuckets()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3

    :cond_c
    invoke-virtual {v1}, Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;->getBuckets()Ljava/util/List;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariant;->Companion:Lcom/cloud/hisavana/abtestkit/bean/ABVariant$Companion;

    invoke-virtual {p0}, Lcom/cloud/hisavana/abtestkit/bean/ABLayerInfo;->getLayerId()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/cloud/hisavana/abtestkit/bean/ABVariant$Companion;->initFromSubExpInfo(Ljava/lang/Long;Lcom/cloud/hisavana/abtestkit/bean/ABSubExpInfo;)Lcom/cloud/hisavana/abtestkit/bean/ABVariant;

    move-result-object p0

    new-instance v0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;

    invoke-direct {v0, p0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Open;-><init>(Lcom/cloud/hisavana/abtestkit/bean/ABVariant;)V

    return-object v0

    :cond_d
    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ABChecker check fail, hashStr =  and reason = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    return-object p0

    :cond_e
    :goto_4
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object p0

    const-string v0, "ABChecker check fail, projectId is null or layerId is null"

    invoke-virtual {p0, v4, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    return-object p0

    :cond_f
    :goto_5
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object p0

    const-string v0, "ABChecker check fail, abLayerInfo is null or subExps is empty"

    invoke-virtual {p0, v4, v0}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    invoke-direct {p0, v2}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    return-object p0

    :cond_10
    :goto_6
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object p0

    const-string v1, "ABChecker check fail, gaid is empty"

    invoke-virtual {p0, v4, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;

    invoke-direct {p0, v0}, Lcom/cloud/hisavana/abtestkit/bean/ABVariantState$Closed;-><init>(I)V

    return-object p0
.end method
