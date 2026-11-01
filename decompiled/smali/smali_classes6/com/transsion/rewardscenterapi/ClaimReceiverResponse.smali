.class public final Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000b\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;",
        "Ljava/io/Serializable;",
        "redeem",
        "Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;",
        "<init>",
        "(Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;)V",
        "getRedeem",
        "()Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "RewardsCenterApi_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final redeem:Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;-><init>(Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;->redeem:Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;-><init>(Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;ILjava/lang/Object;)Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;->redeem:Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;->copy(Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;)Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;->redeem:Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;

    return-object v0
.end method

.method public final copy(Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;)Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;
    .locals 1

    new-instance v0, Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;

    invoke-direct {v0, p1}, Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;-><init>(Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;

    iget-object v1, p0, Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;->redeem:Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;

    iget-object p1, p1, Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;->redeem:Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getRedeem()Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;->redeem:Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;->redeem:Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/transsion/rewardscenterapi/ClaimReceiverResponse;->redeem:Lcom/transsion/rewardscenterapi/ClaimRedeemInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClaimReceiverResponse(redeem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
