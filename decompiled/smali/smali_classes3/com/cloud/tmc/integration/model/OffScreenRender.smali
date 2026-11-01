.class public final Lcom/cloud/tmc/integration/model/OffScreenRender;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0013\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u00032\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/OffScreenRender;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "enable",
        "",
        "maxSize",
        "",
        "grayScale",
        "",
        "(ZIF)V",
        "getEnable",
        "()Z",
        "setEnable",
        "(Z)V",
        "getGrayScale",
        "()F",
        "setGrayScale",
        "(F)V",
        "getMaxSize",
        "()I",
        "setMaxSize",
        "(I)V",
        "component1",
        "component2",
        "component3",
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
.field private enable:Z

.field private grayScale:F

.field private maxSize:I


# direct methods
.method public constructor <init>(ZIF)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->enable:Z

    iput p2, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->maxSize:I

    iput p3, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->grayScale:F

    return-void
.end method

.method public synthetic constructor <init>(ZIFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/model/OffScreenRender;-><init>(ZIF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/model/OffScreenRender;ZIFILjava/lang/Object;)Lcom/cloud/tmc/integration/model/OffScreenRender;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->enable:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->maxSize:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->grayScale:F

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/tmc/integration/model/OffScreenRender;->copy(ZIF)Lcom/cloud/tmc/integration/model/OffScreenRender;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->enable:Z

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->maxSize:I

    return v0
.end method

.method public final component3()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->grayScale:F

    return v0
.end method

.method public final copy(ZIF)Lcom/cloud/tmc/integration/model/OffScreenRender;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/model/OffScreenRender;

    invoke-direct {v0, p1, p2, p3}, Lcom/cloud/tmc/integration/model/OffScreenRender;-><init>(ZIF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/model/OffScreenRender;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/model/OffScreenRender;

    iget-boolean v1, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->enable:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/integration/model/OffScreenRender;->enable:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->maxSize:I

    iget v3, p1, Lcom/cloud/tmc/integration/model/OffScreenRender;->maxSize:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->grayScale:F

    iget p1, p1, Lcom/cloud/tmc/integration/model/OffScreenRender;->grayScale:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->enable:Z

    return v0
.end method

.method public final getGrayScale()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->grayScale:F

    return v0
.end method

.method public final getMaxSize()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->maxSize:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->enable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->maxSize:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->grayScale:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->enable:Z

    return-void
.end method

.method public final setGrayScale(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->grayScale:F

    return-void
.end method

.method public final setMaxSize(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->maxSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->enable:Z

    iget v1, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->maxSize:I

    iget v2, p0, Lcom/cloud/tmc/integration/model/OffScreenRender;->grayScale:F

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OffScreenRender(enable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", maxSize="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", grayScale="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
