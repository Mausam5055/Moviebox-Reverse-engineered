.class public final Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0015\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001B=\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J?\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u00072\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0010R\u001a\u0010\u0008\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0010\"\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;",
        "Ljava/io/Serializable;",
        "rewardType",
        "",
        "rewardAmount",
        "",
        "isToday",
        "",
        "hasCheckIn",
        "date",
        "<init>",
        "(ILjava/lang/String;ZZLjava/lang/String;)V",
        "getRewardType",
        "()I",
        "getRewardAmount",
        "()Ljava/lang/String;",
        "()Z",
        "getHasCheckIn",
        "setHasCheckIn",
        "(Z)V",
        "getDate",
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
.field private final date:Ljava/lang/String;

.field private hasCheckIn:Z

.field private final isToday:Z

.field private final rewardAmount:Ljava/lang/String;

.field private final rewardType:I


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

    invoke-direct/range {v0 .. v7}, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;-><init>(ILjava/lang/String;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->rewardType:I

    iput-object p2, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->rewardAmount:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->isToday:Z

    iput-boolean p4, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    iput-object p5, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->date:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
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

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v0, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move-object p6, v1

    goto :goto_4

    :cond_4
    move-object p6, p5

    :goto_4
    move-object p1, p0

    move p2, p7

    move-object p3, v2

    move p4, v3

    move p5, v0

    invoke-direct/range {p1 .. p6}, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;-><init>(ILjava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;ILjava/lang/String;ZZLjava/lang/String;ILjava/lang/Object;)Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->rewardType:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->rewardAmount:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->isToday:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->date:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->copy(ILjava/lang/String;ZZLjava/lang/String;)Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->rewardType:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->rewardAmount:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->isToday:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;ZZLjava/lang/String;)Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;
    .locals 7

    new-instance v6, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;-><init>(ILjava/lang/String;ZZLjava/lang/String;)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;

    iget v1, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->rewardType:I

    iget v3, p1, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->rewardType:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->rewardAmount:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->rewardAmount:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->isToday:Z

    iget-boolean v3, p1, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->isToday:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    iget-boolean v3, p1, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->date:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->date:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasCheckIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    return v0
.end method

.method public final getRewardAmount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->rewardAmount:Ljava/lang/String;

    return-object v0
.end method

.method public final getRewardType()I
    .locals 1

    iget v0, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->rewardType:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->rewardType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->rewardAmount:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->isToday:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->date:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isToday()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->isToday:Z

    return v0
.end method

.method public final setHasCheckIn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->rewardType:I

    iget-object v1, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->rewardAmount:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->isToday:Z

    iget-boolean v3, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    iget-object v4, p0, Lcom/transsion/rewardscenterapi/MemberTaskItemCheckInInfo;->date:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MemberTaskItemCheckInInfo(rewardType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rewardAmount="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isToday="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasCheckIn="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", date="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
