.class public final Lcom/transsion/ad/db/scene/AdSceneLimit;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0017\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0006\u0010\u001e\u001a\u00020\u0008J\u0013\u0010\u001f\u001a\u00020 2\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\t\u0010#\u001a\u00020\u0008H\u00d6\u0001J\t\u0010$\u001a\u00020\u0003H\u00d6\u0001J\u0016\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020\u0008R\u001e\u0010\u0002\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000c\"\u0004\u0008\u0010\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018\u00a8\u0006*"
    }
    d2 = {
        "Lcom/transsion/ad/db/scene/AdSceneLimit;",
        "Landroid/os/Parcelable;",
        "sceneId",
        "",
        "lastDisplayAdDate",
        "lastDisplayAdTimestamp",
        "",
        "displayTimes",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JI)V",
        "getSceneId",
        "()Ljava/lang/String;",
        "setSceneId",
        "(Ljava/lang/String;)V",
        "getLastDisplayAdDate",
        "setLastDisplayAdDate",
        "getLastDisplayAdTimestamp",
        "()J",
        "setLastDisplayAdTimestamp",
        "(J)V",
        "getDisplayTimes",
        "()I",
        "setDisplayTimes",
        "(I)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "lib_ad_gpRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/ad/db/scene/AdSceneLimit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private displayTimes:I

.field private lastDisplayAdDate:Ljava/lang/String;

.field private lastDisplayAdTimestamp:J

.field private sceneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/db/scene/AdSceneLimit$a;

    invoke-direct {v0}, Lcom/transsion/ad/db/scene/AdSceneLimit$a;-><init>()V

    sput-object v0, Lcom/transsion/ad/db/scene/AdSceneLimit;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastDisplayAdDate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->sceneId:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdDate:Ljava/lang/String;

    iput-wide p3, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdTimestamp:J

    iput p5, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->displayTimes:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const-wide/16 p3, 0x0

    :cond_0
    move-wide v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    const/4 p5, 0x0

    :cond_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/transsion/ad/db/scene/AdSceneLimit;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/ad/db/scene/AdSceneLimit;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)Lcom/transsion/ad/db/scene/AdSceneLimit;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->sceneId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdDate:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdTimestamp:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p5, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->displayTimes:I

    :cond_3
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-wide p5, v0

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/transsion/ad/db/scene/AdSceneLimit;->copy(Ljava/lang/String;Ljava/lang/String;JI)Lcom/transsion/ad/db/scene/AdSceneLimit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdTimestamp:J

    return-wide v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->displayTimes:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JI)Lcom/transsion/ad/db/scene/AdSceneLimit;
    .locals 7

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastDisplayAdDate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/ad/db/scene/AdSceneLimit;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/ad/db/scene/AdSceneLimit;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/ad/db/scene/AdSceneLimit;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/ad/db/scene/AdSceneLimit;

    iget-object v1, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->sceneId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/db/scene/AdSceneLimit;->sceneId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdTimestamp:J

    iget-wide v5, p1, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdTimestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->displayTimes:I

    iget p1, p1, Lcom/transsion/ad/db/scene/AdSceneLimit;->displayTimes:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDisplayTimes()I
    .locals 1

    iget v0, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->displayTimes:I

    return v0
.end method

.method public final getLastDisplayAdDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastDisplayAdTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdTimestamp:J

    return-wide v0
.end method

.method public final getSceneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->sceneId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdDate:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdTimestamp:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->displayTimes:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setDisplayTimes(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->displayTimes:I

    return-void
.end method

.method public final setLastDisplayAdDate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdDate:Ljava/lang/String;

    return-void
.end method

.method public final setLastDisplayAdTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdTimestamp:J

    return-void
.end method

.method public final setSceneId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->sceneId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->sceneId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdDate:Ljava/lang/String;

    iget-wide v2, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdTimestamp:J

    iget v4, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->displayTimes:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AdSceneLimit(sceneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", lastDisplayAdDate="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", lastDisplayAdTimestamp="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", displayTimes="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->sceneId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->lastDisplayAdTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/transsion/ad/db/scene/AdSceneLimit;->displayTimes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
