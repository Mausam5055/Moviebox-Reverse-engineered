.class public final Lcom/transsion/postdetail/shorttv_pugc/factory/f;
.super Ljava/lang/Object;

# interfaces
.implements Lst/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic i(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/shorttv_pugc/factory/f;->k(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final j(Lot/d;)Lpx/a;
    .locals 43

    new-instance v10, Lpx/a;

    invoke-virtual/range {p1 .. p1}, Lot/d;->g()Lcom/transsion/player/ui/ORPlayerView;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lot/d;->c()Lcom/transsion/player/orplayer/g;

    move-result-object v2

    sget-object v4, Lcom/transsion/videofloat/bean/FloatPlayType;->SHORT_TV:Lcom/transsion/videofloat/bean/FloatPlayType;

    invoke-virtual/range {p1 .. p1}, Lot/d;->a()I

    move-result v7

    const-string v8, ""

    invoke-virtual/range {p1 .. p1}, Lot/d;->e()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    const-string v5, ""

    const/4 v6, -0x1

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lpx/a;-><init>(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/player/orplayer/g;Landroid/view/ViewGroup;Lcom/transsion/videofloat/bean/FloatPlayType;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Lpx/a;->J(Ljava/lang/Integer;)V

    invoke-virtual/range {p1 .. p1}, Lot/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lpx/a;->A(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lot/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lpx/a;->B(Ljava/lang/String;)V

    new-instance v26, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getCollectionId()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, v9

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getCollectionName()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_1
    move-object v3, v9

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getVideoNum()Ljava/lang/Integer;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    :cond_2
    move-object v4, v9

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getBelongToCollection()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideoCollection;->getPosition()Ljava/lang/Integer;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    :cond_3
    move-object v5, v9

    :goto_3
    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, v26

    invoke-direct/range {v1 .. v8}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    goto :goto_4

    :cond_4
    move-object v12, v9

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    goto :goto_5

    :cond_5
    move-object v13, v9

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getDescription()Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    goto :goto_6

    :cond_6
    move-object v14, v9

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCorner()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v1

    goto :goto_7

    :cond_7
    move-object/from16 v18, v9

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getDuration()Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v19, v1

    goto :goto_8

    :cond_8
    move-object/from16 v19, v9

    :goto_8
    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getWatchNum()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_9

    :cond_9
    move-object/from16 v20, v9

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getReleaseDate()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_a

    :cond_a
    move-object/from16 v21, v9

    :goto_a
    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getPublishTime()Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v22, v1

    goto :goto_b

    :cond_b
    move-object/from16 v22, v9

    :goto_b
    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCategory()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v23, v1

    goto :goto_c

    :cond_c
    move-object/from16 v23, v9

    :goto_c
    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getOps()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v1

    goto :goto_d

    :cond_d
    move-object/from16 v27, v9

    :goto_d
    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v1

    goto :goto_e

    :cond_e
    move-object/from16 v28, v9

    :goto_e
    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getCountry()Ljava/util/List;

    move-result-object v1

    move-object/from16 v29, v1

    goto :goto_f

    :cond_f
    move-object/from16 v29, v9

    :goto_f
    invoke-virtual/range {p1 .. p1}, Lot/d;->h()Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;->getRestrictKid()I

    move-result v1

    :goto_10
    move/from16 v35, v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    goto :goto_10

    :goto_11
    const v41, 0x1f7c3038

    const/16 v42, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v42}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/moviedetailapi/bean/Cover;Lcom/transsion/moviedetailapi/bean/Cover;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCreator;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoDescImage;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;IZLcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoCategory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v10, v0}, Lpx/a;->L(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V

    return-object v10
.end method

.method private static final k(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/fragment/app/FragmentActivity;ZZLandroid/view/ViewGroup;)V
    .locals 3

    const-string p2, "activity"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lox/e;->a:Lox/e$a;

    invoke-virtual {p2}, Lox/e$a;->b()Lox/e;

    move-result-object v0

    invoke-interface {v0}, Lox/e;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "k_pip_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lox/e$a;->b()Lox/e;

    move-result-object p2

    invoke-interface {p2, p1, v2, p3, p4}, Lox/e;->a(Landroidx/fragment/app/FragmentActivity;ZZLandroid/view/ViewGroup;)Landroid/app/PictureInPictureParams;

    return-void
.end method

.method public b(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ugcVideoId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lox/b;->a:Lox/b$a;

    invoke-virtual {v0}, Lox/b$a;->c()Lox/b;

    move-result-object v1

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lox/b;->e(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 4

    sget-object v0, Lox/b;->a:Lox/b$a;

    invoke-virtual {v0}, Lox/b$a;->c()Lox/b;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lox/b$b;->a(Lox/b;ZILjava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Lcom/transsion/player/orplayer/g;
    .locals 2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/transsion/videofloat/manager/a0;->a:Lcom/transsion/videofloat/manager/a0;

    sget-object v1, Lcom/transsion/postdetail/util/UGCShortTVFloatManager;->b:Lcom/transsion/postdetail/util/UGCShortTVFloatManager;

    invoke-virtual {v1, p1}, Lcom/transsion/postdetail/util/UGCShortTVFloatManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/videofloat/manager/a0;->b(Ljava/lang/String;)Lcom/transsion/player/orplayer/g;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public e(Lcom/transsion/player/orplayer/g;)Z
    .locals 1

    sget-object v0, Lcom/transsion/videofloat/manager/a0;->a:Lcom/transsion/videofloat/manager/a0;

    invoke-virtual {v0, p1}, Lcom/transsion/videofloat/manager/a0;->c(Lcom/transsion/player/orplayer/g;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/transsion/player/orplayer/g;)Z
    .locals 1

    sget-object v0, Lox/c;->a:Lox/c;

    invoke-virtual {v0, p1}, Lox/c;->c(Lcom/transsion/player/orplayer/g;)Z

    move-result p1

    return p1
.end method

.method public g(ZLandroidx/fragment/app/FragmentActivity;Lot/d;)V
    .locals 2

    const-string v0, "bean"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/transsion/postdetail/shorttv_pugc/factory/f;->j(Lot/d;)Lpx/a;

    move-result-object p3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    sget-object v0, Lox/e;->a:Lox/e$a;

    invoke-virtual {v0}, Lox/e$a;->b()Lox/e;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lox/e;->h(Landroidx/fragment/app/FragmentActivity;Lpx/a;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    sget-object p2, Lox/e;->a:Lox/e$a;

    invoke-virtual {p2}, Lox/e$a;->b()Lox/e;

    move-result-object p2

    invoke-interface {p2, p1}, Lox/e;->onPipModeChanged(Z)V

    return-void
.end method

.method public h(Landroidx/fragment/app/FragmentActivity;Lot/d;)V
    .locals 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/transsion/postdetail/shorttv_pugc/factory/f;->j(Lot/d;)Lpx/a;

    move-result-object v3

    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "k_pip_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Llg/a;->a:Llg/a$a;

    const-string p2, "VideoFloat"

    const-string v0, "shottv \u8bbe\u7f6e\u9875pip\u5f00\u5173\u88ab\u5173\u95ed\u4e86"

    invoke-virtual {p1, p2, v0, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    sget-object v0, Lox/e;->a:Lox/e$a;

    invoke-virtual {v0}, Lox/e$a;->b()Lox/e;

    move-result-object v1

    invoke-interface {v1}, Lox/e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p2, Llg/a;->a:Llg/a$a;

    const-string v1, "VideoFloat-pip"

    const-string v4, "shottv \u5f53\u524d\u53ef\u7528\u753b\u4e2d\u753b\uff0c\u4f7f\u7528\u753b\u4e2d\u753b\u64ad\u653e"

    invoke-virtual {p2, v1, v4, v2}, Llg/a$a;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lox/e$a;->b()Lox/e;

    move-result-object p2

    sget-object v0, Lcom/transsion/videofloat/bean/FloatActionType;->HOME:Lcom/transsion/videofloat/bean/FloatActionType;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v3, v0, v1}, Lox/e;->k(Landroidx/fragment/app/FragmentActivity;Lpx/a;Lcom/transsion/videofloat/bean/FloatActionType;Z)V

    return-void

    :cond_1
    sget-object v0, Lcom/transsion/postdetail/util/UGCShortTVFloatManager;->b:Lcom/transsion/postdetail/util/UGCShortTVFloatManager;

    invoke-virtual {p2}, Lot/d;->f()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/postdetail/util/UGCShortTVFloatManager;->q(Ljava/util/List;)V

    sget-object p2, Lox/b;->a:Lox/b$a;

    invoke-virtual {p2}, Lox/b$a;->c()Lox/b;

    move-result-object v1

    new-instance v6, Lcom/transsion/postdetail/shorttv_pugc/factory/e;

    invoke-direct {v6, p1}, Lcom/transsion/postdetail/shorttv_pugc/factory/e;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    new-instance v7, Lcom/transsion/postdetail/shorttv_pugc/factory/f$a;

    invoke-direct {v7}, Lcom/transsion/postdetail/shorttv_pugc/factory/f$a;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lox/b;->g(Landroidx/fragment/app/FragmentActivity;Lpx/a;ZZLkotlin/jvm/functions/Function1;Lsx/a;)V

    return-void
.end method
