.class public final Lcom/cloud/tmc/integration/model/WhiteScreen;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006!"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/WhiteScreen;",
        "Ljava/io/Serializable;",
        "grayScale",
        "",
        "checkNowDelay",
        "",
        "checkIntervalArray",
        "",
        "(FJ[I)V",
        "getCheckIntervalArray",
        "()[I",
        "setCheckIntervalArray",
        "([I)V",
        "getCheckNowDelay",
        "()J",
        "setCheckNowDelay",
        "(J)V",
        "getGrayScale",
        "()F",
        "setGrayScale",
        "(F)V",
        "component1",
        "component2",
        "component3",
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
.field private checkIntervalArray:[I

.field private checkNowDelay:J

.field private grayScale:F


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/integration/model/WhiteScreen;-><init>(FJ[IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(FJ[I)V
    .locals 1

    const-string v0, "checkIntervalArray"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->grayScale:F

    iput-wide p2, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkNowDelay:J

    iput-object p4, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkIntervalArray:[I

    return-void
.end method

.method public synthetic constructor <init>(FJ[IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const-wide/16 p2, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    new-array p4, p4, [I

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/model/WhiteScreen;-><init>(FJ[I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/model/WhiteScreen;FJ[IILjava/lang/Object;)Lcom/cloud/tmc/integration/model/WhiteScreen;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->grayScale:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-wide p2, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkNowDelay:J

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkIntervalArray:[I

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/model/WhiteScreen;->copy(FJ[I)Lcom/cloud/tmc/integration/model/WhiteScreen;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->grayScale:F

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkNowDelay:J

    return-wide v0
.end method

.method public final component3()[I
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkIntervalArray:[I

    return-object v0
.end method

.method public final copy(FJ[I)Lcom/cloud/tmc/integration/model/WhiteScreen;
    .locals 1

    const-string v0, "checkIntervalArray"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/integration/model/WhiteScreen;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/model/WhiteScreen;-><init>(FJ[I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/model/WhiteScreen;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/model/WhiteScreen;

    iget v1, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->grayScale:F

    iget v3, p1, Lcom/cloud/tmc/integration/model/WhiteScreen;->grayScale:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkNowDelay:J

    iget-wide v5, p1, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkNowDelay:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkIntervalArray:[I

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkIntervalArray:[I

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCheckIntervalArray()[I
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkIntervalArray:[I

    return-object v0
.end method

.method public final getCheckNowDelay()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkNowDelay:J

    return-wide v0
.end method

.method public final getGrayScale()F
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->grayScale:F

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->grayScale:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkNowDelay:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkIntervalArray:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setCheckIntervalArray([I)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkIntervalArray:[I

    return-void
.end method

.method public final setCheckNowDelay(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkNowDelay:J

    return-void
.end method

.method public final setGrayScale(F)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->grayScale:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->grayScale:F

    iget-wide v1, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkNowDelay:J

    iget-object v3, p0, Lcom/cloud/tmc/integration/model/WhiteScreen;->checkIntervalArray:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WhiteScreen(grayScale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", checkNowDelay="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", checkIntervalArray="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
