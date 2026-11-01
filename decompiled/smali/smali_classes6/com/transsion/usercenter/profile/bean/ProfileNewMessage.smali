.class public final Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;",
        "Ljava/io/Serializable;",
        "interactiveCnt",
        "",
        "systemCnt",
        "likeCnt",
        "commentCnt",
        "<init>",
        "(IIII)V",
        "getInteractiveCnt",
        "()I",
        "getSystemCnt",
        "getLikeCnt",
        "getCommentCnt",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "UserCenter_psRelease"
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
.field private final commentCnt:I

.field private final interactiveCnt:I

.field private final likeCnt:I

.field private final systemCnt:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->interactiveCnt:I

    iput p2, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->systemCnt:I

    iput p3, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->likeCnt:I

    iput p4, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->commentCnt:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;IIIIILjava/lang/Object;)Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->interactiveCnt:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->systemCnt:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->likeCnt:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->commentCnt:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->copy(IIII)Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->interactiveCnt:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->systemCnt:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->likeCnt:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->commentCnt:I

    return v0
.end method

.method public final copy(IIII)Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;
    .locals 1

    new-instance v0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;-><init>(IIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;

    iget v1, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->interactiveCnt:I

    iget v3, p1, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->interactiveCnt:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->systemCnt:I

    iget v3, p1, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->systemCnt:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->likeCnt:I

    iget v3, p1, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->likeCnt:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->commentCnt:I

    iget p1, p1, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->commentCnt:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCommentCnt()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->commentCnt:I

    return v0
.end method

.method public final getInteractiveCnt()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->interactiveCnt:I

    return v0
.end method

.method public final getLikeCnt()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->likeCnt:I

    return v0
.end method

.method public final getSystemCnt()I
    .locals 1

    iget v0, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->systemCnt:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->interactiveCnt:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->systemCnt:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->likeCnt:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->commentCnt:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->interactiveCnt:I

    iget v1, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->systemCnt:I

    iget v2, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->likeCnt:I

    iget v3, p0, Lcom/transsion/usercenter/profile/bean/ProfileNewMessage;->commentCnt:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProfileNewMessage(interactiveCnt="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", systemCnt="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", likeCnt="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", commentCnt="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
