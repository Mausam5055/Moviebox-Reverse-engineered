.class public final Lcom/transsion/room/api/bean/RoomRequestEntity;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\"\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001BG\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000b\u0010\"\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0005H\u00c6\u0003J\t\u0010$\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010%\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u000b\u0010&\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003JR\u0010(\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010)J\u0006\u0010*\u001a\u00020\u0005J\u0013\u0010+\u001a\u00020,2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u00d6\u0003J\t\u0010/\u001a\u00020\u0005H\u00d6\u0001J\t\u00100\u001a\u00020\u0003H\u00d6\u0001J\u0016\u00101\u001a\u0002022\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u00020\u0005R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012\"\u0004\u0008\u0016\u0010\u0014R\u001e\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u000e\"\u0004\u0008!\u0010\u0010\u00a8\u00066"
    }
    d2 = {
        "Lcom/transsion/room/api/bean/RoomRequestEntity;",
        "Landroid/os/Parcelable;",
        "page",
        "",
        "perPage",
        "",
        "userAvatarNum",
        "cid",
        "geo",
        "Lcom/transsion/room/api/bean/RoomGeo;",
        "subjectId",
        "<init>",
        "(Ljava/lang/String;IILjava/lang/Integer;Lcom/transsion/room/api/bean/RoomGeo;Ljava/lang/String;)V",
        "getPage",
        "()Ljava/lang/String;",
        "setPage",
        "(Ljava/lang/String;)V",
        "getPerPage",
        "()I",
        "setPerPage",
        "(I)V",
        "getUserAvatarNum",
        "setUserAvatarNum",
        "getCid",
        "()Ljava/lang/Integer;",
        "setCid",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getGeo",
        "()Lcom/transsion/room/api/bean/RoomGeo;",
        "setGeo",
        "(Lcom/transsion/room/api/bean/RoomGeo;)V",
        "getSubjectId",
        "setSubjectId",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "(Ljava/lang/String;IILjava/lang/Integer;Lcom/transsion/room/api/bean/RoomGeo;Ljava/lang/String;)Lcom/transsion/room/api/bean/RoomRequestEntity;",
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
        "RoomApi_psRelease"
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
            "Lcom/transsion/room/api/bean/RoomRequestEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cid:Ljava/lang/Integer;

.field private geo:Lcom/transsion/room/api/bean/RoomGeo;

.field private page:Ljava/lang/String;

.field private perPage:I

.field private subjectId:Ljava/lang/String;

.field private userAvatarNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/room/api/bean/RoomRequestEntity$a;

    invoke-direct {v0}, Lcom/transsion/room/api/bean/RoomRequestEntity$a;-><init>()V

    sput-object v0, Lcom/transsion/room/api/bean/RoomRequestEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/Integer;Lcom/transsion/room/api/bean/RoomGeo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->page:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->perPage:I

    iput p3, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->userAvatarNum:I

    iput-object p4, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->cid:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->geo:Lcom/transsion/room/api/bean/RoomGeo;

    iput-object p6, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->subjectId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILjava/lang/Integer;Lcom/transsion/room/api/bean/RoomGeo;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, p1

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, p6

    :goto_3
    move-object v2, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/transsion/room/api/bean/RoomRequestEntity;-><init>(Ljava/lang/String;IILjava/lang/Integer;Lcom/transsion/room/api/bean/RoomGeo;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/room/api/bean/RoomRequestEntity;Ljava/lang/String;IILjava/lang/Integer;Lcom/transsion/room/api/bean/RoomGeo;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/room/api/bean/RoomRequestEntity;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->page:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget p2, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->perPage:I

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->userAvatarNum:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->cid:Ljava/lang/Integer;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->geo:Lcom/transsion/room/api/bean/RoomGeo;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->subjectId:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/transsion/room/api/bean/RoomRequestEntity;->copy(Ljava/lang/String;IILjava/lang/Integer;Lcom/transsion/room/api/bean/RoomGeo;Ljava/lang/String;)Lcom/transsion/room/api/bean/RoomRequestEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->page:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->perPage:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->userAvatarNum:I

    return v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->cid:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Lcom/transsion/room/api/bean/RoomGeo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->geo:Lcom/transsion/room/api/bean/RoomGeo;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;IILjava/lang/Integer;Lcom/transsion/room/api/bean/RoomGeo;Ljava/lang/String;)Lcom/transsion/room/api/bean/RoomRequestEntity;
    .locals 8

    new-instance v7, Lcom/transsion/room/api/bean/RoomRequestEntity;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/transsion/room/api/bean/RoomRequestEntity;-><init>(Ljava/lang/String;IILjava/lang/Integer;Lcom/transsion/room/api/bean/RoomGeo;Ljava/lang/String;)V

    return-object v7
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
    instance-of v1, p1, Lcom/transsion/room/api/bean/RoomRequestEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/room/api/bean/RoomRequestEntity;

    iget-object v1, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->page:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/room/api/bean/RoomRequestEntity;->page:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->perPage:I

    iget v3, p1, Lcom/transsion/room/api/bean/RoomRequestEntity;->perPage:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->userAvatarNum:I

    iget v3, p1, Lcom/transsion/room/api/bean/RoomRequestEntity;->userAvatarNum:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->cid:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/room/api/bean/RoomRequestEntity;->cid:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->geo:Lcom/transsion/room/api/bean/RoomGeo;

    iget-object v3, p1, Lcom/transsion/room/api/bean/RoomRequestEntity;->geo:Lcom/transsion/room/api/bean/RoomGeo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->subjectId:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/room/api/bean/RoomRequestEntity;->subjectId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCid()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->cid:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getGeo()Lcom/transsion/room/api/bean/RoomGeo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->geo:Lcom/transsion/room/api/bean/RoomGeo;

    return-object v0
.end method

.method public final getPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->page:Ljava/lang/String;

    return-object v0
.end method

.method public final getPerPage()I
    .locals 1

    iget v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->perPage:I

    return v0
.end method

.method public final getSubjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserAvatarNum()I
    .locals 1

    iget v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->userAvatarNum:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->page:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->perPage:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->userAvatarNum:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->cid:Ljava/lang/Integer;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->geo:Lcom/transsion/room/api/bean/RoomGeo;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/transsion/room/api/bean/RoomGeo;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->subjectId:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final setCid(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->cid:Ljava/lang/Integer;

    return-void
.end method

.method public final setGeo(Lcom/transsion/room/api/bean/RoomGeo;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->geo:Lcom/transsion/room/api/bean/RoomGeo;

    return-void
.end method

.method public final setPage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->page:Ljava/lang/String;

    return-void
.end method

.method public final setPerPage(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->perPage:I

    return-void
.end method

.method public final setSubjectId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->subjectId:Ljava/lang/String;

    return-void
.end method

.method public final setUserAvatarNum(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->userAvatarNum:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->page:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->perPage:I

    iget v2, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->userAvatarNum:I

    iget-object v3, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->cid:Ljava/lang/Integer;

    iget-object v4, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->geo:Lcom/transsion/room/api/bean/RoomGeo;

    iget-object v5, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->subjectId:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RoomRequestEntity(page="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", perPage="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", userAvatarNum="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cid="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", geo="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", subjectId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->page:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->perPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->userAvatarNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->cid:Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->geo:Lcom/transsion/room/api/bean/RoomGeo;

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/transsion/room/api/bean/RoomGeo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object p2, p0, Lcom/transsion/room/api/bean/RoomRequestEntity;->subjectId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
