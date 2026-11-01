.class public final Ltv/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltv/e$a;,
        Ltv/e$b;
    }
.end annotation


# static fields
.field public static final d:Ltv/e$a;


# instance fields
.field private final a:Ltv/e$b;

.field private final b:Lkotlin/Lazy;

.field private final c:Landroidx/lifecycle/c0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltv/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltv/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltv/e;->d:Ltv/e$a;

    return-void
.end method

.method public constructor <init>(Ltv/e$b;)V
    .locals 1

    const-string v0, "host"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/e;->a:Ltv/e$b;

    new-instance p1, Ltv/b;

    invoke-direct {p1}, Ltv/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Ltv/e;->b:Lkotlin/Lazy;

    new-instance p1, Ltv/c;

    invoke-direct {p1, p0}, Ltv/c;-><init>(Ltv/e;)V

    iput-object p1, p0, Ltv/e;->c:Landroidx/lifecycle/c0;

    return-void
.end method

.method public static synthetic a(Ltv/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Ltv/e;->m(Ltv/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ltv/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;)V
    .locals 0

    invoke-static {p0, p1}, Ltv/e;->g(Ltv/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;)V

    return-void
.end method

.method public static synthetic c()Lcom/transsnet/downloader/manager/StartDownloadHelper;
    .locals 1

    invoke-static {}, Ltv/e;->n()Lcom/transsnet/downloader/manager/StartDownloadHelper;

    move-result-object v0

    return-object v0
.end method

.method private final d(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 96

    sget-object v0, Lhj/i;->a:Lhj/i;

    invoke-virtual {v0}, Lhj/i;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResource()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;

    move-result-object v1

    const-string v93, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move-object/from16 v2, v93

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResource()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;

    move-result-object v1

    const/16 v94, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;->getId()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_2

    :cond_2
    move-object/from16 v3, v94

    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    :cond_3
    move-object v4, v1

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_3

    :cond_4
    move-object/from16 v5, v94

    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResource()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;->getSize()Ljava/lang/Long;

    move-result-object v1

    move-object v6, v1

    goto :goto_4

    :cond_5
    move-object/from16 v6, v94

    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCover()Lcom/transsion/moviedetailapi/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v53, v1

    goto :goto_5

    :cond_6
    move-object/from16 v53, v94

    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResource()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;->getResolutions()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_6
    move/from16 v25, v1

    goto :goto_7

    :cond_7
    const/4 v1, 0x0

    goto :goto_6

    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResource()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;->getDuration()J

    move-result-wide v7

    goto :goto_8

    :cond_8
    const-wide/16 v7, 0x0

    :goto_8
    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResource()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;->getIdType()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v71, v1

    goto :goto_9

    :cond_9
    move-object/from16 v71, v94

    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v73

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    move-result v1

    :goto_a
    move v9, v1

    goto :goto_b

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->videoUGCPosition()I

    move-result v1

    goto :goto_a

    :goto_b
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v72, v1

    goto :goto_c

    :cond_b
    move-object/from16 v72, v94

    :goto_c
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    :cond_c
    move-object/from16 v74, v1

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v1

    :cond_d
    move-object/from16 v77, v1

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    move-result-object v62

    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getVideoStyle()Ljava/lang/String;

    move-result-object v1

    sget-object v10, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO:Lcom/transsion/ugcvideodetail/api/UGCPageStyle;

    invoke-virtual {v10}, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v86

    new-instance v15, Lcom/transsion/baselib/db/download/DownloadBean;

    move-object v1, v15

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v76

    const v91, 0xd1e0

    const/16 v92, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v95, v15

    move/from16 v15, v16

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v35, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const-wide/16 v42, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const-wide/16 v46, 0x0

    const/16 v48, 0x0

    const-wide/16 v49, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v85, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const v89, -0x38100120

    const v90, 0x3fdfeffd

    const-string v32, ""

    const-string v75, ""

    move-object/from16 v33, p4

    move-object/from16 v34, v0

    move-object/from16 v82, p5

    move-object/from16 v83, p6

    move-object/from16 v84, p7

    invoke-direct/range {v1 .. v92}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v95

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setTaskId(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;->getResource()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownloadResource;->getIdType()Ljava/lang/String;

    move-result-object v94

    :cond_e
    move-object/from16 v1, v94

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitleIdType(Ljava/lang/String;)V

    if-nez v0, :cond_f

    move-object/from16 v13, v93

    goto :goto_d

    :cond_f
    move-object v13, v0

    :goto_d
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getTaskId()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p4

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v16}, Ltv/e;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UGC\u89c6\u9891\uff0c\u5f00\u59cb\u4e0b\u8f7d:  resourceId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    const-string v4, "download"

    invoke-virtual {v0, v4, v1, v3}, Llg/a$a;->p(Ljava/lang/String;[Ljava/lang/String;Z)V

    return-object v2
.end method

.method private static final g(Ltv/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;)V
    .locals 11

    iget-object v0, p0, Ltv/e;->a:Ltv/e$b;

    invoke-interface {v0}, Ltv/e$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getUgcVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v4

    if-nez v4, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    sget-object v5, Llg/a;->a:Llg/a$a;

    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5355\u89c6\u9891\u76f4\u63a5\u4e0b\u8f7d\uff0c\u5df2\u83b7\u53d6\u6570\u636e\u6267\u884c\u4e0b\u8f7d\uff0c ugcVideoId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", category:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x4

    const/4 v10, 0x0

    const-string v6, "UGCImmVideoDownload"

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    if-nez p1, :cond_4

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/transsnet/downloader/R$string;->notification_download_failed:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    goto :goto_4

    :cond_4
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Ltv/e;->a:Ltv/e$b;

    invoke-interface {v0}, Ltv/e$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const-string v5, "/ugc_video/immersive_detail"

    iget-object v0, p0, Ltv/e;->a:Ltv/e$b;

    invoke-interface {v0}, Ltv/e$b;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Ltv/e;->a:Ltv/e$b;

    invoke-interface {v0}, Ltv/e$b;->g()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Ltv/e;->a:Ltv/e$b;

    invoke-interface {v0}, Ltv/e$b;->e()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v8}, Ltv/e;->e(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_6
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_7
    :goto_4
    return-void
.end method

.method private final h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;)V
    .locals 14

    const-string v0, "page_from"

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const-string v1, "ops"

    move-object/from16 v2, p4

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resource_id"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const-string v4, "task_id"

    move-object/from16 v5, p5

    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const-string v5, "refer_subject_id"

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    const-string v6, "content_id"

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    const-string v7, "belong_to_collection_id"

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoCollectionId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    const-string v8, "category_type"

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v8

    const-string v9, "video_track_id"

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoTrackId()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    const-string v10, "video_parent_content_id"

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoParentVideoId()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v10

    const-string v11, "video_parent_video_track_id"

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getUgcVideoParentTrackId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v11

    const/16 v12, 0xb

    new-array v12, v12, [Lkotlin/Pair;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v0, 0x2

    aput-object v2, v12, v0

    const/4 v0, 0x3

    aput-object v4, v12, v0

    const/4 v0, 0x4

    aput-object v5, v12, v0

    const/4 v0, 0x5

    aput-object v6, v12, v0

    const/4 v0, 0x6

    aput-object v7, v12, v0

    const/4 v0, 0x7

    aput-object v8, v12, v0

    const/16 v0, 0x8

    aput-object v9, v12, v0

    const/16 v0, 0x9

    aput-object v10, v12, v0

    const/16 v0, 0xa

    aput-object v11, v12, v0

    invoke-static {v12}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lhj/i;->a:Lhj/i;

    const-string v2, "download_click"

    if-eqz p2, :cond_1

    invoke-static/range {p2 .. p2}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v4, p2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_2

    :cond_1
    move-object v4, v2

    :cond_2
    invoke-virtual {v1, v4, v2, v0}, Lhj/i;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/transsion/baselib/report/e;->a:Lcom/transsion/baselib/report/e;

    move-object v3, p1

    invoke-virtual {v1, v2, v0, p1}, Lcom/transsion/baselib/report/e;->l(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    return-void
.end method

.method private final i()Lcom/transsnet/downloader/manager/StartDownloadHelper;
    .locals 1

    iget-object v0, p0, Ltv/e;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/manager/StartDownloadHelper;

    return-object v0
.end method

.method private static final m(Ltv/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;ILjava/lang/String;Lcom/transsion/baselib/db/download/DownloadBean;Z)Lkotlin/Unit;
    .locals 0

    const-string p2, "formatSize"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "downloadBean"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltv/e;->a:Ltv/e$b;

    invoke-interface {p0}, Ltv/e$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->c1(Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final n()Lcom/transsnet/downloader/manager/StartDownloadHelper;
    .locals 1

    new-instance v0, Lcom/transsnet/downloader/manager/StartDownloadHelper;

    invoke-direct {v0}, Lcom/transsnet/downloader/manager/StartDownloadHelper;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final e(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ugcVideo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageFrom"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "trackId"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Ltv/e;->d(Landroid/content/Context;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDownload;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p1

    sget-object p2, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/transsnet/downloader/manager/g;->p(Lcom/transsion/baselib/db/download/DownloadBean;)V

    invoke-direct {p0}, Ltv/e;->i()Lcom/transsnet/downloader/manager/StartDownloadHelper;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Lcom/transsion/baselib/db/download/DownloadBean;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/transsnet/downloader/manager/StartDownloadHelper;->f(Ljava/util/List;)V

    sget-object p2, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {p2}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    move-result v3

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    move-result v4

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isMultiresolution()Z

    move-result v5

    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isMultiresolution()Z

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->T(Ljava/lang/String;Ljava/lang/String;ZIZZ)V

    return-void
.end method

.method public final f(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ltv/i;)V
    .locals 12

    const-string v0, "video"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltv/e;->a:Ltv/e$b;

    invoke-interface {v0}, Ltv/e$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getPlayInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getResources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/e;->a:Ltv/e$b;

    invoke-interface {v0}, Ltv/e$b;->getData()Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getDownloadStatus()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    :cond_0
    iget-object v0, p0, Ltv/e;->a:Ltv/e$b;

    invoke-interface {v0}, Ltv/e$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Ltv/e;->a:Ltv/e$b;

    invoke-interface {v3}, Ltv/e$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v7, v3

    goto :goto_0

    :cond_2
    move-object v7, v2

    :goto_0
    const/16 v10, 0x18

    const/4 v11, 0x0

    const-string v5, "downloaded"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p2

    move-object v6, p1

    invoke-static/range {v4 .. v11}, Ltv/i;->b(Ltv/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    const-string p1, "/download/ugc_my_downloads"

    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    move-result-object p1

    const-string p2, "main_tab_index"

    invoke-virtual {p1, p2, v1}, Lcom/therouter/router/Navigator;->F(Ljava/lang/String;I)Lcom/therouter/router/Navigator;

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, v0, v2, p2, v2}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lbg/c;ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget p2, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p1, p2}, Luh/b$a;->d(I)V

    return-void

    :cond_5
    iget-object v0, p0, Ltv/e;->a:Ltv/e$b;

    invoke-interface {v0}, Ltv/e$b;->b()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->Y0()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_6
    move-object v6, v2

    const/16 v9, 0x18

    const/4 v10, 0x0

    const-string v4, "download"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p2

    move-object v5, p1

    invoke-static/range {v3 .. v10}, Ltv/i;->b(Ltv/i;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_8

    iget-object v0, p0, Ltv/e;->a:Ltv/e$b;

    invoke-interface {v0, v1}, Ltv/e$b;->a(Z)V

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5355\u89c6\u9891\u76f4\u63a5\u4e0b\u8f7d\uff0c\u70b9\u51fb\u53bb\u8bf7\u6c42\u4e0b\u8f7d\u6570\u636e--\uff0c ugcVideoId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "UGCImmVideoDownload"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Ltv/e;->a:Ltv/e$b;

    invoke-interface {p1}, Ltv/e$b;->f()Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;->H(Ljava/lang/String;)V

    :cond_7
    iget-object p1, p0, Ltv/e;->a:Ltv/e$b;

    invoke-interface {p1}, Ltv/e$b;->c()Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, p2}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;->c1(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public final j(Landroidx/lifecycle/u;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ltv/e;->a:Ltv/e$b;

    invoke-interface {v0}, Ltv/e$b;->f()Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;->z()Landroidx/lifecycle/LiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Ltv/e;->c:Landroidx/lifecycle/c0;

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    :cond_0
    return-void
.end method

.method public final k(Landroidx/lifecycle/u;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Ltv/e;->a:Ltv/e$b;

    invoke-interface {p1}, Ltv/e$b;->f()Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;->z()Landroidx/lifecycle/LiveData;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ltv/e;->c:Landroidx/lifecycle/c0;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->o(Landroidx/lifecycle/c0;)V

    :cond_0
    return-void
.end method

.method public final l(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p2

    const-string v1, "activity"

    move-object/from16 v3, p1

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "video"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "trackId"

    move-object/from16 v11, p3

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {v1}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionName()Ljava/lang/String;

    move-result-object v4

    :cond_1
    move-object v6, v4

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getVideoStyle()Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->UGC_PAGE_STYLE_IMM_VERTICAL_VIDEO:Lcom/transsion/ugcvideodetail/api/UGCPageStyle;

    invoke-virtual {v8}, Lcom/transsion/ugcvideodetail/api/UGCPageStyle;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    new-instance v15, Ltv/d;

    move-object/from16 v13, p0

    invoke-direct {v15, v13, v0}, Ltv/d;-><init>(Ltv/e;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    const-string v8, "/ugc_video/immersive_detail"

    move-object/from16 v3, p1

    move-object v4, v1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-virtual/range {v2 .. v15}, Lcom/transsnet/downloader/DownloadManagerApi;->f0(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function4;)V

    return-void
.end method
