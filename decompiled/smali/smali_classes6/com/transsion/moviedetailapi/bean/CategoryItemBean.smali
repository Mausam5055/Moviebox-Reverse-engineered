.class public final Lcom/transsion/moviedetailapi/bean/CategoryItemBean;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B+\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J2\u0010\u001a\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001bJ\u0006\u0010\u001c\u001a\u00020\u0003J\u0013\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u00d6\u0003J\t\u0010!\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\"\u001a\u00020\u0005H\u00d6\u0001J\u0016\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u0003R\"\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000e\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/moviedetailapi/bean/CategoryItemBean;",
        "Landroid/os/Parcelable;",
        "number",
        "",
        "itemType",
        "",
        "subject",
        "Lcom/transsion/moviedetailapi/bean/Subject;",
        "<init>",
        "(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "getNumber",
        "()Ljava/lang/Integer;",
        "setNumber",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getItemType",
        "()Ljava/lang/String;",
        "setItemType",
        "(Ljava/lang/String;)V",
        "getSubject",
        "()Lcom/transsion/moviedetailapi/bean/Subject;",
        "setSubject",
        "(Lcom/transsion/moviedetailapi/bean/Subject;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;)Lcom/transsion/moviedetailapi/bean/CategoryItemBean;",
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
        "MovieDetailApi_psRelease"
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
            "Lcom/transsion/moviedetailapi/bean/CategoryItemBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private itemType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stationSource"
    .end annotation
.end field

.field private number:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number"
    .end annotation
.end field

.field private subject:Lcom/transsion/moviedetailapi/bean/Subject;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "info"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean$a;

    invoke-direct {v0}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean$a;-><init>()V

    sput-object v0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->number:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->itemType:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/moviedetailapi/bean/CategoryItemBean;Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;ILjava/lang/Object;)Lcom/transsion/moviedetailapi/bean/CategoryItemBean;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->number:Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->itemType:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->copy(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;)Lcom/transsion/moviedetailapi/bean/CategoryItemBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->number:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->itemType:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;)Lcom/transsion/moviedetailapi/bean/CategoryItemBean;
    .locals 1

    new-instance v0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Subject;)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;

    iget-object v1, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->number:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->number:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->itemType:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->itemType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    iget-object p1, p1, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getItemType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->itemType:Ljava/lang/String;

    return-object v0
.end method

.method public final getNumber()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->number:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSubject()Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 1

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->number:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->itemType:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final setItemType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->itemType:Ljava/lang/String;

    return-void
.end method

.method public final setNumber(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->number:Ljava/lang/Integer;

    return-void
.end method

.method public final setSubject(Lcom/transsion/moviedetailapi/bean/Subject;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->number:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->itemType:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CategoryItemBean(number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", itemType="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", subject="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->number:Ljava/lang/Integer;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->itemType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/moviedetailapi/bean/CategoryItemBean;->subject:Lcom/transsion/moviedetailapi/bean/Subject;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
