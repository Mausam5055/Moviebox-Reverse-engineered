.class public final Lcom/transsion/home/tv/bean/PendingRefreshResult$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/tv/bean/PendingRefreshResult;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/home/tv/bean/PendingRefreshResult;
    .locals 9

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/home/tv/bean/PendingRefreshResult;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    move-object v1, v3

    goto :goto_3

    :cond_3
    sget-object v1, Lcom/transsion/home/bean/SubOperateData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    move-object v8, v1

    check-cast v8, Lcom/transsion/home/bean/SubOperateData;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    sget-object v1, Lcom/transsion/home/tv/bean/TvChannelListDataBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    :goto_4
    move-object p1, v3

    check-cast p1, Lcom/transsion/home/tv/bean/TvChannelListDataBean;

    move-object v1, v0

    move v3, v5

    move v4, v6

    move v5, v7

    move-object v6, v8

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/transsion/home/tv/bean/PendingRefreshResult;-><init>(Ljava/lang/String;ZZZLcom/transsion/home/bean/SubOperateData;Lcom/transsion/home/tv/bean/TvChannelListDataBean;)V

    return-object v0
.end method

.method public final b(I)[Lcom/transsion/home/tv/bean/PendingRefreshResult;
    .locals 0

    new-array p1, p1, [Lcom/transsion/home/tv/bean/PendingRefreshResult;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/home/tv/bean/PendingRefreshResult$a;->a(Landroid/os/Parcel;)Lcom/transsion/home/tv/bean/PendingRefreshResult;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/home/tv/bean/PendingRefreshResult$a;->b(I)[Lcom/transsion/home/tv/bean/PendingRefreshResult;

    move-result-object p1

    return-object p1
.end method
