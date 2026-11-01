.class public final Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0012\u001a\u00020\u0005H\u00c6\u0003J$\u0010\u0013\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0014J\u0006\u0010\u0015\u001a\u00020\u0003J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\u0016\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\u0003R\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\""
    }
    d2 = {
        "Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;",
        "Landroid/os/Parcelable;",
        "action",
        "",
        "item",
        "Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;",
        "<init>",
        "(Ljava/lang/Integer;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)V",
        "getAction",
        "()Ljava/lang/Integer;",
        "setAction",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getItem",
        "()Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;",
        "setItem",
        "(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)V",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/Integer;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;",
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
        "VideoDetail_psRelease"
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
            "Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private action:Ljava/lang/Integer;

.field private item:Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean$a;

    invoke-direct {v0}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean$a;-><init>()V

    sput-object v0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->action:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->item:Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;-><init>(Ljava/lang/Integer;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;Ljava/lang/Integer;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;ILjava/lang/Object;)Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->action:Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->item:Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->copy(Ljava/lang/Integer;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->action:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->item:Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;
    .locals 1

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;

    invoke-direct {v0, p1, p2}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;-><init>(Ljava/lang/Integer;Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)V

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
    instance-of v1, p1, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;

    iget-object v1, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->action:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->action:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->item:Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    iget-object p1, p1, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->item:Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAction()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->action:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getItem()Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->item:Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->action:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->item:Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    invoke-virtual {v1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAction(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->action:Ljava/lang/Integer;

    return-void
.end method

.method public final setItem(Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->item:Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->action:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->item:Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MusicLikedRemoteActionBean(action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", item="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->action:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteActionBean;->item:Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
