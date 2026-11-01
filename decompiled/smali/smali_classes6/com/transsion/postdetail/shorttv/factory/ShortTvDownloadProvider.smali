.class public final Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lqs/d;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private b:Lqs/m;

.field private c:Lqs/n;

.field private final d:Llj/m0;

.field private final e:Llj/s0;

.field private f:Lcom/transsion/baselib/db/download/DownloadBean;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/c;

    invoke-direct {v0}, Lcom/transsion/postdetail/shorttv/factory/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$a;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$a;-><init>(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;)V

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->d:Llj/m0;

    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$b;

    invoke-direct {v0, p0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$b;-><init>(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;)V

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->e:Llj/s0;

    return-void
.end method

.method public static synthetic m()Lcom/transsnet/downloader/manager/g;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->r()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic n(Lcom/transsion/shorttv/bean/DownloadItem;ILandroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->q(Lcom/transsion/shorttv/bean/DownloadItem;ILandroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public static final synthetic o(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;)Lqs/m;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->b:Lqs/m;

    return-object p0
.end method

.method public static final synthetic p(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;)Lqs/n;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->c:Lqs/n;

    return-object p0
.end method

.method private static final q(Lcom/transsion/shorttv/bean/DownloadItem;ILandroidx/fragment/app/FragmentActivity;)V
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/DownloadItem;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/shorttv/bean/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    sget-object p0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->k:Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$a;

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment$a;->a(I)Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/transsnet/downloader/view/DownloadingTipsDialogFragment;->O0(Lcom/transsion/baselib/db/download/DownloadBean;)V

    const-string p0, "DownloadingTipsDialogFragment"

    invoke-virtual {p1, p2, p0}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static final r()Lcom/transsnet/downloader/manager/g;
    .locals 2

    sget-object v0, Lcom/transsnet/downloader/manager/p;->a:Lcom/transsnet/downloader/manager/p$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    return-object v0
.end method

.method private final s()Lcom/transsnet/downloader/manager/g;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsnet/downloader/manager/g;

    return-object v0
.end method

.method private final t(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/shorttv/bean/ShortTVItem;
    .locals 26

    new-instance v10, Lcom/transsion/shorttv/bean/Video;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getVideoWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/transsion/shorttv/bean/Video;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    new-instance v17, Lcom/transsion/shorttv/bean/Media;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/transsion/shorttv/bean/Media;-><init>(Ljava/util/List;Lcom/transsion/shorttv/bean/Cover;Lcom/transsion/shorttv/bean/FirstFrame;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/transsion/shorttv/bean/Video;Ljava/util/List;)V

    new-instance v0, Lcom/transsion/shorttv/bean/ShortTVItem;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    move-result-wide v20

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v22

    const/16 v24, 0x4d0

    const/16 v25, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v25}, Lcom/transsion/shorttv/bean/ShortTVItem;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/transsion/shorttv/bean/Media;Lcom/transsion/shorttv/bean/Link;Ljava/lang/String;JIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private final u(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/shorttv/bean/Subject;
    .locals 80

    new-instance v0, Lcom/transsion/shorttv/bean/Cover;

    move-object/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0x1d7

    const/4 v11, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/transsion/shorttv/bean/Cover;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/GifBean;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectType()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getOps()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    move-result v48

    new-instance v1, Lcom/transsion/shorttv/bean/Subject;

    move-object v12, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const v78, 0x3ffffff7    # 1.9999989f

    const/16 v79, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const v77, -0x80018

    invoke-direct/range {v12 .. v79}, Lcom/transsion/shorttv/bean/Subject;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/shorttv/bean/SubjectDl;Ljava/util/List;Lcom/transsion/shorttv/bean/Cover;Lcom/transsion/shorttv/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/shorttv/bean/ShortTVItem;Lcom/transsion/shorttv/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/Integer;Lcom/transsion/shorttv/bean/PlayUrl;IILjava/util/List;ILcom/transsion/shorttv/bean/SkuInfo;ILjava/util/Set;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method private final v(Lcom/transsion/shorttv/bean/DownloadListBean;Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/DownloadItem;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 95

    new-instance v4, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v92, ""

    if-nez v0, :cond_0

    move-object/from16 v1, v92

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getResourceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object/from16 v2, v92

    goto :goto_1

    :cond_1
    move-object v2, v0

    :goto_1
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object/from16 v3, v92

    goto :goto_2

    :cond_2
    move-object v3, v0

    :goto_2
    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/Cover;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v93, v0

    goto :goto_4

    :cond_4
    :goto_3
    move-object/from16 v93, v92

    :goto_4
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getSize()Ljava/lang/Long;

    move-result-object v5

    const v90, 0xffff

    const/16 v91, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-wide/16 v45, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, -0x20

    const/16 v89, -0x1

    move-object v0, v4

    move-object/from16 v94, v4

    move-object/from16 v4, v93

    invoke-direct/range {v0 .. v91}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_6

    :cond_5
    :goto_5
    move-object/from16 v2, v94

    goto :goto_7

    :cond_6
    :goto_6
    if-eqz p1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getGenre()Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_7
    move-object v1, v0

    goto :goto_5

    :goto_7
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setGenre(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/transsion/baselib/db/download/DownloadBean;->setCreateAt(J)V

    if-eqz p2, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Cover;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_9
    move-object v1, v0

    :goto_8
    if-nez v1, :cond_a

    move-object/from16 v1, v92

    :cond_a
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setThumbnail(Ljava/lang/String;)V

    if-eqz p2, :cond_b

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getReleaseDate()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_c
    move-object v1, v0

    :cond_d
    :goto_9
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setReleaseDate(Ljava/lang/String;)V

    if-eqz p2, :cond_e

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getCountryName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_10

    :cond_e
    if-eqz p1, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getCountryName()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_f
    move-object v1, v0

    :cond_10
    :goto_a
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setCountryName(Ljava/lang/String;)V

    if-eqz p2, :cond_11

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getRestrictLevel()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_11
    move-object v1, v0

    :goto_b
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRestrictLevel(Ljava/lang/String;)V

    if-eqz p2, :cond_12

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getImdbRate()Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    :cond_12
    move-object v1, v0

    :goto_c
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setImdbRate(Ljava/lang/String;)V

    if-eqz p2, :cond_13

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getSeNum()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_d

    :cond_13
    move-object v1, v0

    :goto_d
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSeNum(Ljava/lang/Integer;)V

    if-eqz p2, :cond_14

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getSubtitles()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_14
    move-object v1, v0

    :goto_e
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubtitles(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getDuration()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    if-eqz p1, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getCover()Lcom/transsion/shorttv/bean/Cover;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/Cover;->getAverageHueLight()Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    :cond_15
    move-object v1, v0

    :goto_f
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setAverageHueLight(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getUploadBy()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_16

    move-object/from16 v1, v92

    :cond_16
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setUploadBy(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getPostId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPostId(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getEpse()Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_10

    :cond_17
    move v1, v3

    :goto_10
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setEpse(I)V

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getEp()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setEp(I)V

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getSe()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSe(I)V

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getResolution()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_18
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setResolution(I)V

    if-eqz p1, :cond_19

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_19
    move-object v1, v0

    :goto_11
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectId(Ljava/lang/String;)V

    if-eqz p1, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1c

    :cond_1a
    if-eqz p2, :cond_1b

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/shorttv/bean/Subject;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_1b
    move-object v1, v0

    :cond_1c
    :goto_12
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectName(Ljava/lang/String;)V

    move-object/from16 v1, p4

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPageFrom(Ljava/lang/String;)V

    move-object/from16 v1, p5

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setLastPageFrom(Ljava/lang/String;)V

    move-object/from16 v1, p3

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setOps(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getSourceUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    move-object/from16 v1, v92

    :cond_1d
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSourceUrl(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getTaskId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setTaskId(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Lcom/transsion/shorttv/bean/DownloadItem;->getRequireMemberType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setRequireMemberType(Ljava/lang/Integer;)V

    sget-object v1, Lcom/transsion/baselib/db/download/DownloadBean;->Companion:Lcom/transsion/baselib/db/download/DownloadBean$a;

    if-eqz p1, :cond_1e

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getSubjectType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_13

    :cond_1e
    move-object v3, v0

    :goto_13
    invoke-virtual {v1, v3}, Lcom/transsion/baselib/db/download/DownloadBean$a;->c(Ljava/lang/Integer;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setType(I)V

    if-eqz p1, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getSubjectType()I

    move-result v1

    goto :goto_14

    :cond_1f
    sget-object v1, Lcom/transsion/shorttv/bean/SubjectType;->SHORT_TV:Lcom/transsion/shorttv/bean/SubjectType;

    invoke-virtual {v1}, Lcom/transsion/shorttv/bean/SubjectType;->getValue()I

    move-result v1

    :goto_14
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectType(I)V

    if-eqz p1, :cond_20

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getDurationSeconds()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_15

    :cond_20
    move-object v1, v0

    :goto_15
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSubjectDurationSeconds(Ljava/lang/Integer;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_21

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getTotalEpisode()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_16

    :cond_21
    move v3, v1

    :goto_16
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setTotalEpisode(I)V

    if-eqz p1, :cond_22

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/shorttv/bean/DownloadListBean;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalEpisode()I

    move-result v3

    if-le v0, v3, :cond_23

    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setMultiresolution(I)V

    :cond_23
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->s()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/transsnet/downloader/manager/g;->a(Ljava/lang/String;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;

    iget v1, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;-><init>(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p2

    iput v3, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$fetchDownloadList$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->v(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/download/DownloadBean;

    invoke-direct {p0, v0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->t(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/shorttv/bean/ShortTVItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-object p1
.end method

.method public c()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->s()Lcom/transsnet/downloader/manager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->d:Llj/m0;

    invoke-interface {v0, v1}, Lcom/transsnet/downloader/manager/g;->x(Llj/m0;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->b:Lqs/m;

    return-void
.end method

.method public d(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->d0(Ljava/lang/String;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public e(J)Z
    .locals 5

    sget-object v0, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->i()V

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->t()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/blankj/utilcode/util/n;->j(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->s()Lcom/transsnet/downloader/manager/g;

    move-result-object v3

    invoke-interface {v3}, Lcom/transsnet/downloader/manager/g;->y()Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    add-long/2addr p1, v3

    cmp-long p1, p1, v0

    if-ltz p1, :cond_2

    sget-object p1, Luh/b;->a:Luh/b$a;

    sget p2, Lcom/transsion/baseui/R$string;->insufficient_storage_available:I

    invoke-virtual {p1, p2}, Luh/b$a;->d(I)V

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string p2, "--- \u53ef\u7528\u5b58\u50a8\u7a7a\u95f4\u4e0d\u8db3\uff0c\u91ca\u653e\u7a7a\u95f4\u5e76\u91cd\u8bd5 ---"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Llg/a$a;->o(Ljava/lang/String;Z)V

    return v0

    :catchall_0
    :cond_2
    return v2
.end method

.method public f(Lqs/m;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->b:Lqs/m;

    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->s()Lcom/transsnet/downloader/manager/g;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->d:Llj/m0;

    invoke-interface {p1, v0}, Lcom/transsnet/downloader/manager/g;->e(Llj/m0;)V

    return-void
.end method

.method public g(Ljava/lang/String;)Lcom/transsion/shorttv/bean/DownloadItem;
    .locals 18

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {v2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->q(Ljava/lang/String;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lcom/transsion/shorttv/bean/DownloadItem;

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_2
    move-object v3, v2

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTotalTitleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSize()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_0

    :cond_3
    const-wide/16 v6, 0x0

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getUploadBy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getPostId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    move-result v11

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    move-result v12

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getStatus()I

    move-result v13

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSourceUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lcom/transsion/shorttv/bean/DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;IIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getTaskId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {v1, v0}, Lcom/transsion/shorttv/bean/DownloadItem;->setTaskId(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-object v1
.end method

.method public h(Lcom/transsion/shorttv/bean/DownloadListBean;Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 9

    const-string v0, "list"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p6, Ljava/lang/Iterable;

    invoke-interface {p6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/transsion/shorttv/bean/DownloadItem;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->v(Lcom/transsion/shorttv/bean/DownloadListBean;Lcom/transsion/shorttv/bean/Subject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv/bean/DownloadItem;)Lcom/transsion/baselib/db/download/DownloadBean;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->f:Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz v2, :cond_0

    iput-object v1, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->f:Lcom/transsion/baselib/db/download/DownloadBean;

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->s()Lcom/transsnet/downloader/manager/g;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/transsnet/downloader/manager/g;->D(Ljava/util/List;)V

    return-void
.end method

.method public i(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/bean/DownloadItem;ILjava/lang/String;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatSize"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const p4, 0x1020002

    invoke-virtual {p1, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/FrameLayout;

    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/d;

    invoke-direct {v0, p2, p3, p1}, Lcom/transsion/postdetail/shorttv/factory/d;-><init>(Lcom/transsion/shorttv/bean/DownloadItem;ILandroidx/fragment/app/FragmentActivity;)V

    const-wide/16 p1, 0x12c

    invoke-virtual {p4, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public j(Lqs/n;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->c:Lqs/n;

    invoke-direct {p0}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->s()Lcom/transsnet/downloader/manager/g;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->e:Llj/s0;

    invoke-interface {p1, v0}, Lcom/transsnet/downloader/manager/g;->F(Llj/s0;)V

    return-void
.end method

.method public k(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;

    iget v1, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;

    invoke-direct {v0, p0, p2}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;-><init>(Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p2, Lcom/transsnet/downloader/manager/DownloadEsHelper;->m:Lcom/transsnet/downloader/manager/DownloadEsHelper$a;

    invoke-virtual {p2}, Lcom/transsnet/downloader/manager/DownloadEsHelper$a;->a()Lcom/transsnet/downloader/manager/DownloadEsHelper;

    move-result-object p2

    iput v3, v0, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider$getDownloadSubject$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/transsnet/downloader/manager/DownloadEsHelper;->v(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/baselib/db/download/DownloadBean;

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/shorttv/factory/ShortTvDownloadProvider;->u(Lcom/transsion/baselib/db/download/DownloadBean;)Lcom/transsion/shorttv/bean/Subject;

    move-result-object p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method

.method public l(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lqs/d$a;->a(Lqs/d;Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;I)V

    return-void
.end method
