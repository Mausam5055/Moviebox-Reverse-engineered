.class public abstract Lcom/cloud/hisavana/sdk/r2;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 4

    const-string v0, "ssp_measure"

    if-nez p0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p0

    const-string v1, "exposureInvalid --> null == info"

    invoke-virtual {p0, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setIsEffectiveShow(Ljava/lang/Integer;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid exposure --> to server info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->N(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->b0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :goto_0
    return-void
.end method

.method public static b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V
    .locals 4

    const-string v0, "ssp_measure"

    if-nez p0, :cond_0

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object p0

    const-string v1, "exposureInvalid --> null == info"

    invoke-virtual {p0, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->setIsEffectiveShow(Ljava/lang/Integer;)V

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "valid exposure --> to server info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getSource()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->N(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/cloud/hisavana/sdk/common/athena/AthenaTracker;->b0(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    :goto_0
    return-void
.end method
