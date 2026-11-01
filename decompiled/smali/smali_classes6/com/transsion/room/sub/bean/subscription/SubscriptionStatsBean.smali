.class public final Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001b\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B3\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\u0010\u0010\u001a\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000fJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J:\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010\u001eJ\u0006\u0010\u001f\u001a\u00020\u0003J\u0013\u0010 \u001a\u00020\u00062\u0008\u0010!\u001a\u0004\u0018\u00010\"H\u00d6\u0003J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001J\t\u0010$\u001a\u00020%H\u00d6\u0001J\u0016\u0010&\u001a\u00020\'2\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u0003R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001e\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0012\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\u0008\u0005\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u000b\"\u0004\u0008\u0018\u0010\r\u00a8\u0006+"
    }
    d2 = {
        "Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;",
        "Landroid/os/Parcelable;",
        "followerCount",
        "",
        "followingCount",
        "isSubscribed",
        "",
        "publishCount",
        "<init>",
        "(ILjava/lang/Integer;Ljava/lang/Boolean;I)V",
        "getFollowerCount",
        "()I",
        "setFollowerCount",
        "(I)V",
        "getFollowingCount",
        "()Ljava/lang/Integer;",
        "setFollowingCount",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "()Ljava/lang/Boolean;",
        "setSubscribed",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "getPublishCount",
        "setPublishCount",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(ILjava/lang/Integer;Ljava/lang/Boolean;I)Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "writeToParcel",
        "",
        "dest",
        "Landroid/os/Parcel;",
        "flags",
        "Room_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private followerCount:I

.field private followingCount:Ljava/lang/Integer;

.field private isSubscribed:Ljava/lang/Boolean;

.field private publishCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean$a;

    invoke-direct {v0}, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean$a;-><init>()V

    sput-object v0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;-><init>(ILjava/lang/Integer;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;Ljava/lang/Boolean;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    iput-object p2, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    iput p4, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/Boolean;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;-><init>(ILjava/lang/Integer;Ljava/lang/Boolean;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;ILjava/lang/Integer;Ljava/lang/Boolean;IILjava/lang/Object;)Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->copy(ILjava/lang/Integer;Ljava/lang/Boolean;I)Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    return v0
.end method

.method public final component2()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component3()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    return v0
.end method

.method public final copy(ILjava/lang/Integer;Ljava/lang/Boolean;I)Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;
    .locals 1

    new-instance v0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;-><init>(ILjava/lang/Integer;Ljava/lang/Boolean;I)V

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;

    iget v1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    iget v3, p1, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    iget p1, p1, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getFollowerCount()I
    .locals 1

    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    return v0
.end method

.method public final getFollowingCount()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPublishCount()I
    .locals 1

    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isSubscribed()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setFollowerCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    return-void
.end method

.method public final setFollowingCount(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    return-void
.end method

.method public final setPublishCount(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    return-void
.end method

.method public final setSubscribed(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    iget-object v1, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    iget-object v2, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    iget v3, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SubscriptionStatsBean(followerCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", followingCount="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isSubscribed="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", publishCount="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followerCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->followingCount:Ljava/lang/Integer;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object p2, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->isSubscribed:Ljava/lang/Boolean;

    if-nez p2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget p2, p0, Lcom/transsion/room/sub/bean/subscription/SubscriptionStatsBean;->publishCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
