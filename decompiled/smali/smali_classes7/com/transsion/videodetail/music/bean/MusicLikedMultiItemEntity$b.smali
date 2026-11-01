.class public final Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    const-class v1, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/transsion/baselib/db/music/MusicLikedDbBean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;->valueOf(Ljava/lang/String;)Lcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;-><init>(Lcom/transsion/baselib/db/music/MusicLikedDbBean;ILcom/transsion/videodetail/music/bean/MusicLikedItemStateEnum;)V

    return-object v0
.end method

.method public final b(I)[Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;
    .locals 0

    new-array p1, p1, [Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity$b;->a(Landroid/os/Parcel;)Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity$b;->b(I)[Lcom/transsion/videodetail/music/bean/MusicLikedMultiItemEntity;

    move-result-object p1

    return-object p1
.end method
