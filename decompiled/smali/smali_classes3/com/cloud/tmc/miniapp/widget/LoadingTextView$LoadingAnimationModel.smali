.class public final Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;
.super Lcom/cloud/tmc/kernel/model/BaseBean;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/widget/LoadingTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoadingAnimationModel"
.end annotation


# instance fields
.field private creatRender:I

.field private decompress:I

.field private download:I

.field private finishAnimationDuration:J

.field private firstDuration:J

.field private firstProgress:I

.field private loadRender:I

.field private secondDuration:J


# direct methods
.method public constructor <init>()V
    .locals 14

    const/16 v12, 0xff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;-><init>(IJIIIIJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IJIIIIJJ)V
    .locals 0

    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    iput-wide p2, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    iput p4, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    iput p5, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    iput p6, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    iput p7, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    iput-wide p8, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    iput-wide p10, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    return-void
.end method

.method public synthetic constructor <init>(IJIIIIJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x5a

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0xbb8

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/16 v4, 0x5d

    goto :goto_2

    :cond_2
    move/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/16 v5, 0x5f

    goto :goto_3

    :cond_3
    move/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/16 v6, 0x61

    goto :goto_4

    :cond_4
    move/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/16 v7, 0x63

    goto :goto_5

    :cond_5
    move/from16 v7, p7

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const-wide/16 v8, 0x3e8

    goto :goto_6

    :cond_6
    move-wide/from16 v8, p8

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const-wide/16 v10, 0x64

    goto :goto_7

    :cond_7
    move-wide/from16 v10, p10

    :goto_7
    move-object p1, p0

    move p2, v1

    move-wide p3, v2

    move/from16 p5, v4

    move/from16 p6, v5

    move/from16 p7, v6

    move/from16 p8, v7

    move-wide/from16 p9, v8

    move-wide/from16 p11, v10

    invoke-direct/range {p1 .. p12}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;-><init>(IJIIIIJJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;IJIIIIJJILjava/lang/Object;)Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;
    .locals 13

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    goto :goto_1

    :cond_1
    move-wide v3, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget v5, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    goto :goto_2

    :cond_2
    move/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget v7, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-wide v9, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    goto :goto_6

    :cond_6
    move-wide/from16 v9, p8

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-wide v11, v0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    goto :goto_7

    :cond_7
    move-wide/from16 v11, p10

    :goto_7
    move p1, v2

    move-wide p2, v3

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-wide/from16 p8, v9

    move-wide/from16 p10, v11

    invoke-virtual/range {p0 .. p11}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->copy(IJIIIIJJ)Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    return-wide v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    return v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    return-wide v0
.end method

.method public final component8()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    return-wide v0
.end method

.method public final copy(IJIIIIJJ)Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;
    .locals 13

    new-instance v12, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    move-object v0, v12

    move v1, p1

    move-wide v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;-><init>(IJIIIIJJ)V

    return-object v12
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    iget v3, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    iget-wide v5, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    iget v3, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    iget v3, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    iget v3, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    iget v3, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    iget-wide v5, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    iget-wide v5, p1, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getCreatRender()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    return v0
.end method

.method public final getDecompress()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    return v0
.end method

.method public final getDownload()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    return v0
.end method

.method public final getFinishAnimationDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    return-wide v0
.end method

.method public final getFirstDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    return-wide v0
.end method

.method public final getFirstProgress()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    return v0
.end method

.method public final getLoadRender()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    return v0
.end method

.method public final getSecondDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    invoke-static {v2, v3}, Landroidx/collection/s;->a(J)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final setCreatRender(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    return-void
.end method

.method public final setDecompress(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    return-void
.end method

.method public final setDownload(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    return-void
.end method

.method public final setFinishAnimationDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    return-void
.end method

.method public final setFirstDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    return-void
.end method

.method public final setFirstProgress(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    return-void
.end method

.method public final setLoadRender(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    return-void
.end method

.method public final setSecondDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget v0, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstProgress:I

    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->firstDuration:J

    iget v3, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->download:I

    iget v4, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->decompress:I

    iget v5, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->creatRender:I

    iget v6, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->loadRender:I

    iget-wide v7, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->secondDuration:J

    iget-wide v9, p0, Lcom/cloud/tmc/miniapp/widget/LoadingTextView$LoadingAnimationModel;->finishAnimationDuration:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LoadingAnimationModel(firstProgress="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", firstDuration="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", download="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", decompress="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", creatRender="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", loadRender="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", secondDuration="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", finishAnimationDuration="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
