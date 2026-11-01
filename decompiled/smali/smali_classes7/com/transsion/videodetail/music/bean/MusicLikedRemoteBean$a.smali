.class public final Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;
    .locals 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_1

    sget-object v3, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteItemBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/Pager;

    new-instance v1, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;

    invoke-direct {v1, v0, p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;-><init>(Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Pager;)V

    return-object v1
.end method

.method public final b(I)[Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;
    .locals 0

    new-array p1, p1, [Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean$a;->a(Landroid/os/Parcel;)Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean$a;->b(I)[Lcom/transsion/videodetail/music/bean/MusicLikedRemoteBean;

    move-result-object p1

    return-object p1
.end method
