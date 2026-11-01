.class public final Lcom/transsion/bean/HomePopupRequestEntity;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0016\u001a\u00020\u0006H\u00c6\u0003J.\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0018J\u0006\u0010\u0019\u001a\u00020\u0006J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\u0016\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006&"
    }
    d2 = {
        "Lcom/transsion/bean/HomePopupRequestEntity;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "ts",
        "count",
        "",
        "<init>",
        "(JLjava/lang/Long;I)V",
        "getId",
        "()J",
        "getTs",
        "()Ljava/lang/Long;",
        "setTs",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getCount",
        "()I",
        "setCount",
        "(I)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "(JLjava/lang/Long;I)Lcom/transsion/bean/HomePopupRequestEntity;",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "CommercializationApi_psRelease"
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
            "Lcom/transsion/bean/HomePopupRequestEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:I

.field private final id:J

.field private ts:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/bean/HomePopupRequestEntity$a;

    invoke-direct {v0}, Lcom/transsion/bean/HomePopupRequestEntity$a;-><init>()V

    sput-object v0, Lcom/transsion/bean/HomePopupRequestEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/Long;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/bean/HomePopupRequestEntity;->id:J

    iput-object p3, p0, Lcom/transsion/bean/HomePopupRequestEntity;->ts:Ljava/lang/Long;

    iput p4, p0, Lcom/transsion/bean/HomePopupRequestEntity;->count:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/bean/HomePopupRequestEntity;JLjava/lang/Long;IILjava/lang/Object;)Lcom/transsion/bean/HomePopupRequestEntity;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/transsion/bean/HomePopupRequestEntity;->id:J

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p3, p0, Lcom/transsion/bean/HomePopupRequestEntity;->ts:Ljava/lang/Long;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget p4, p0, Lcom/transsion/bean/HomePopupRequestEntity;->count:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/bean/HomePopupRequestEntity;->copy(JLjava/lang/Long;I)Lcom/transsion/bean/HomePopupRequestEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/bean/HomePopupRequestEntity;->id:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/bean/HomePopupRequestEntity;->ts:Ljava/lang/Long;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/bean/HomePopupRequestEntity;->count:I

    return v0
.end method

.method public final copy(JLjava/lang/Long;I)Lcom/transsion/bean/HomePopupRequestEntity;
    .locals 1

    new-instance v0, Lcom/transsion/bean/HomePopupRequestEntity;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/bean/HomePopupRequestEntity;-><init>(JLjava/lang/Long;I)V

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
    instance-of v1, p1, Lcom/transsion/bean/HomePopupRequestEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/bean/HomePopupRequestEntity;

    iget-wide v3, p0, Lcom/transsion/bean/HomePopupRequestEntity;->id:J

    iget-wide v5, p1, Lcom/transsion/bean/HomePopupRequestEntity;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/bean/HomePopupRequestEntity;->ts:Ljava/lang/Long;

    iget-object v3, p1, Lcom/transsion/bean/HomePopupRequestEntity;->ts:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/bean/HomePopupRequestEntity;->count:I

    iget p1, p1, Lcom/transsion/bean/HomePopupRequestEntity;->count:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/transsion/bean/HomePopupRequestEntity;->count:I

    return v0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/bean/HomePopupRequestEntity;->id:J

    return-wide v0
.end method

.method public final getTs()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/transsion/bean/HomePopupRequestEntity;->ts:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/transsion/bean/HomePopupRequestEntity;->id:J

    invoke-static {v0, v1}, Landroidx/collection/s;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/bean/HomePopupRequestEntity;->ts:Ljava/lang/Long;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/bean/HomePopupRequestEntity;->count:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/bean/HomePopupRequestEntity;->count:I

    return-void
.end method

.method public final setTs(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/bean/HomePopupRequestEntity;->ts:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/transsion/bean/HomePopupRequestEntity;->id:J

    iget-object v2, p0, Lcom/transsion/bean/HomePopupRequestEntity;->ts:Ljava/lang/Long;

    iget v3, p0, Lcom/transsion/bean/HomePopupRequestEntity;->count:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HomePopupRequestEntity(id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", ts="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", count="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/bean/HomePopupRequestEntity;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/transsion/bean/HomePopupRequestEntity;->ts:Ljava/lang/Long;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :goto_0
    iget p2, p0, Lcom/transsion/bean/HomePopupRequestEntity;->count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
