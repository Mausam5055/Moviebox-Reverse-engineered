.class public final Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:I

.field private final c:Lcom/transsion/home/bean/OperateItem;

.field private final d:I

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/transsion/home/bean/OperateItem;II)V
    .locals 1

    const-string v0, "banners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operateItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->a:Ljava/util/List;

    iput p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->c:Lcom/transsion/home/bean/OperateItem;

    iput p4, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->d:I

    iput p5, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->e:I

    return-void
.end method

.method public static synthetic g(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->l(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;Landroid/content/Context;ILandroid/view/View;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->m(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;Landroid/content/Context;ILandroid/view/View;)V

    return-void
.end method

.method private final i(Lcom/transsion/home/bean/BannerData;)Lcom/transsion/moviedetailapi/bean/Subject;
    .locals 66

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/transsion/moviedetailapi/bean/Subject;

    move-object v1, v0

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/BannerData;->getSubjectType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/BannerData;->getSeenStatus()Ljava/lang/Integer;

    move-result-object v17

    const v64, 0x7ffffff

    const/16 v65, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

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

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

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

    const v63, -0x8004

    invoke-direct/range {v1 .. v65}, Lcom/transsion/moviedetailapi/bean/Subject;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/SubjectDl;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/moviedetailapi/bean/ShortTVItem;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILcom/transsion/moviedetailapi/bean/SubjectGameInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/LayoutStyle;Lcom/transsion/moviedetailapi/bean/PlayUrl;Ljava/lang/Boolean;Lcom/transsion/baselib/db/download/VipInfo;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method private static final l(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;ILandroid/view/View;)V
    .locals 7

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getDeepLink()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    sget-object v0, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getOps()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&module_name=opt_banner_free&autoPlay=true&ops="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/transsion/baselib/helper/b;->g(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-static {p3}, Lds/c;->j(Landroid/net/Uri;)V

    :cond_0
    sget-object p3, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {p3}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->x0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-string p3, "play_subject"

    goto :goto_0

    :cond_1
    const-string p3, "download_subject"

    :goto_0
    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->p(Lcom/transsion/home/bean/BannerData;ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method private static final m(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;Landroid/content/Context;ILandroid/view/View;)V
    .locals 70

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->f()Lcom/transsnet/downloader/widget/DownloadView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsnet/downloader/widget/DownloadView;->getShowType()I

    move-result v2

    const/4 v3, 0x2

    const-string v4, "opt_rank_list"

    if-eq v2, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->f()Lcom/transsnet/downloader/widget/DownloadView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsnet/downloader/widget/DownloadView;->getShowType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v3, v1, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    invoke-virtual {v2, v3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/moviedetailapi/bean/Subject;

    if-eqz v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v6, v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :goto_1
    const v68, 0x7ffffff

    const/16 v69, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

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

    const/16 v32, 0x0

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

    const-wide/16 v44, 0x0

    const/16 v46, 0x0

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

    const/16 v67, -0x2

    move-object v5, v3

    invoke-direct/range {v5 .. v69}, Lcom/transsion/moviedetailapi/bean/Subject;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/SubjectDl;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Trailer;ZZLcom/transsion/ad/bidding/nativead/BiddingNativeManager;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZZLcom/transsion/moviedetailapi/bean/ShortTVItem;Lcom/transsion/moviedetailapi/bean/ShortTVFavInfo;IZZJLjava/lang/String;Ljava/util/List;JLjava/util/List;IZLjava/lang/Integer;ILcom/transsion/moviedetailapi/bean/SubjectGameInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/Integer;Lcom/transsion/moviedetailapi/bean/LayoutStyle;Lcom/transsion/moviedetailapi/bean/PlayUrl;Ljava/lang/Boolean;Lcom/transsion/baselib/db/download/VipInfo;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static/range {p3 .. p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object/from16 v5, p3

    invoke-static {v3, v2, v5, v4}, Lrl/h;->g(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v3, p4

    invoke-direct {v1, v0, v3, v2}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->o(Lcom/transsion/home/bean/BannerData;ILjava/lang/String;)V

    return-void

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    sget-object v2, Lcom/transsion/edcation/CourseManager;->a:Lcom/transsion/edcation/CourseManager;

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/transsion/home/bean/BannerData;->getSeenStatus()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/transsion/edcation/CourseManager;->w(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-direct {v1, v0}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->i(Lcom/transsion/home/bean/BannerData;)Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v0

    sget-object v2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v1, v1, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    invoke-virtual {v2, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lwk/a;->b(Lcom/transsion/moviedetailapi/bean/Subject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final o(Lcom/transsion/home/bean/BannerData;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "click_banner"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sequence"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "module_name"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "tabId"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lil/b;->c(Lcom/transsion/home/bean/BannerData;Ljava/util/Map;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->c:Lcom/transsion/home/bean/OperateItem;

    invoke-static {p1, v0}, Lil/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final p(Lcom/transsion/home/bean/BannerData;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "click_banner_poster"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sequence"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "module_name"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "tabId"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lil/b;->c(Lcom/transsion/home/bean/BannerData;Ljava/util/Map;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->c:Lcom/transsion/home/bean/OperateItem;

    invoke-static {p1, v0}, Lil/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final q(Lcom/transsion/home/bean/BannerData;Lcom/transsnet/downloader/widget/DownloadView;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getHasResource()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    iget v3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Ljg/c;->k(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getHasResource()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {p2}, Ljg/c;->k(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Ljg/c;->g(Landroid/view/View;)V

    :goto_2
    sget-object v1, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    iget v3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lak/t;->a:Lak/t;

    invoke-virtual {v1}, Lak/t;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getSubjectType()I

    move-result v1

    sget-object v3, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_4

    move v0, v2

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p2}, Lcom/transsnet/downloader/widget/DownloadView;->setShowPlayType()V

    goto :goto_6

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    :goto_3
    move-object v1, p1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    goto :goto_3

    :goto_4
    sget v5, Lcom/tn/lib/widget/R$string;->download_now:I

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v7}, Lcom/transsnet/downloader/widget/DownloadView;->setShowType$default(Lcom/transsnet/downloader/widget/DownloadView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;ZIILjava/lang/Object;)V

    goto :goto_6

    :cond_7
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getSeenStatus()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_9

    move v0, v2

    :cond_9
    :goto_5
    if-eqz v0, :cond_a

    invoke-virtual {p2}, Lcom/transsnet/downloader/widget/DownloadView;->setCourseAdded()V

    goto :goto_6

    :cond_a
    invoke-virtual {p2}, Lcom/transsnet/downloader/widget/DownloadView;->setAddCourse()V

    :goto_6
    return-void
.end method

.method private final r(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;I)V
    .locals 3

    sget-object v0, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/transsion/home/enum/HomeTabId$a;->h(Ljava/lang/Integer;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-ne p2, v2, :cond_1

    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->f()Lcom/transsnet/downloader/widget/DownloadView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsnet/downloader/widget/DownloadView;->setCourseAdded()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->f()Lcom/transsnet/downloader/widget/DownloadView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsnet/downloader/widget/DownloadView;->setAddCourse()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public j(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;I)V
    .locals 12

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, p2, v0

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/transsion/home/bean/BannerData;

    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->e:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const-string v0, ""

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/home/bean/BannerData;->getBuiltIn()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-static {v1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v6

    new-instance v9, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$onBindViewHolder$1;

    const/4 v1, 0x0

    invoke-direct {v9, v3, p1, v1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$onBindViewHolder$1;-><init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_0
    sget-object v1, Lej/f;->a:Lej/f$a;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move-object v2, v0

    :cond_2
    invoke-virtual {v1, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    iget v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->d:I

    invoke-virtual {v1, v2}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v1

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    :cond_3
    move-object v2, v0

    :cond_4
    invoke-virtual {v1, v2}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->g()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/transsion/home/bean/BannerData;->getContent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object v0, v2

    :cond_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->f()Lcom/transsnet/downloader/widget/DownloadView;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->q(Lcom/transsion/home/bean/BannerData;Lcom/transsnet/downloader/widget/DownloadView;)V

    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/transsion/home/adapter/suboperate/adapter/l;

    invoke-direct {v1, v3, p0, p2}, Lcom/transsion/home/adapter/suboperate/adapter/l;-><init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;->f()Lcom/transsnet/downloader/widget/DownloadView;

    move-result-object v0

    new-instance v7, Lcom/transsion/home/adapter/suboperate/adapter/m;

    move-object v1, v7

    move-object v2, p1

    move-object v4, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/home/adapter/suboperate/adapter/m;-><init>(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;Landroid/content/Context;I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public k(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;ILjava/util/List;)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    instance-of p3, p2, Ljava/lang/Integer;

    if-eqz p3, :cond_0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->r(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->j(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;I)V

    return-void
.end method

.method public n(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/home/R$layout;->item_sub_horizontal_view_pager:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->j(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->k(Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;ILjava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter;->n(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/suboperate/adapter/SubHorizontalViewPagerAdapter$a;

    move-result-object p1

    return-object p1
.end method
