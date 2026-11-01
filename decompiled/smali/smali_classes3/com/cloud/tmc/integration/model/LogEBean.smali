.class public final Lcom/cloud/tmc/integration/model/LogEBean;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0008\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/LogEBean;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "grayScale",
        "",
        "(F)V",
        "getGrayScale",
        "()F",
        "setGrayScale",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private grayScale:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/cloud/tmc/integration/model/LogEBean;-><init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput p1, p0, Lcom/cloud/tmc/integration/model/LogEBean;->grayScale:F

    return-void
.end method

.method public synthetic constructor <init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/cloud/tmc/integration/model/LogEBean;-><init>(F)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/model/LogEBean;FILjava/lang/Object;)Lcom/cloud/tmc/integration/model/LogEBean;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/cloud/tmc/integration/model/LogEBean;->grayScale:F

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cloud/tmc/integration/model/LogEBean;->copy(F)Lcom/cloud/tmc/integration/model/LogEBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/LogEBean;->grayScale:F

    return v0
.end method

.method public final copy(F)Lcom/cloud/tmc/integration/model/LogEBean;
    .locals 1

    new-instance v0, Lcom/cloud/tmc/integration/model/LogEBean;

    invoke-direct {v0, p1}, Lcom/cloud/tmc/integration/model/LogEBean;-><init>(F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/model/LogEBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/model/LogEBean;

    iget v1, p0, Lcom/cloud/tmc/integration/model/LogEBean;->grayScale:F

    iget p1, p1, Lcom/cloud/tmc/integration/model/LogEBean;->grayScale:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getGrayScale()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/LogEBean;->grayScale:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/LogEBean;->grayScale:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public final setGrayScale(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/model/LogEBean;->grayScale:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/cloud/tmc/integration/model/LogEBean;->grayScale:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LogEBean(grayScale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
