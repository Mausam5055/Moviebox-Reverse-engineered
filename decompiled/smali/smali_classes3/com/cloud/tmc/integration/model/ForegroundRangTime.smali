.class public final Lcom/cloud/tmc/integration/model/ForegroundRangTime;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\tH\u00c6\u0003J;\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00d6\u0001J\t\u0010\u001d\u001a\u00020\tH\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/cloud/tmc/integration/model/ForegroundRangTime;",
        "",
        "startTime",
        "",
        "endTime",
        "costTime",
        "foregroundStartCount",
        "",
        "foregroundRandomId",
        "",
        "(JJJILjava/lang/String;)V",
        "getCostTime",
        "()J",
        "getEndTime",
        "getForegroundRandomId",
        "()Ljava/lang/String;",
        "getForegroundStartCount",
        "()I",
        "getStartTime",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final costTime:J

.field private final endTime:J

.field private final foregroundRandomId:Ljava/lang/String;

.field private final foregroundStartCount:I

.field private final startTime:J


# direct methods
.method public constructor <init>(JJJILjava/lang/String;)V
    .locals 1

    const-string v0, "foregroundRandomId"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->startTime:J

    iput-wide p3, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->endTime:J

    iput-wide p5, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->costTime:J

    iput p7, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundStartCount:I

    iput-object p8, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundRandomId:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/model/ForegroundRangTime;JJJILjava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/integration/model/ForegroundRangTime;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->startTime:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->endTime:J

    goto :goto_1

    :cond_1
    move-wide v3, p3

    :goto_1
    and-int/lit8 v5, p9, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->costTime:J

    goto :goto_2

    :cond_2
    move-wide v5, p5

    :goto_2
    and-int/lit8 v7, p9, 0x8

    if-eqz v7, :cond_3

    iget v7, v0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundStartCount:I

    goto :goto_3

    :cond_3
    move/from16 v7, p7

    :goto_3
    and-int/lit8 v8, p9, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundRandomId:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p8

    :goto_4
    move-wide p1, v1

    move-wide p3, v3

    move-wide p5, v5

    move/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->copy(JJJILjava/lang/String;)Lcom/cloud/tmc/integration/model/ForegroundRangTime;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->startTime:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->endTime:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->costTime:J

    return-wide v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundStartCount:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundRandomId:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JJJILjava/lang/String;)Lcom/cloud/tmc/integration/model/ForegroundRangTime;
    .locals 10

    const-string v0, "foregroundRandomId"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/cloud/tmc/integration/model/ForegroundRangTime;-><init>(JJJILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/model/ForegroundRangTime;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/model/ForegroundRangTime;

    iget-wide v3, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->startTime:J

    iget-wide v5, p1, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->startTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->endTime:J

    iget-wide v5, p1, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->endTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->costTime:J

    iget-wide v5, p1, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->costTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundStartCount:I

    iget v3, p1, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundStartCount:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundRandomId:Ljava/lang/String;

    iget-object p1, p1, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundRandomId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCostTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->costTime:J

    return-wide v0
.end method

.method public final getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->endTime:J

    return-wide v0
.end method

.method public final getForegroundRandomId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundRandomId:Ljava/lang/String;

    return-object v0
.end method

.method public final getForegroundStartCount()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundStartCount:I

    return v0
.end method

.method public final getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->startTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->startTime:J

    invoke-static {v0, v1}, Landroidx/collection/s;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->endTime:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->costTime:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundStartCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundRandomId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    iget-wide v0, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->startTime:J

    iget-wide v2, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->endTime:J

    iget-wide v4, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->costTime:J

    iget v6, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundStartCount:I

    iget-object v7, p0, Lcom/cloud/tmc/integration/model/ForegroundRangTime;->foregroundRandomId:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ForegroundRangTime(startTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", endTime="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", costTime="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", foregroundStartCount="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", foregroundRandomId="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
