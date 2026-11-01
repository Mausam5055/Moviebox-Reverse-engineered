.class public final Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0008H\u00c6\u0003J;\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0008H\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000e\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;",
        "Ljava/io/Serializable;",
        "date",
        "",
        "isToday",
        "",
        "hasCheckIn",
        "rewardType",
        "",
        "rewardAmount",
        "<init>",
        "(Ljava/lang/String;ZZII)V",
        "getDate",
        "()Ljava/lang/String;",
        "()Z",
        "getHasCheckIn",
        "setHasCheckIn",
        "(Z)V",
        "getRewardType",
        "()I",
        "getRewardAmount",
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
        "MemberApi_psRelease"
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

.field private final rewardAmount:I

.field private final rewardType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZII)V
    .locals 1

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->date:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday:Z

    iput-boolean p3, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    iput p4, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->rewardType:I

    iput p5, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->rewardAmount:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;Ljava/lang/String;ZZIIILjava/lang/Object;)Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->date:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday:Z

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->rewardType:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->rewardAmount:I

    :cond_4
    move v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->copy(Ljava/lang/String;ZZII)Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->rewardType:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->rewardAmount:I

    return v0
.end method

.method public final copy(Ljava/lang/String;ZZII)Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;
    .locals 7

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;-><init>(Ljava/lang/String;ZZII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;

    iget-object v1, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->date:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->date:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday:Z

    iget-boolean v3, p1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    iget-boolean v3, p1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->rewardType:I

    iget v3, p1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->rewardType:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->rewardAmount:I

    iget p1, p1, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->rewardAmount:I

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasCheckIn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    return v0
.end method

.method public final getRewardAmount()I
    .locals 1

    iget v0, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->rewardAmount:I

    return v0
.end method

.method public final getRewardType()I
    .locals 1

    iget v0, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->rewardType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->date:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->rewardType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->rewardAmount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final isToday()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday:Z

    return v0
.end method

.method public final setHasCheckIn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->date:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->isToday:Z

    iget-boolean v2, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->hasCheckIn:Z

    iget v3, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->rewardType:I

    iget v4, p0, Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;->rewardAmount:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MemberTaskItemCheckInInfo(date="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isToday="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasCheckIn="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", rewardType="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", rewardAmount="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
