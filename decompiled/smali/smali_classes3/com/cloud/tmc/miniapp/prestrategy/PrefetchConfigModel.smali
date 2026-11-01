.class public final Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# instance fields
.field private appId:Ljava/lang/String;

.field private bundle:Landroid/os/Bundle;

.field private dataType:Ljava/lang/String;

.field private executeTime:J

.field private expiredTime:J

.field private h5Url:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private miniappType:I

.field private netType:I

.field private priority:I

.field private sceneId:Ljava/lang/String;

.field private source:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->priority:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->netType:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->expiredTime:J

    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->executeTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    const-class v3, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    return v3

    :cond_2
    const-string v2, "null cannot be cast to non-null type com.cloud.tmc.miniapp.prestrategy.PrefetchConfigModel"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->sceneId:Ljava/lang/String;

    iget-object v4, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->sceneId:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v3

    :cond_3
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->appId:Ljava/lang/String;

    iget-object v4, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->appId:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v3

    :cond_4
    iget v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->priority:I

    iget v4, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->priority:I

    if-eq v2, v4, :cond_5

    return v3

    :cond_5
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->dataType:Ljava/lang/String;

    iget-object v4, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->dataType:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v3

    :cond_6
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->source:Ljava/util/ArrayList;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_7
    move-object v2, v1

    :goto_1
    iget-object v4, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->source:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v3

    :cond_9
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->h5Url:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->h5Url:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    :cond_a
    iget v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->netType:I

    iget v2, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->netType:I

    if-eq v1, v2, :cond_b

    return v3

    :cond_b
    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->expiredTime:J

    iget-wide v4, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->expiredTime:J

    cmp-long v1, v1, v4

    if-eqz v1, :cond_c

    return v3

    :cond_c
    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->executeTime:J

    iget-wide v4, p1, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->executeTime:J

    cmp-long p1, v1, v4

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getDataType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->dataType:Ljava/lang/String;

    return-object v0
.end method

.method public final getExecuteTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->executeTime:J

    return-wide v0
.end method

.method public final getExpiredTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->expiredTime:J

    return-wide v0
.end method

.method public final getH5Url()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->h5Url:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMiniappType()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->miniappType:I

    return v0
.end method

.method public final getNetType()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->netType:I

    return v0
.end method

.method public final getPriority()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->priority:I

    return v0
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->source:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->sceneId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->appId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->priority:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->dataType:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->source:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->h5Url:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->netType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->expiredTime:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->executeTime:J

    invoke-static {v2, v3}, Landroidx/collection/s;->a(J)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->appId:Ljava/lang/String;

    return-void
.end method

.method public final setBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method public final setDataType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->dataType:Ljava/lang/String;

    return-void
.end method

.method public final setExecuteTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->executeTime:J

    return-void
.end method

.method public final setExpiredTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->expiredTime:J

    return-void
.end method

.method public final setH5Url(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->h5Url:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMiniappType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->miniappType:I

    return-void
.end method

.method public final setNetType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->netType:I

    return-void
.end method

.method public final setPriority(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->priority:I

    return-void
.end method

.method public final setSceneId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->sceneId:Ljava/lang/String;

    return-void
.end method

.method public final setSource(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->source:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->sceneId:Ljava/lang/String;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->appId:Ljava/lang/String;

    iget v2, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->priority:I

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->dataType:Ljava/lang/String;

    iget-object v4, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->source:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->h5Url:Ljava/util/ArrayList;

    iget v6, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->netType:I

    iget-wide v7, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->expiredTime:J

    iget-wide v9, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->executeTime:J

    iget v11, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->miniappType:I

    iget-object v12, p0, Lcom/cloud/tmc/miniapp/prestrategy/PrefetchConfigModel;->bundle:Landroid/os/Bundle;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PrefetchConfigModel(sceneId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", appId="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", priority="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", dataType="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", source="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", h5Url="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", netType="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", expiredTime="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", executeTime="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", miniappType="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bundle="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
