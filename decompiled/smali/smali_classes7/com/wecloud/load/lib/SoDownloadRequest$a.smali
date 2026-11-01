.class public final Lcom/wecloud/load/lib/SoDownloadRequest$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wecloud/load/lib/SoDownloadRequest;
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
.method public final a(Landroid/os/Parcel;)Lcom/wecloud/load/lib/SoDownloadRequest;
    .locals 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    sget-object v3, Lcom/wecloud/load/lib/bean/SoZipInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    check-cast p1, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    new-instance v0, Lcom/wecloud/load/lib/SoDownloadRequest;

    invoke-direct {v0, v1, p1}, Lcom/wecloud/load/lib/SoDownloadRequest;-><init>(Ljava/util/List;Lcom/wecloud/load/lib/bean/SoLoadControlConfig;)V

    return-object v0
.end method

.method public final b(I)[Lcom/wecloud/load/lib/SoDownloadRequest;
    .locals 0

    new-array p1, p1, [Lcom/wecloud/load/lib/SoDownloadRequest;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wecloud/load/lib/SoDownloadRequest$a;->a(Landroid/os/Parcel;)Lcom/wecloud/load/lib/SoDownloadRequest;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wecloud/load/lib/SoDownloadRequest$a;->b(I)[Lcom/wecloud/load/lib/SoDownloadRequest;

    move-result-object p1

    return-object p1
.end method
