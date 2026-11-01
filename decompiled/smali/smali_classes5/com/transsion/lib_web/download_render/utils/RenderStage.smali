.class public final Lcom/transsion/lib_web/download_render/utils/RenderStage;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008.\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\t\u0010.\u001a\u00020\u0003H\u00c6\u0003J\t\u0010/\u001a\u00020\u0003H\u00c6\u0003J\t\u00100\u001a\u00020\u0006H\u00c6\u0003J\t\u00101\u001a\u00020\u0008H\u00c6\u0003J\t\u00102\u001a\u00020\u0008H\u00c6\u0003J\t\u00103\u001a\u00020\u0008H\u00c6\u0003J\t\u00104\u001a\u00020\u0003H\u00c6\u0003J\t\u00105\u001a\u00020\rH\u00c6\u0003J\t\u00106\u001a\u00020\rH\u00c6\u0003J\t\u00107\u001a\u00020\rH\u00c6\u0003Jm\u00108\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\rH\u00c6\u0001J\u0013\u00109\u001a\u00020\u00082\u0008\u0010:\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010;\u001a\u00020<H\u00d6\u0001J\t\u0010=\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013\"\u0004\u0008\u0017\u0010\u0015R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001a\u0010\t\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001d\"\u0004\u0008!\u0010\u001fR\u001a\u0010\n\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010\u001d\"\u0004\u0008#\u0010\u001fR\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0013\"\u0004\u0008%\u0010\u0015R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\u001a\u0010\u000e\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\'\"\u0004\u0008+\u0010)R\u001a\u0010\u000f\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\'\"\u0004\u0008-\u0010)\u00a8\u0006>"
    }
    d2 = {
        "Lcom/transsion/lib_web/download_render/utils/RenderStage;",
        "",
        "url",
        "",
        "source",
        "renderStartTime",
        "",
        "reported",
        "",
        "needReport",
        "renderWithDownload",
        "type",
        "stage1",
        "Lcom/transsion/lib_web/download_render/utils/FileScoreData;",
        "stage2",
        "stage3",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V",
        "getUrl",
        "()Ljava/lang/String;",
        "setUrl",
        "(Ljava/lang/String;)V",
        "getSource",
        "setSource",
        "getRenderStartTime",
        "()J",
        "setRenderStartTime",
        "(J)V",
        "getReported",
        "()Z",
        "setReported",
        "(Z)V",
        "getNeedReport",
        "setNeedReport",
        "getRenderWithDownload",
        "setRenderWithDownload",
        "getType",
        "setType",
        "getStage1",
        "()Lcom/transsion/lib_web/download_render/utils/FileScoreData;",
        "setStage1",
        "(Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V",
        "getStage2",
        "setStage2",
        "getStage3",
        "setStage3",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "lib_web_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private needReport:Z

.field private renderStartTime:J

.field private renderWithDownload:Z

.field private reported:Z

.field private source:Ljava/lang/String;

.field private stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

.field private stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

.field private stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stage1"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stage2"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stage3"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

    iput-wide p3, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    iput-boolean p5, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    iput-boolean p6, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    iput-boolean p7, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    iput-object p8, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    iput-object p9, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    iput-object p10, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    iput-object p11, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v8, v2

    goto :goto_0

    :cond_0
    move/from16 v8, p5

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move/from16 v9, p6

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    move v10, v2

    goto :goto_2

    :cond_2
    move/from16 v10, p7

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    const-string v1, ""

    move-object v11, v1

    goto :goto_3

    :cond_3
    move-object/from16 v11, p8

    :goto_3
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_4

    new-instance v1, Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    const/16 v23, 0x1ff

    const/16 v24, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v12, v1

    invoke-direct/range {v12 .. v24}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;-><init>(ZJIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_4
    move-object/from16 v12, p9

    :goto_4
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_5

    new-instance v1, Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    const/16 v24, 0x1ff

    const/16 v25, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v25}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;-><init>(ZJIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_5

    :cond_5
    move-object/from16 v13, p10

    :goto_5
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_6

    new-instance v0, Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    const/16 v25, 0x1ff

    const/16 v26, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v14, v0

    invoke-direct/range {v14 .. v26}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;-><init>(ZJIIIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :cond_6
    move-object/from16 v14, p11

    :goto_6
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    invoke-direct/range {v3 .. v14}, Lcom/transsion/lib_web/download_render/utils/RenderStage;-><init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/lib_web/download_render/utils/RenderStage;Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;ILjava/lang/Object;)Lcom/transsion/lib_web/download_render/utils/RenderStage;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    goto :goto_2

    :cond_2
    move-wide v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    goto :goto_3

    :cond_3
    move/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-boolean v7, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    goto :goto_4

    :cond_4
    move/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-boolean v8, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    goto :goto_5

    :cond_5
    move/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p11

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-wide p3, v4

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/transsion/lib_web/download_render/utils/RenderStage;->copy(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;)Lcom/transsion/lib_web/download_render/utils/RenderStage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lcom/transsion/lib_web/download_render/utils/FileScoreData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    return-wide v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Lcom/transsion/lib_web/download_render/utils/FileScoreData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    return-object v0
.end method

.method public final component9()Lcom/transsion/lib_web/download_render/utils/FileScoreData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;)Lcom/transsion/lib_web/download_render/utils/RenderStage;
    .locals 13

    const-string v0, "url"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stage1"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stage2"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stage3"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/lib_web/download_render/utils/RenderStage;

    move-object v1, v0

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v12}, Lcom/transsion/lib_web/download_render/utils/RenderStage;-><init>(Ljava/lang/String;Ljava/lang/String;JZZZLjava/lang/String;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;

    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    iget-wide v5, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    iget-boolean v3, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    iget-boolean v3, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    iget-boolean v3, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    iget-object v3, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    iget-object v3, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    iget-object p1, p1, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final getNeedReport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    return v0
.end method

.method public final getRenderStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    return-wide v0
.end method

.method public final getRenderWithDownload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    return v0
.end method

.method public final getReported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    return v0
.end method

.method public final getSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

    return-object v0
.end method

.method public final getStage1()Lcom/transsion/lib_web/download_render/utils/FileScoreData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    return-object v0
.end method

.method public final getStage2()Lcom/transsion/lib_web/download_render/utils/FileScoreData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    return-object v0
.end method

.method public final getStage3()Lcom/transsion/lib_web/download_render/utils/FileScoreData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    invoke-static {v1, v2}, Landroidx/collection/s;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    invoke-virtual {v1}, Lcom/transsion/lib_web/download_render/utils/FileScoreData;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setNeedReport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    return-void
.end method

.method public final setRenderStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    return-void
.end method

.method public final setRenderWithDownload(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    return-void
.end method

.method public final setReported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    return-void
.end method

.method public final setSource(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

    return-void
.end method

.method public final setStage1(Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    return-void
.end method

.method public final setStage2(Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    return-void
.end method

.method public final setStage3(Lcom/transsion/lib_web/download_render/utils/FileScoreData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->url:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->source:Ljava/lang/String;

    iget-wide v2, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderStartTime:J

    iget-boolean v4, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->reported:Z

    iget-boolean v5, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->needReport:Z

    iget-boolean v6, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->renderWithDownload:Z

    iget-object v7, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->type:Ljava/lang/String;

    iget-object v8, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage1:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    iget-object v9, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage2:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    iget-object v10, p0, Lcom/transsion/lib_web/download_render/utils/RenderStage;->stage3:Lcom/transsion/lib_web/download_render/utils/FileScoreData;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RenderStage(url="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", source="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", renderStartTime="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", reported="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", needReport="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", renderWithDownload="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", stage1="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stage2="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stage3="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
