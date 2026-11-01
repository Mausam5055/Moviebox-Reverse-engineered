.class public final Lcom/transsion/home/tv/bean/TvChannelLoadMoreResult$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/tv/bean/TvChannelLoadMoreResult;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/home/tv/bean/TvChannelLoadMoreResult;
    .locals 5

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eq v3, v0, :cond_0

    sget-object v4, Lcom/transsion/home/bean/OperateItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    new-instance p1, Lcom/transsion/home/tv/bean/TvChannelLoadMoreResult;

    invoke-direct {p1, v1, v2}, Lcom/transsion/home/tv/bean/TvChannelLoadMoreResult;-><init>(Ljava/util/List;Z)V

    return-object p1
.end method

.method public final b(I)[Lcom/transsion/home/tv/bean/TvChannelLoadMoreResult;
    .locals 0

    new-array p1, p1, [Lcom/transsion/home/tv/bean/TvChannelLoadMoreResult;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/home/tv/bean/TvChannelLoadMoreResult$a;->a(Landroid/os/Parcel;)Lcom/transsion/home/tv/bean/TvChannelLoadMoreResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/home/tv/bean/TvChannelLoadMoreResult$a;->b(I)[Lcom/transsion/home/tv/bean/TvChannelLoadMoreResult;

    move-result-object p1

    return-object p1
.end method
