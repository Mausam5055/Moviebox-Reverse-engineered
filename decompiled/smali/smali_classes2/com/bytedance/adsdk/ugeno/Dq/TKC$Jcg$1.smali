.class final Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;",
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
.method public Sj(Landroid/os/Parcel;)Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;
    .locals 2

    new-instance v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public Sj(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;
    .locals 1

    new-instance v0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public Sj(I)[Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;
    .locals 0

    new-array p1, p1, [Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg$1;->Sj(Landroid/os/Parcel;)Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;

    move-result-object p1

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg$1;->Sj(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg$1;->Sj(I)[Lcom/bytedance/adsdk/ugeno/Dq/TKC$Jcg;

    move-result-object p1

    return-object p1
.end method
