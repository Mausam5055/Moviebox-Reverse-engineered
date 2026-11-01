.class public final Lcom/transsion/memberapi/MemberTaskCheckInInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B!\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u000b\u0010\u000e\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J%\u0010\u000f\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/transsion/memberapi/MemberTaskCheckInInfo;",
        "Ljava/io/Serializable;",
        "checkInList",
        "",
        "Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;",
        "taskInfo",
        "Lcom/transsion/memberapi/MemberTaskItem;",
        "<init>",
        "(Ljava/util/List;Lcom/transsion/memberapi/MemberTaskItem;)V",
        "getCheckInList",
        "()Ljava/util/List;",
        "getTaskInfo",
        "()Lcom/transsion/memberapi/MemberTaskItem;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final checkInList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final taskInfo:Lcom/transsion/memberapi/MemberTaskItem;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/transsion/memberapi/MemberTaskItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;",
            ">;",
            "Lcom/transsion/memberapi/MemberTaskItem;",
            ")V"
        }
    .end annotation

    const-string v0, "checkInList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->checkInList:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->taskInfo:Lcom/transsion/memberapi/MemberTaskItem;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/transsion/memberapi/MemberTaskItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/memberapi/MemberTaskCheckInInfo;-><init>(Ljava/util/List;Lcom/transsion/memberapi/MemberTaskItem;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/memberapi/MemberTaskCheckInInfo;Ljava/util/List;Lcom/transsion/memberapi/MemberTaskItem;ILjava/lang/Object;)Lcom/transsion/memberapi/MemberTaskCheckInInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->checkInList:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->taskInfo:Lcom/transsion/memberapi/MemberTaskItem;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->copy(Ljava/util/List;Lcom/transsion/memberapi/MemberTaskItem;)Lcom/transsion/memberapi/MemberTaskCheckInInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->checkInList:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Lcom/transsion/memberapi/MemberTaskItem;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->taskInfo:Lcom/transsion/memberapi/MemberTaskItem;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Lcom/transsion/memberapi/MemberTaskItem;)Lcom/transsion/memberapi/MemberTaskCheckInInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;",
            ">;",
            "Lcom/transsion/memberapi/MemberTaskItem;",
            ")",
            "Lcom/transsion/memberapi/MemberTaskCheckInInfo;"
        }
    .end annotation

    const-string v0, "checkInList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/memberapi/MemberTaskCheckInInfo;

    invoke-direct {v0, p1, p2}, Lcom/transsion/memberapi/MemberTaskCheckInInfo;-><init>(Ljava/util/List;Lcom/transsion/memberapi/MemberTaskItem;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/memberapi/MemberTaskCheckInInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/memberapi/MemberTaskCheckInInfo;

    iget-object v1, p0, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->checkInList:Ljava/util/List;

    iget-object v3, p1, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->checkInList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->taskInfo:Lcom/transsion/memberapi/MemberTaskItem;

    iget-object p1, p1, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->taskInfo:Lcom/transsion/memberapi/MemberTaskItem;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getCheckInList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/memberapi/MemberTaskItemCheckInInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->checkInList:Ljava/util/List;

    return-object v0
.end method

.method public final getTaskInfo()Lcom/transsion/memberapi/MemberTaskItem;
    .locals 1

    iget-object v0, p0, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->taskInfo:Lcom/transsion/memberapi/MemberTaskItem;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->checkInList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->taskInfo:Lcom/transsion/memberapi/MemberTaskItem;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/transsion/memberapi/MemberTaskItem;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->checkInList:Ljava/util/List;

    iget-object v1, p0, Lcom/transsion/memberapi/MemberTaskCheckInInfo;->taskInfo:Lcom/transsion/memberapi/MemberTaskItem;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MemberTaskCheckInInfo(checkInList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", taskInfo="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
