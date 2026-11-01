.class final Lcom/bytedance/adsdk/sP/vS$TKC$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/vS$TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/bytedance/adsdk/sP/vS$TKC;",
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
.method public Sj(Landroid/os/Parcel;)Lcom/bytedance/adsdk/sP/vS$TKC;
    .locals 2

    new-instance v0, Lcom/bytedance/adsdk/sP/vS$TKC;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/bytedance/adsdk/sP/vS$TKC;-><init>(Landroid/os/Parcel;Lcom/bytedance/adsdk/sP/vS$1;)V

    return-object v0
.end method

.method public Sj(I)[Lcom/bytedance/adsdk/sP/vS$TKC;
    .locals 0

    new-array p1, p1, [Lcom/bytedance/adsdk/sP/vS$TKC;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/sP/vS$TKC$1;->Sj(Landroid/os/Parcel;)Lcom/bytedance/adsdk/sP/vS$TKC;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/sP/vS$TKC$1;->Sj(I)[Lcom/bytedance/adsdk/sP/vS$TKC;

    move-result-object p1

    return-object p1
.end method
