.class public final Lcom/transsion/baselib/db/video/PlaybackRecordTable;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u001d\u0008\u0087\u0008\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0008H\u00c6\u0003J\t\u0010!\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\"\u001a\u00020\u000bH\u00c6\u0003JE\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010$\u001a\u00020\u000b2\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010&\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\'\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\t\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014\"\u0004\u0008\u0018\u0010\u0016R\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006("
    }
    d2 = {
        "Lcom/transsion/baselib/db/video/PlaybackRecordTable;",
        "",
        "subjectId",
        "",
        "se",
        "",
        "ep",
        "lastAdStartTimeStamp",
        "",
        "lastAdEndTimeStamp",
        "rewardUnlock",
        "",
        "<init>",
        "(Ljava/lang/String;IIJJZ)V",
        "getSubjectId",
        "()Ljava/lang/String;",
        "getSe",
        "()I",
        "getEp",
        "getLastAdStartTimeStamp",
        "()J",
        "setLastAdStartTimeStamp",
        "(J)V",
        "getLastAdEndTimeStamp",
        "setLastAdEndTimeStamp",
        "getRewardUnlock",
        "()Z",
        "setRewardUnlock",
        "(Z)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "BaseLib_psRelease"
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
.field private final ep:I

.field private lastAdEndTimeStamp:J

.field private lastAdStartTimeStamp:J

.field private rewardUnlock:Z

.field private final se:I

.field private final subjectId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJJZ)V
    .locals 1

    const-string v0, "subjectId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->subjectId:Ljava/lang/String;

    iput p2, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->se:I

    iput p3, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->ep:I

    iput-wide p4, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdStartTimeStamp:J

    iput-wide p6, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdEndTimeStamp:J

    iput-boolean p8, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->rewardUnlock:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIJJZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 v0, p9, 0x8

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    move-wide v7, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v7, p4

    :goto_0
    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_1

    move-wide v9, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v9, p6

    :goto_1
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v11, v0

    goto :goto_2

    :cond_2
    move/from16 v11, p8

    :goto_2
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v3 .. v11}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;-><init>(Ljava/lang/String;IIJJZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/baselib/db/video/PlaybackRecordTable;Ljava/lang/String;IIJJZILjava/lang/Object;)Lcom/transsion/baselib/db/video/PlaybackRecordTable;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->subjectId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->se:I

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    iget v3, v0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->ep:I

    goto :goto_2

    :cond_2
    move v3, p3

    :goto_2
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_3

    iget-wide v4, v0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdStartTimeStamp:J

    goto :goto_3

    :cond_3
    move-wide v4, p4

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdEndTimeStamp:J

    goto :goto_4

    :cond_4
    move-wide v6, p6

    :goto_4
    and-int/lit8 v8, p9, 0x20

    if-eqz v8, :cond_5

    iget-boolean v8, v0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->rewardUnlock:Z

    goto :goto_5

    :cond_5
    move/from16 v8, p8

    :goto_5
    move-object p1, v1

    move p2, v2

    move p3, v3

    move-wide p4, v4

    move-wide p6, v6

    move/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->copy(Ljava/lang/String;IIJJZ)Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->se:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->ep:I

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdStartTimeStamp:J

    return-wide v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdEndTimeStamp:J

    return-wide v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->rewardUnlock:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;IIJJZ)Lcom/transsion/baselib/db/video/PlaybackRecordTable;
    .locals 10

    const-string v0, "subjectId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    move-object v1, v0

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;-><init>(Ljava/lang/String;IIJJZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/baselib/db/video/PlaybackRecordTable;

    iget-object v1, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->subjectId:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->subjectId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->se:I

    iget v3, p1, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->se:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->ep:I

    iget v3, p1, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->ep:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdStartTimeStamp:J

    iget-wide v5, p1, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdStartTimeStamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdEndTimeStamp:J

    iget-wide v5, p1, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdEndTimeStamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->rewardUnlock:Z

    iget-boolean p1, p1, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->rewardUnlock:Z

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getEp()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->ep:I

    return v0
.end method

.method public final getLastAdEndTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdEndTimeStamp:J

    return-wide v0
.end method

.method public final getLastAdStartTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdStartTimeStamp:J

    return-wide v0
.end method

.method public final getRewardUnlock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->rewardUnlock:Z

    return v0
.end method

.method public final getSe()I
    .locals 1

    iget v0, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->se:I

    return v0
.end method

.method public final getSubjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->subjectId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->subjectId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->se:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->ep:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdStartTimeStamp:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdEndTimeStamp:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->rewardUnlock:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setLastAdEndTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdEndTimeStamp:J

    return-void
.end method

.method public final setLastAdStartTimeStamp(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdStartTimeStamp:J

    return-void
.end method

.method public final setRewardUnlock(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->rewardUnlock:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->subjectId:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->se:I

    iget v2, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->ep:I

    iget-wide v3, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdStartTimeStamp:J

    iget-wide v5, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->lastAdEndTimeStamp:J

    iget-boolean v7, p0, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->rewardUnlock:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PlaybackRecordTable(subjectId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", se="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", ep="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", lastAdStartTimeStamp="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", lastAdEndTimeStamp="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", rewardUnlock="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
