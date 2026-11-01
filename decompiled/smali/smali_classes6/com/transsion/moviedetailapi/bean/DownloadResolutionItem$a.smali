.class public final Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;
    .locals 8

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v5, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const-class v1, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Lcom/transsion/baselib/db/download/VipInfo;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;-><init>(IJZILcom/transsion/baselib/db/download/VipInfo;)V

    return-object v0
.end method

.method public final b(I)[Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;
    .locals 0

    new-array p1, p1, [Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem$a;->a(Landroid/os/Parcel;)Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem$a;->b(I)[Lcom/transsion/moviedetailapi/bean/DownloadResolutionItem;

    move-result-object p1

    return-object p1
.end method
