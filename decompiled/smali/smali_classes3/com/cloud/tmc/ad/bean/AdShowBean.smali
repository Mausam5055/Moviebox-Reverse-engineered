.class public final Lcom/cloud/tmc/ad/bean/AdShowBean;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008%\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B_\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\u0003H\u00c6\u0003J\t\u0010*\u001a\u00020\u0006H\u00c6\u0003J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\u0006H\u00c6\u0003J\t\u0010-\u001a\u00020\nH\u00c6\u0003J\t\u0010.\u001a\u00020\u0003H\u00c6\u0003J\t\u0010/\u001a\u00020\u0003H\u00c6\u0003J\t\u00100\u001a\u00020\u000eH\u00c6\u0003Jc\u00101\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u000eH\u00c6\u0001J\u0013\u00102\u001a\u00020\u000e2\u0008\u00103\u001a\u0004\u0018\u000104H\u00d6\u0003J\t\u00105\u001a\u00020\u0003H\u00d6\u0001J\t\u00106\u001a\u00020\nH\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013R\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001a\u0010\u0007\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0011\"\u0004\u0008\u0019\u0010\u0013R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0008\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u0011\"\u0004\u0008#\u0010\u0013R\u001a\u0010\u000c\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0011\"\u0004\u0008%\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u001f\"\u0004\u0008\'\u0010!\u00a8\u00067"
    }
    d2 = {
        "Lcom/cloud/tmc/ad/bean/AdShowBean;",
        "Ljava/io/Serializable;",
        "imageWidth",
        "",
        "imageHeight",
        "showTs",
        "",
        "isEffectiveShow",
        "showDuration",
        "showArea",
        "",
        "showReportTimeType",
        "showTimes",
        "isClose",
        "",
        "(IIJIJLjava/lang/String;IIZ)V",
        "getImageHeight",
        "()I",
        "setImageHeight",
        "(I)V",
        "getImageWidth",
        "setImageWidth",
        "()Z",
        "setClose",
        "(Z)V",
        "setEffectiveShow",
        "getShowArea",
        "()Ljava/lang/String;",
        "setShowArea",
        "(Ljava/lang/String;)V",
        "getShowDuration",
        "()J",
        "setShowDuration",
        "(J)V",
        "getShowReportTimeType",
        "setShowReportTimeType",
        "getShowTimes",
        "setShowTimes",
        "getShowTs",
        "setShowTs",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "com.cloud.tmc.miniad"
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
.field private imageHeight:I

.field private imageWidth:I

.field private isClose:Z

.field private isEffectiveShow:I

.field private showArea:Ljava/lang/String;

.field private showDuration:J

.field private showReportTimeType:I

.field private showTimes:I

.field private showTs:J


# direct methods
.method public constructor <init>()V
    .locals 14

    const/16 v12, 0x1ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/cloud/tmc/ad/bean/AdShowBean;-><init>(IIJIJLjava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIJIJLjava/lang/String;IIZ)V
    .locals 1

    const-string v0, "showArea"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    iput p2, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    iput-wide p3, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    iput p5, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    iput-wide p6, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    iput-object p8, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    iput p9, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    iput p10, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    iput-boolean p11, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    return-void
.end method

.method public synthetic constructor <init>(IIJIJLjava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_2

    move-wide v7, v5

    goto :goto_2

    :cond_2
    move-wide v7, p3

    :goto_2
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move/from16 v4, p5

    :goto_3
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    goto :goto_4

    :cond_4
    move-wide/from16 v5, p6

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    const-string v9, ""

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    move v10, v2

    goto :goto_6

    :cond_6
    move/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    move v11, v2

    goto :goto_7

    :cond_7
    move/from16 v11, p10

    :goto_7
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v2, p11

    :goto_8
    move-object p1, p0

    move p2, v1

    move p3, v3

    move-wide/from16 p4, v7

    move/from16 p6, v4

    move-wide/from16 p7, v5

    move-object/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move/from16 p12, v2

    invoke-direct/range {p1 .. p12}, Lcom/cloud/tmc/ad/bean/AdShowBean;-><init>(IIJIJLjava/lang/String;IIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/ad/bean/AdShowBean;IIJIJLjava/lang/String;IIZILjava/lang/Object;)Lcom/cloud/tmc/ad/bean/AdShowBean;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    goto :goto_2

    :cond_2
    move-wide v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget v6, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-wide v7, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    goto :goto_4

    :cond_4
    move-wide/from16 v7, p6

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget v10, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    goto :goto_6

    :cond_6
    move/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget v11, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    goto :goto_7

    :cond_7
    move/from16 v11, p10

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    goto :goto_8

    :cond_8
    move/from16 v1, p11

    :goto_8
    move p1, v2

    move p2, v3

    move-wide p3, v4

    move/from16 p5, v6

    move-wide/from16 p6, v7

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/cloud/tmc/ad/bean/AdShowBean;->copy(IIJIJLjava/lang/String;IIZ)Lcom/cloud/tmc/ad/bean/AdShowBean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    return-wide v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    return v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    return-wide v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    return v0
.end method

.method public final component9()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    return v0
.end method

.method public final copy(IIJIJLjava/lang/String;IIZ)Lcom/cloud/tmc/ad/bean/AdShowBean;
    .locals 13

    const-string v0, "showArea"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/tmc/ad/bean/AdShowBean;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/cloud/tmc/ad/bean/AdShowBean;-><init>(IIJIJLjava/lang/String;IIZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/ad/bean/AdShowBean;

    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    iget v3, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    iget v3, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    iget-wide v5, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    iget v3, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    iget-wide v5, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    iget v3, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    iget v3, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    iget-boolean p1, p1, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getImageHeight()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    return v0
.end method

.method public final getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    return v0
.end method

.method public final getShowArea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    return-wide v0
.end method

.method public final getShowReportTimeType()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    return v0
.end method

.method public final getShowTimes()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    return v0
.end method

.method public final getShowTs()J
    .locals 2

    iget-wide v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    return v0
.end method

.method public final isEffectiveShow()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    return v0
.end method

.method public final setClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    return-void
.end method

.method public final setEffectiveShow(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    return-void
.end method

.method public final setImageHeight(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    return-void
.end method

.method public final setImageWidth(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    return-void
.end method

.method public final setShowArea(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    return-void
.end method

.method public final setShowDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    return-void
.end method

.method public final setShowReportTimeType(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    return-void
.end method

.method public final setShowTimes(I)V
    .locals 0

    iput p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    return-void
.end method

.method public final setShowTs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget v0, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageWidth:I

    iget v1, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->imageHeight:I

    iget-wide v2, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTs:J

    iget v4, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isEffectiveShow:I

    iget-wide v5, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showDuration:J

    iget-object v7, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showArea:Ljava/lang/String;

    iget v8, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showReportTimeType:I

    iget v9, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->showTimes:I

    iget-boolean v10, p0, Lcom/cloud/tmc/ad/bean/AdShowBean;->isClose:Z

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AdShowBean(imageWidth="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", imageHeight="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", showTs="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", isEffectiveShow="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", showDuration="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", showArea="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", showReportTimeType="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", showTimes="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isClose="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
