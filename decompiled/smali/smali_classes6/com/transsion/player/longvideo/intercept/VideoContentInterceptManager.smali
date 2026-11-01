.class public final Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/player/longvideo/intercept/i0;

    invoke-direct {v0}, Lcom/transsion/player/longvideo/intercept/i0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->a:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic a()Lcom/transsion/baselib/db/video/PlaybackRecordDao;
    .locals 1

    invoke-static {}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->o()Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lho/j;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/ui/longvideo/a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->l(Lho/j;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/ui/longvideo/a;)V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;ILcom/transsion/baselib/db/video/PlaybackRecordTable;Lho/j;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/ui/longvideo/a;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->k(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;ILcom/transsion/baselib/db/video/PlaybackRecordTable;Lho/j;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/ui/longvideo/a;)V

    return-void
.end method

.method public static synthetic d(Lho/j;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/ui/longvideo/a;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->m(Lho/j;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/ui/longvideo/a;)V

    return-void
.end method

.method public static final synthetic e(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;)Lcom/transsion/baselib/db/video/PlaybackRecordDao;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->i()Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;Lgo/a;Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lho/j;Lcom/transsion/player/ui/longvideo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->j(Lgo/a;Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lho/j;Lcom/transsion/player/ui/longvideo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/player/longvideo/intercept/d;)V

    return-void
.end method

.method private final h()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final i()Lcom/transsion/baselib/db/video/PlaybackRecordDao;
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->a:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    return-object v0
.end method

.method private final j(Lgo/a;Lcom/transsion/baselib/db/video/PlaybackRecordTable;Lho/j;Lcom/transsion/player/ui/longvideo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 17

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v5, p6

    sget-object v0, Lcom/transsion/player/longvideo/intercept/h0;->a:Lcom/transsion/player/longvideo/intercept/h0;

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/transsion/player/longvideo/intercept/h0;->f(Lcom/transsion/moviedetailapi/bean/Subject;)Z

    move-result v2

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/transsion/player/longvideo/intercept/h0;->a(Lcom/transsion/moviedetailapi/bean/Subject;)I

    move-result v3

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->h()Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_2

    invoke-virtual/range {p1 .. p1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/transsion/moviedetailapi/bean/Subject;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object v9

    goto :goto_2

    :cond_2
    move-object v9, v1

    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " --> intercept() --> \u8d44\u6e90\u5185\u5bb9\u62e6\u622a --> isVipResource = "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " --> vipInfo = "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "premium_p"

    const/4 v11, 0x0

    move-object v8, v0

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v14, 0x0

    const/16 v15, 0x8

    const-wide/16 v12, 0xc8

    if-eqz v2, :cond_6

    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->getEp()I

    move-result v14

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_4

    invoke-virtual/range {p1 .. p1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Subject;->getVipInfo()Lcom/transsion/baselib/db/download/VipInfo;

    move-result-object v1

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> intercept() --> \u8d44\u6e90\u5185\u5bb9\u62e6\u622a --> vipInfo = "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " --> ep = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " --> freeEpisodeCount = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x4

    const/4 v2, 0x0

    const-string v9, "premium_p"

    const/4 v11, 0x0

    move-object v8, v0

    move v12, v1

    move-object v13, v2

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-gt v14, v3, :cond_5

    if-lez v14, :cond_5

    iget-object v8, v6, Lho/j;->n:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

    new-instance v9, Lcom/transsion/player/longvideo/intercept/j0;

    move-object v0, v9

    move-object/from16 v1, p0

    move v2, v3

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/transsion/player/longvideo/intercept/j0;-><init>(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;ILcom/transsion/baselib/db/video/PlaybackRecordTable;Lho/j;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/ui/longvideo/a;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v8, v9, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    :cond_5
    iget-object v0, v6, Lho/j;->n:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

    move-object/from16 v13, p5

    invoke-virtual {v0, v13, v4}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->onShowPremium(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;)V

    iget-object v0, v6, Lho/j;->o:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lti/n;->a:Lti/n;

    invoke-virtual {v0}, Lti/n;->b()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v2, 0x1

    const-string v3, "vip_intercept_auto"

    const/4 v5, 0x0

    move-object/from16 v1, p5

    invoke-static/range {v1 .. v7}, Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;->X(Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;ZLjava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto/16 :goto_6

    :cond_6
    move-wide v2, v12

    move-object/from16 v13, p5

    sget-object v8, Lcom/transsion/player/longvideo/intercept/e;->a:Lcom/transsion/player/longvideo/intercept/e;

    invoke-virtual {v8}, Lcom/transsion/player/longvideo/intercept/e;->c()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->h()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " --> intercept() --> \u4f7f\u7528\u6bcf\u65e5\u514d\u8d39\u6b21\u6570"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/16 v16, 0x0

    const-string v9, "premium_p"

    const/4 v11, 0x0

    move-object v8, v0

    move-object/from16 v13, v16

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    if-eqz v5, :cond_7

    invoke-interface/range {p6 .. p6}, Lcom/transsion/player/longvideo/intercept/d;->c()Lgo/b;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v1

    :goto_3
    sget-object v8, Lcom/transsnet/downloader/util/b0;->a:Lcom/transsnet/downloader/util/b0;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lgo/b;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object v0, v1

    :goto_4
    invoke-virtual {v8, v0}, Lcom/transsnet/downloader/util/b0;->a(Ljava/lang/String;)I

    move-result v0

    const-class v8, Lcom/transsion/memberapi/IPremiumApi;

    new-array v9, v14, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/transsion/memberapi/IPremiumApi;

    if-eqz v8, :cond_9

    invoke-interface {v8}, Lcom/transsion/memberapi/IPremiumApi;->t()I

    move-result v8

    goto :goto_5

    :cond_9
    const/16 v8, 0x2d0

    :goto_5
    if-lt v0, v8, :cond_b

    iget-object v0, v6, Lho/j;->n:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

    if-eqz v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v1

    :cond_a
    move-object v2, v1

    move-object/from16 v1, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->onShowResolutionRatio(Lcom/transsion/baselib/db/video/PlaybackRecordTable;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;Lcom/transsion/player/longvideo/intercept/d;)V

    iget-object v0, v6, Lho/j;->o:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_b
    iget-object v0, v6, Lho/j;->n:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

    new-instance v1, Lcom/transsion/player/longvideo/intercept/k0;

    invoke-direct {v1, v6, v5, v7}, Lcom/transsion/player/longvideo/intercept/k0;-><init>(Lho/j;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/ui/longvideo/a;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_c
    if-eqz p2, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->getRewardUnlock()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> intercept() --> \u5df2\u89e3\u9501"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v9, "premium_p"

    const/4 v11, 0x0

    move-object v8, v0

    invoke-static/range {v8 .. v13}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, v6, Lho/j;->n:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

    new-instance v1, Lcom/transsion/player/longvideo/intercept/l0;

    invoke-direct {v1, v6, v5, v7}, Lcom/transsion/player/longvideo/intercept/l0;-><init>(Lho/j;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/ui/longvideo/a;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_d
    iget-object v0, v6, Lho/j;->n:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

    if-eqz v4, :cond_e

    invoke-virtual/range {p1 .. p1}, Lgo/a;->m()Lcom/transsion/moviedetailapi/bean/Subject;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Subject;->getGenre()Ljava/lang/String;

    move-result-object v1

    :cond_e
    move-object v2, v1

    move-object/from16 v1, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;->onShowResolutionRatio(Lcom/transsion/baselib/db/video/PlaybackRecordTable;Ljava/lang/String;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lgo/a;Lcom/transsion/player/longvideo/intercept/d;)V

    iget-object v0, v6, Lho/j;->o:Lcom/transsion/player/longvideo/intercept/PlaybackPremiumTipView;

    invoke-virtual {v0, v15}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method private static final k(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;ILcom/transsion/baselib/db/video/PlaybackRecordTable;Lho/j;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/ui/longvideo/a;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;->h()Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/PlaybackRecordTable;->getEp()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " --> intercept() --> freeEpisodeCount = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " --> ep = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " --> \u5f53\u524d\u53ef\u4ee5\u514d\u8d39\u64ad\u653e"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "premium_p"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p0, p3, Lho/j;->n:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/transsion/player/longvideo/intercept/d;->d()V

    :cond_1
    if-eqz p5, :cond_2

    invoke-interface {p5}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_2
    return-void
.end method

.method private static final l(Lho/j;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/ui/longvideo/a;)V
    .locals 1

    iget-object p0, p0, Lho/j;->n:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/player/longvideo/intercept/d;->d()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/transsion/player/longvideo/intercept/d;->e()V

    :cond_2
    sget-object p0, Lcom/transsion/player/longvideo/intercept/e;->a:Lcom/transsion/player/longvideo/intercept/e;

    invoke-virtual {p0}, Lcom/transsion/player/longvideo/intercept/e;->a()V

    return-void
.end method

.method private static final m(Lho/j;Lcom/transsion/player/longvideo/intercept/d;Lcom/transsion/player/ui/longvideo/a;)V
    .locals 1

    iget-object p0, p0, Lho/j;->n:Lcom/transsion/player/longvideo/intercept/VideoContentInterceptView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/transsion/player/longvideo/intercept/d;->d()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_1
    return-void
.end method

.method private static final o()Lcom/transsion/baselib/db/video/PlaybackRecordDao;
    .locals 3

    sget-object v0, Lcom/transsion/baselib/db/AppDatabase;->p:Lcom/transsion/baselib/db/AppDatabase$g1;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/transsion/baselib/db/AppDatabase$g1;->b(Landroid/content/Context;)Lcom/transsion/baselib/db/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/baselib/db/AppDatabase;->v1()Lcom/transsion/baselib/db/video/PlaybackRecordDao;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final n(Lgo/a;Lho/j;Lcom/transsion/player/ui/longvideo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/player/longvideo/intercept/d;)V
    .locals 11

    const-string v0, "viewBinding"

    move-object v5, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interceptionManager"

    move-object v7, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lho/j;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v10, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;

    const/4 v9, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v9}, Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager$intercept$1$1;-><init>(Lcom/transsion/player/longvideo/intercept/VideoContentInterceptManager;Lgo/a;Lgo/a;Lho/j;Lcom/transsion/player/ui/longvideo/a;Lcom/transsion/player/longvideo/intercept/PlaybackInterceptionManager;Lcom/transsion/player/longvideo/intercept/d;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, v0

    move-object v4, v10

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    return-void
.end method
