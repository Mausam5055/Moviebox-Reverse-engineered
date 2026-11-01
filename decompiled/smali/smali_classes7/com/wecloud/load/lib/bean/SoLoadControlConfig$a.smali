.class public final Lcom/wecloud/load/lib/bean/SoLoadControlConfig$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
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
.method public final a(Landroid/os/Parcel;)Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
    .locals 4

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig;-><init>(ZZ)V

    return-object v0
.end method

.method public final b(I)[Lcom/wecloud/load/lib/bean/SoLoadControlConfig;
    .locals 0

    new-array p1, p1, [Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig$a;->a(Landroid/os/Parcel;)Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/wecloud/load/lib/bean/SoLoadControlConfig$a;->b(I)[Lcom/wecloud/load/lib/bean/SoLoadControlConfig;

    move-result-object p1

    return-object p1
.end method
