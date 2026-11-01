.class public final Lcom/transsion/moviedetailapi/bean/ResolutionItem;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0006\u0010\r\u001a\u00020\u0003J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\u0016\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/transsion/moviedetailapi/bean/ResolutionItem;",
        "Landroid/os/Parcelable;",
        "resolution",
        "",
        "epNum",
        "<init>",
        "(II)V",
        "getResolution",
        "()I",
        "getEpNum",
        "component1",
        "component2",
        "copy",
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
            "Lcom/transsion/moviedetailapi/bean/ResolutionItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final epNum:I

.field private final resolution:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/moviedetailapi/bean/ResolutionItem$a;

    invoke-direct {v0}, Lcom/transsion/moviedetailapi/bean/ResolutionItem$a;-><init>()V

    sput-object v0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->resolution:I

    iput p2, p0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->epNum:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/moviedetailapi/bean/ResolutionItem;IIILjava/lang/Object;)Lcom/transsion/moviedetailapi/bean/ResolutionItem;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->resolution:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->epNum:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->copy(II)Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->resolution:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->epNum:I

    return v0
.end method

.method public final copy(II)Lcom/transsion/moviedetailapi/bean/ResolutionItem;
    .locals 1

    new-instance v0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    invoke-direct {v0, p1, p2}, Lcom/transsion/moviedetailapi/bean/ResolutionItem;-><init>(II)V

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
    instance-of v1, p1, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/moviedetailapi/bean/ResolutionItem;

    iget v1, p0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->resolution:I

    iget v3, p1, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->resolution:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->epNum:I

    iget p1, p1, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->epNum:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getEpNum()I
    .locals 1

    iget v0, p0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->epNum:I

    return v0
.end method

.method public final getResolution()I
    .locals 1

    iget v0, p0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->resolution:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->resolution:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->epNum:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->resolution:I

    iget v1, p0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->epNum:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResolutionItem(resolution="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", epNum="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->resolution:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/moviedetailapi/bean/ResolutionItem;->epNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
