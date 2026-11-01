.class public final Lcom/transsion/baselib/db/video/VideoLandAdBean;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u000e\"\u0004\u0008\u0012\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/baselib/db/video/VideoLandAdBean;",
        "",
        "resourceId",
        "",
        "startAdDayKey",
        "",
        "endAdDayKey",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getResourceId",
        "()Ljava/lang/String;",
        "setResourceId",
        "(Ljava/lang/String;)V",
        "getStartAdDayKey",
        "()I",
        "setStartAdDayKey",
        "(I)V",
        "getEndAdDayKey",
        "setEndAdDayKey",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "BaseLib_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private endAdDayKey:I

.field private resourceId:Ljava/lang/String;

.field private startAdDayKey:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const-string v0, "resourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->resourceId:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->startAdDayKey:I

    iput p3, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->endAdDayKey:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/baselib/db/video/VideoLandAdBean;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/baselib/db/video/VideoLandAdBean;Ljava/lang/String;IIILjava/lang/Object;)Lcom/transsion/baselib/db/video/VideoLandAdBean;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->resourceId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->startAdDayKey:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->endAdDayKey:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/baselib/db/video/VideoLandAdBean;->copy(Ljava/lang/String;II)Lcom/transsion/baselib/db/video/VideoLandAdBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->startAdDayKey:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->endAdDayKey:I

    return v0
.end method

.method public final copy(Ljava/lang/String;II)Lcom/transsion/baselib/db/video/VideoLandAdBean;
    .locals 1

    const-string v0, "resourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/baselib/db/video/VideoLandAdBean;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/baselib/db/video/VideoLandAdBean;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/baselib/db/video/VideoLandAdBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/baselib/db/video/VideoLandAdBean;

    iget-object v1, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->resourceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/VideoLandAdBean;->resourceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->startAdDayKey:I

    iget v3, p1, Lcom/transsion/baselib/db/video/VideoLandAdBean;->startAdDayKey:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->endAdDayKey:I

    iget p1, p1, Lcom/transsion/baselib/db/video/VideoLandAdBean;->endAdDayKey:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEndAdDayKey()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->endAdDayKey:I

    return v0
.end method

.method public final getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStartAdDayKey()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->startAdDayKey:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->resourceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->startAdDayKey:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->endAdDayKey:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setEndAdDayKey(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->endAdDayKey:I

    return-void
.end method

.method public final setResourceId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->resourceId:Ljava/lang/String;

    return-void
.end method

.method public final setStartAdDayKey(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->startAdDayKey:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->resourceId:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->startAdDayKey:I

    iget v2, p0, Lcom/transsion/baselib/db/video/VideoLandAdBean;->endAdDayKey:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VideoLandAdBean(resourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", startAdDayKey="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", endAdDayKey="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
