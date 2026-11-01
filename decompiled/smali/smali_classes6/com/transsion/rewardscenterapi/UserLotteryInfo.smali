.class public final Lcom/transsion/rewardscenterapi/UserLotteryInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B9\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\t\u0010\u0012\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0008H\u00c6\u0003J;\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00082\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000cR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/transsion/rewardscenterapi/UserLotteryInfo;",
        "Ljava/io/Serializable;",
        "remain",
        "",
        "todayRemain",
        "totalAcquire",
        "totalConsume",
        "existClaimPrice",
        "",
        "<init>",
        "(IIIIZ)V",
        "getRemain",
        "()I",
        "getTodayRemain",
        "getTotalAcquire",
        "getTotalConsume",
        "getExistClaimPrice",
        "()Z",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
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
.field private final existClaimPrice:Z

.field private final remain:I

.field private final todayRemain:I

.field private final totalAcquire:I

.field private final totalConsume:I


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/rewardscenterapi/UserLotteryInfo;-><init>(IIIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->remain:I

    iput p2, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->todayRemain:I

    iput p3, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->totalAcquire:I

    iput p4, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->totalConsume:I

    iput-boolean p5, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->existClaimPrice:Z

    return-void
.end method

.method public synthetic constructor <init>(IIIIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p7, v0

    goto :goto_0

    :cond_0
    move p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    move v3, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move p6, v0

    goto :goto_4

    :cond_4
    move p6, p5

    :goto_4
    move-object p1, p0

    move p2, p7

    move p3, v1

    move p4, v2

    move p5, v3

    invoke-direct/range {p1 .. p6}, Lcom/transsion/rewardscenterapi/UserLotteryInfo;-><init>(IIIIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/rewardscenterapi/UserLotteryInfo;IIIIZILjava/lang/Object;)Lcom/transsion/rewardscenterapi/UserLotteryInfo;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->remain:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->todayRemain:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->totalAcquire:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->totalConsume:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->existClaimPrice:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->copy(IIIIZ)Lcom/transsion/rewardscenterapi/UserLotteryInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->remain:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->todayRemain:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->totalAcquire:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->totalConsume:I

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->existClaimPrice:Z

    return v0
.end method

.method public final copy(IIIIZ)Lcom/transsion/rewardscenterapi/UserLotteryInfo;
    .locals 7

    new-instance v6, Lcom/transsion/rewardscenterapi/UserLotteryInfo;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/rewardscenterapi/UserLotteryInfo;-><init>(IIIIZ)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/rewardscenterapi/UserLotteryInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/rewardscenterapi/UserLotteryInfo;

    iget v1, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->remain:I

    iget v3, p1, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->remain:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->todayRemain:I

    iget v3, p1, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->todayRemain:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->totalAcquire:I

    iget v3, p1, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->totalAcquire:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->totalConsume:I

    iget v3, p1, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->totalConsume:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->existClaimPrice:Z

    iget-boolean p1, p1, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->existClaimPrice:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getExistClaimPrice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->existClaimPrice:Z

    return v0
.end method

.method public final getRemain()I
    .locals 1

    iget v0, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->remain:I

    return v0
.end method

.method public final getTodayRemain()I
    .locals 1

    iget v0, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->todayRemain:I

    return v0
.end method

.method public final getTotalAcquire()I
    .locals 1

    iget v0, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->totalAcquire:I

    return v0
.end method

.method public final getTotalConsume()I
    .locals 1

    iget v0, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->totalConsume:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->remain:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->todayRemain:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->totalAcquire:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->totalConsume:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->existClaimPrice:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->remain:I

    iget v1, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->todayRemain:I

    iget v2, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->totalAcquire:I

    iget v3, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->totalConsume:I

    iget-boolean v4, p0, Lcom/transsion/rewardscenterapi/UserLotteryInfo;->existClaimPrice:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UserLotteryInfo(remain="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", todayRemain="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", totalAcquire="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", totalConsume="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", existClaimPrice="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
