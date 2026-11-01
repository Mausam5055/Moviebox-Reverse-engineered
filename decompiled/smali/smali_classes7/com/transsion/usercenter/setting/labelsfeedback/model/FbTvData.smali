.class public final Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\'\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0006\u0010\u0012\u001a\u00020\u0005J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "season",
        "",
        "episode",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getId",
        "()Ljava/lang/String;",
        "getSeason",
        "()I",
        "getEpisode",
        "component1",
        "component2",
        "component3",
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
        "UserCenter_psRelease"
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
            "Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final episode:I

.field private final id:Ljava/lang/String;

.field private final season:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData$a;

    invoke-direct {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData$a;-><init>()V

    sput-object v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->id:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->season:I

    iput p3, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->episode:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;Ljava/lang/String;IIILjava/lang/Object;)Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->season:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->episode:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->copy(Ljava/lang/String;II)Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->season:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->episode:I

    return v0
.end method

.method public final copy(Ljava/lang/String;II)Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;

    invoke-direct {v0, p1, p2, p3}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;-><init>(Ljava/lang/String;II)V

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
    instance-of v1, p1, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;

    iget-object v1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->season:I

    iget v3, p1, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->season:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->episode:I

    iget p1, p1, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->episode:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEpisode()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->episode:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeason()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->season:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->season:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->episode:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->id:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->season:I

    iget v2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->episode:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FbTvData(id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", season="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", episode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->season:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;->episode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
