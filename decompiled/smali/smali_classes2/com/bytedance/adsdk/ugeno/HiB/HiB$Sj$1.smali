.class final Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/os/Parcel;)Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;
    .locals 1

    new-instance v0, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;

    invoke-direct {v0, p1}, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public Sj(I)[Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;
    .locals 0

    new-array p1, p1, [Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj$1;->Sj(Landroid/os/Parcel;)Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj$1;->Sj(I)[Lcom/bytedance/adsdk/ugeno/HiB/HiB$Sj;

    move-result-object p1

    return-object p1
.end method
