.class public final Lcom/cloud/tmc/integration/model/InnerWarmup;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0006H\u00c6\u0003J1\u0010\u0019\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u00032\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\n\"\u0004\u0008\u000e\u0010\u000cR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010\"\u0004\u0008\u0014\u0010\u0012\u00a8\u0006 "
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/InnerWarmup;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "innerWarmUpRenderEnable",
        "",
        "innerWarmUpWorkerEnable",
        "renderMaxWarmupSize",
        "",
        "workerMaxWarmupSize",
        "(ZZII)V",
        "getInnerWarmUpRenderEnable",
        "()Z",
        "setInnerWarmUpRenderEnable",
        "(Z)V",
        "getInnerWarmUpWorkerEnable",
        "setInnerWarmUpWorkerEnable",
        "getRenderMaxWarmupSize",
        "()I",
        "setRenderMaxWarmupSize",
        "(I)V",
        "getWorkerMaxWarmupSize",
        "setWorkerMaxWarmupSize",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private innerWarmUpRenderEnable:Z

.field private innerWarmUpWorkerEnable:Z

.field private renderMaxWarmupSize:I

.field private workerMaxWarmupSize:I


# direct methods
.method public constructor <init>(ZZII)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpRenderEnable:Z

    iput-boolean p2, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpWorkerEnable:Z

    iput p3, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->renderMaxWarmupSize:I

    iput p4, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->workerMaxWarmupSize:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/model/InnerWarmup;ZZIIILjava/lang/Object;)Lcom/cloud/tmc/integration/model/InnerWarmup;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-boolean p1, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpRenderEnable:Z

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpWorkerEnable:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->renderMaxWarmupSize:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->workerMaxWarmupSize:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/model/InnerWarmup;->copy(ZZII)Lcom/cloud/tmc/integration/model/InnerWarmup;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpRenderEnable:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpWorkerEnable:Z

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->renderMaxWarmupSize:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->workerMaxWarmupSize:I

    return v0
.end method

.method public final copy(ZZII)Lcom/cloud/tmc/integration/model/InnerWarmup;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/model/InnerWarmup;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/model/InnerWarmup;-><init>(ZZII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/model/InnerWarmup;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/model/InnerWarmup;

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpRenderEnable:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpRenderEnable:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpWorkerEnable:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpWorkerEnable:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->renderMaxWarmupSize:I

    iget v3, p1, Lcom/cloud/tmc/integration/model/InnerWarmup;->renderMaxWarmupSize:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->workerMaxWarmupSize:I

    iget p1, p1, Lcom/cloud/tmc/integration/model/InnerWarmup;->workerMaxWarmupSize:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getInnerWarmUpRenderEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpRenderEnable:Z

    return v0
.end method

.method public final getInnerWarmUpWorkerEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpWorkerEnable:Z

    return v0
.end method

.method public final getRenderMaxWarmupSize()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->renderMaxWarmupSize:I

    return v0
.end method

.method public final getWorkerMaxWarmupSize()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->workerMaxWarmupSize:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpRenderEnable:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpWorkerEnable:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->renderMaxWarmupSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->workerMaxWarmupSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setInnerWarmUpRenderEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpRenderEnable:Z

    return-void
.end method

.method public final setInnerWarmUpWorkerEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpWorkerEnable:Z

    return-void
.end method

.method public final setRenderMaxWarmupSize(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->renderMaxWarmupSize:I

    return-void
.end method

.method public final setWorkerMaxWarmupSize(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->workerMaxWarmupSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpRenderEnable:Z

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->innerWarmUpWorkerEnable:Z

    iget v2, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->renderMaxWarmupSize:I

    iget v3, p0, Lcom/cloud/tmc/integration/model/InnerWarmup;->workerMaxWarmupSize:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InnerWarmup(innerWarmUpRenderEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", innerWarmUpWorkerEnable="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", renderMaxWarmupSize="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", workerMaxWarmupSize="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
