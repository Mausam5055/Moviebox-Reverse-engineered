.class public final Lcom/transsion/room/sub/bean/subscription/SubscriptionFollowingsData$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/room/sub/bean/subscription/SubscriptionFollowingsData;
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
.method public final a(Landroid/os/Parcel;)Lcom/transsion/room/sub/bean/subscription/SubscriptionFollowingsData;
    .locals 6

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v2

    :goto_0
    if-eq v4, v1, :cond_1

    sget-object v5, Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    new-instance p1, Lcom/transsion/room/sub/bean/subscription/SubscriptionFollowingsData;

    invoke-direct {p1, v0, v1, v2}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFollowingsData;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    return-object p1
.end method

.method public final b(I)[Lcom/transsion/room/sub/bean/subscription/SubscriptionFollowingsData;
    .locals 0

    new-array p1, p1, [Lcom/transsion/room/sub/bean/subscription/SubscriptionFollowingsData;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFollowingsData$a;->a(Landroid/os/Parcel;)Lcom/transsion/room/sub/bean/subscription/SubscriptionFollowingsData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/room/sub/bean/subscription/SubscriptionFollowingsData$a;->b(I)[Lcom/transsion/room/sub/bean/subscription/SubscriptionFollowingsData;

    move-result-object p1

    return-object p1
.end method
