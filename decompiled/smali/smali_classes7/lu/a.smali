.class public final Llu/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Llu/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Llu/a;

    invoke-direct {v0}, Llu/a;-><init>()V

    sput-object v0, Llu/a;->a:Llu/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Lcom/transsion/subtitle_download/bean/SubtitleItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;
    .locals 31

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getLan()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getLanName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getSize()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getDelay()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getDownloads()Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getType()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    move v12, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :goto_2
    if-nez p2, :cond_2

    move-object v5, v1

    goto :goto_3

    :cond_2
    move-object/from16 v5, p2

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getEpisode()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v16, v0

    goto :goto_4

    :cond_3
    move/from16 v16, p6

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/subtitle_download/bean/SubtitleItem;->getSeason()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move/from16 v17, v0

    goto :goto_5

    :cond_4
    move/from16 v17, p7

    :goto_5
    new-instance v0, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-object v2, v0

    const/high16 v29, 0x740000

    const/16 v30, 0x0

    const-string v13, ""

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, ""

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v4, p5

    move-object/from16 v15, p3

    move-object/from16 v19, p4

    move-object/from16 v26, p8

    move-object/from16 v27, p9

    move-object/from16 v28, p10

    invoke-direct/range {v2 .. v30}, Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILcom/transsion/subtitle_download/bean/SubtitleItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;
    .locals 12

    const-string v0, "subtitleItem"

    move-object/from16 v2, p7

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Llu/a;->a(Lcom/transsion/subtitle_download/bean/SubtitleItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;

    move-result-object v0

    return-object v0
.end method
