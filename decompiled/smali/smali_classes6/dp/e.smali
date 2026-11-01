.class public final Ldp/e;
.super Landroidx/recyclerview/widget/RecyclerView$r;

# interfaces
.implements Ldp/a;
.implements Lcom/transsion/player/orplayer/f;
.implements Lcom/transsion/baselib/report/l$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroidx/fragment/app/Fragment;

.field private final c:Landroidx/recyclerview/widget/RecyclerView;

.field private final d:Lcom/transsion/postdetail/ui/adapter/i;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Z

.field private h:Ljava/lang/Boolean;

.field private final i:I

.field private final j:I

.field private k:Lcom/transsion/player/orplayer/g;

.field private l:Lcom/transsion/postdetail/video/PostFeedVideoView;

.field private m:Lcom/transsion/postdetail/layer/b;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:I

.field private q:J

.field private r:Z

.field private s:Lso/g0;

.field private t:I

.field private u:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Landroidx/recyclerview/widget/RecyclerView;Lcom/transsion/postdetail/ui/adapter/i;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subpageName"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    iput-object p1, p0, Ldp/e;->a:Landroid/content/Context;

    iput-object p2, p0, Ldp/e;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Ldp/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Ldp/e;->d:Lcom/transsion/postdetail/ui/adapter/i;

    iput-object p5, p0, Ldp/e;->e:Ljava/lang/String;

    iput-object p6, p0, Ldp/e;->f:Ljava/lang/String;

    iput-boolean p7, p0, Ldp/e;->g:Z

    const/16 p1, 0x52

    invoke-static {p1}, Ldk/a;->b(I)I

    move-result p1

    iput p1, p0, Ldp/e;->i:I

    const/16 p1, 0x38

    invoke-static {p1}, Ldk/a;->b(I)I

    move-result p1

    iput p1, p0, Ldp/e;->j:I

    const/4 p1, -0x1

    iput p1, p0, Ldp/e;->n:I

    invoke-static {}, Lcom/blankj/utilcode/util/y;->a()I

    move-result p1

    iput p1, p0, Ldp/e;->p:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldp/e;->r:Z

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Ldp/e;->u:F

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_0
    sget-object p1, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {p1, p0}, Lcom/transsion/baselib/report/l;->g(Lcom/transsion/baselib/report/l$a;)Z

    invoke-direct {p0}, Ldp/e;->o()V

    if-eqz p3, :cond_1

    new-instance p1, Ldp/b;

    invoke-direct {p1, p0}, Ldp/b;-><init>(Ldp/e;)V

    const-wide/16 p4, 0x1f4

    invoke-virtual {p3, p1, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public static synthetic d(Ldp/e;)V
    .locals 0

    invoke-static {p0}, Ldp/e;->g(Ldp/e;)V

    return-void
.end method

.method public static synthetic e(Ldp/e;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Ldp/e;->l(Ldp/e;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ldp/e;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Ldp/e;->k(Ldp/e;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final g(Ldp/e;)V
    .locals 0

    invoke-direct {p0}, Ldp/e;->h()V

    return-void
.end method

.method private final h()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Ldp/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    instance-of v3, v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v3, :cond_1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    return-void

    :cond_2
    sget-object v3, Lnh/m;->a:Lnh/m;

    invoke-virtual {v3}, Lnh/m;->e()Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v3

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    iget v5, v0, Ldp/e;->t:I

    if-lez v5, :cond_4

    invoke-static {v4, v3}, Lkotlin/ranges/RangesKt;->p(II)Lkotlin/ranges/IntProgression;

    move-result-object v3

    goto :goto_2

    :cond_4
    new-instance v5, Lkotlin/ranges/IntRange;

    invoke-direct {v5, v3, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    move-object v3, v5

    :goto_2
    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->f()I

    move-result v4

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->h()I

    move-result v5

    invoke-virtual {v3}, Lkotlin/ranges/IntProgression;->l()I

    move-result v3

    if-lez v3, :cond_5

    if-le v4, v5, :cond_6

    :cond_5
    if-gez v3, :cond_10

    if-gt v5, v4, :cond_10

    :cond_6
    :goto_3
    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_7

    goto/16 :goto_6

    :cond_7
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v9, v6, 0x2

    sub-int/2addr v8, v9

    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v9}, Lkotlin/ranges/RangesKt;->f(II)I

    move-result v8

    iget v9, v0, Ldp/e;->p:I

    iget v10, v0, Ldp/e;->i:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    const/16 v10, 0xc8

    invoke-static {v10}, Ldk/a;->b(I)I

    move-result v10

    sub-int v10, v9, v10

    const/16 v11, 0xfa

    invoke-static {v11}, Ldk/a;->b(I)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v12, v0, Ldp/e;->d:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    :goto_4
    if-lt v4, v12, :cond_9

    goto/16 :goto_7

    :cond_9
    iget-object v12, v0, Ldp/e;->d:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v12, :cond_f

    invoke-virtual {v12, v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    if-nez v12, :cond_a

    goto/16 :goto_6

    :cond_a
    iget-object v13, v0, Ldp/e;->o:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    sget-object v14, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "triggerVideoPlay position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " same ~ return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "PostFeedVideo"

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_b
    invoke-virtual {v12}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isVideo()Z

    move-result v13

    if-nez v13, :cond_c

    goto/16 :goto_6

    :cond_c
    iget-object v13, v0, Ldp/e;->d:Lcom/transsion/postdetail/ui/adapter/i;

    sget v14, Lcom/transsion/postdetail/R$id;->layout_content_video:I

    invoke-virtual {v13, v4, v14}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->p0(II)Landroid/view/View;

    move-result-object v13

    instance-of v14, v13, Landroid/widget/FrameLayout;

    if-eqz v14, :cond_d

    check-cast v13, Landroid/widget/FrameLayout;

    goto :goto_5

    :cond_d
    const/4 v13, 0x0

    :goto_5
    if-nez v13, :cond_e

    sget-object v14, Llg/a;->a:Llg/a$a;

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v15, "PostFeedVideo"

    const-string v16, "triggerVideoPlay itemVideoContainer is null"

    const/16 v17, 0x0

    invoke-static/range {v14 .. v19}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    goto :goto_6

    :cond_e
    sget-object v20, Llg/a;->a:Llg/a$a;

    iget v14, v7, Landroid/graphics/Rect;->top:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n                checkActiveItemPosition position:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",  \n                    top:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bottom:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n                    screenCenterTop\uff1a"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   screenCenterBottom\uff1a"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n                    itemHeight:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " viewCenter:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screenCenter:"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n            "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v22

    const/16 v24, 0x4

    const/16 v25, 0x0

    const-string v21, "PostFeedVideo"

    const/16 v23, 0x0

    invoke-static/range {v20 .. v25}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    sub-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v6, 0xdc

    invoke-static {v6}, Ldk/a;->b(I)I

    move-result v6

    if-ge v2, v6, :cond_f

    invoke-direct {v0, v4, v12, v13}, Ldp/e;->p(ILcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/widget/FrameLayout;)V

    goto :goto_7

    :cond_f
    :goto_6
    if-eq v4, v5, :cond_10

    add-int/2addr v4, v3

    goto/16 :goto_3

    :cond_10
    :goto_7
    return-void
.end method

.method private final i(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object p1

    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    if-gt v0, v1, :cond_4

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v3, v4

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v2, v4

    cmpg-float v2, v3, v2

    if-gtz v2, :cond_3

    invoke-direct {p0, v0}, Ldp/e;->m(I)V

    :cond_3
    :goto_2
    if-eq v0, v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private final j(Landroid/content/Context;)V
    .locals 6

    iget-object v0, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-nez v0, :cond_1

    new-instance v0, Lcom/transsion/postdetail/video/PostFeedVideoView;

    invoke-direct {v0, p1}, Lcom/transsion/postdetail/video/PostFeedVideoView;-><init>(Landroid/content/Context;)V

    iget-boolean p1, p0, Ldp/e;->r:Z

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/video/PostFeedVideoView;->updateMute(Z)V

    new-instance p1, Ldp/c;

    invoke-direct {p1, p0}, Ldp/c;-><init>(Ldp/e;)V

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/video/PostFeedVideoView;->setMuteClickCallback(Lkotlin/jvm/functions/Function1;)V

    new-instance p1, Ldp/d;

    invoke-direct {p1, p0}, Ldp/d;-><init>(Ldp/e;)V

    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/video/PostFeedVideoView;->setRemovePlayerCallback(Lkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Ldp/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    sget-object p1, Lko/l0;->a:Lko/l0;

    invoke-virtual {p1}, Lko/l0;->s()Lcom/transsion/player/orplayer/g;

    move-result-object p1

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "PostFeedVideo"

    const-string v2, "createPlayer----"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-interface {p1, p0}, Lcom/transsion/player/orplayer/g;->addPlayerListener(Lcom/transsion/player/orplayer/f;)V

    iget-object v0, p0, Ldp/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/video/PostFeedVideoView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->setSurfaceView(Landroid/view/SurfaceView;)V

    sget-object v0, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FILL:Lcom/transsion/player/enum/ScaleMode;

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    iput-object p1, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    :cond_1
    iget-object p1, p0, Ldp/e;->m:Lcom/transsion/postdetail/layer/b;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/postdetail/layer/b;

    invoke-direct {p1}, Lcom/transsion/postdetail/layer/b;-><init>()V

    iget-object v0, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/layer/b;->v(Lcom/transsion/player/orplayer/g;)V

    iget-object v0, p0, Ldp/e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/layer/b;->u(Ljava/lang/String;)V

    iget-object v0, p0, Ldp/e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/layer/b;->z(Ljava/lang/String;)V

    iput-object p1, p0, Ldp/e;->m:Lcom/transsion/postdetail/layer/b;

    :cond_2
    return-void
.end method

.method private static final k(Ldp/e;Z)Lkotlin/Unit;
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volume click isMute:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "PostFeedVideo"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput-boolean p1, p0, Ldp/e;->r:Z

    iget-object v0, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Ldp/e;->u:F

    :goto_0
    invoke-interface {v0, p0}, Lcom/transsion/player/orplayer/g;->setVolume(F)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final l(Ldp/e;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Ldp/e;->n()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final m(I)V
    .locals 10

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    iget-object v0, p0, Ldp/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Ldp/e;->n:I

    if-eq v0, p1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Ldp/e;->d:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-lt p1, v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Ldp/e;->d:Lcom/transsion/postdetail/ui/adapter/i;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->isVideo()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    sget-object v4, Llg/a;->a:Llg/a$a;

    const-string v5, "PostFeedVideo"

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Group;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " --\u5df2\u9690\u85cf\u8d85\u8fc750%, \u79fb\u9664\u64ad\u653e\u5668, "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Ldp/e;->n()V

    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    return-void
.end method

.method private final n()V
    .locals 4

    iget-object v0, p0, Ldp/e;->m:Lcom/transsion/postdetail/layer/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/transsion/postdetail/layer/b;->e(Lcom/transsion/postdetail/layer/b;ZILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ldp/e;->s:Lso/g0;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lso/g0;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Ldp/e;->s:Lso/g0;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lso/g0;->f:Lcom/noober/background/view/BLTextView;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Ldp/e;->s:Lso/g0;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lso/g0;->e:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljg/c;->k(Landroid/view/View;)V

    :cond_3
    iput-object v1, p0, Ldp/e;->s:Lso/g0;

    iget-object v0, p0, Ldp/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_5

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_5
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_6

    iget-object v2, p0, Ldp/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->stop()V

    :cond_7
    iget-object v0, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->reset()V

    :cond_8
    iget-object v0, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->clearScreen()V

    :cond_9
    const/4 v0, -0x1

    iput v0, p0, Ldp/e;->n:I

    iput-object v1, p0, Ldp/e;->o:Ljava/lang/String;

    sget-object v0, Lep/c;->a:Lep/c;

    invoke-virtual {v0}, Lep/c;->a()V

    return-void
.end method

.method private final o()V
    .locals 9

    iget-object v0, p0, Ldp/e;->h:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v3, "sa_post_video_auto_play"

    invoke-virtual {v0, v3, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v0}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :cond_3
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    iput-object v0, p0, Ldp/e;->h:Ljava/lang/Boolean;

    :cond_4
    sget-object v0, Lsm/f;->c:Lsm/f$a;

    invoke-virtual {v0}, Lsm/f$a;->a()Lsm/f;

    move-result-object v0

    const-string v3, "room_home_video_play_mute"

    invoke-virtual {v0, v3, v2}, Lsm/f;->c(Ljava/lang/String;Z)Lcom/transsion/mb/config/manager/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/mb/config/manager/ConfigBean;->getValue()Ljava/lang/String;

    move-result-object v1

    :cond_5
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v1}, Lkotlin/text/StringsKt;->m1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_7
    :goto_4
    iput-boolean v2, p0, Ldp/e;->r:Z

    sget-object v3, Llg/a;->a:Llg/a$a;

    iget-object v0, p0, Ldp/e;->h:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----------------initConfig, isOpen:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "+------+isVideoMute:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "PostFeedVideo"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private final p(ILcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroid/widget/FrameLayout;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Llg/a;->a:Llg/a$a;

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getGroup()Lcom/transsion/moviedetailapi/bean/Group;

    move-result-object v3

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Group;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v8

    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getContent()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-------> triggerVideoPlay \u64ad\u653e\u89c6\u9891:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", roomName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "PostFeedVideo"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Llg/a$a;->r(Llg/a$a;Ljava/lang/String;[Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Ldp/e;->n()V

    iget-object v2, v0, Ldp/e;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Ldp/e;->j(Landroid/content/Context;)V

    invoke-static/range {p3 .. p3}, Lso/g0;->a(Landroid/view/View;)Lso/g0;

    move-result-object v2

    iput-object v2, v0, Ldp/e;->s:Lso/g0;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lso/g0;->b:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    iget-object v3, v0, Ldp/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v2, v0, Ldp/e;->s:Lso/g0;

    if-eqz v2, :cond_2

    iget-object v2, v2, Lso/g0;->e:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljg/c;->g(Landroid/view/View;)V

    :cond_2
    iput v1, v0, Ldp/e;->n:I

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ldp/e;->o:Ljava/lang/String;

    iget-object v1, v0, Ldp/e;->m:Lcom/transsion/postdetail/layer/b;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/transsion/postdetail/layer/b;->g()V

    :cond_3
    iget-object v1, v0, Ldp/e;->m:Lcom/transsion/postdetail/layer/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1, v2, v2}, Lcom/transsion/postdetail/layer/b;->a(II)V

    :cond_4
    iget-object v1, v0, Ldp/e;->m:Lcom/transsion/postdetail/layer/b;

    if-eqz v1, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getPostId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-virtual {v1, v3, v4}, Lcom/transsion/postdetail/layer/b;->x(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V

    goto :goto_1

    :cond_5
    move-object/from16 v4, p2

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/transsion/moviedetailapi/bean/Video;

    invoke-virtual {v4}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_7

    goto :goto_2

    :cond_7
    move v4, v2

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v4, 0x1

    :goto_3
    if-nez v4, :cond_6

    move-object v8, v3

    :cond_9
    check-cast v8, Lcom/transsion/moviedetailapi/bean/Video;

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Video;->getDuration()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, v0, Ldp/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    if-eqz v2, :cond_a

    int-to-long v3, v1

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/transsion/postdetail/video/PostFeedVideoView;->setDurationTime(J)V

    :cond_a
    sget-object v9, Llg/a;->a:Llg/a$a;

    iget-boolean v1, v0, Ldp/e;->r:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "triggerVideoPlay updateMute:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    const/4 v14, 0x0

    const-string v10, "PostFeedVideo"

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, v0, Ldp/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    if-eqz v1, :cond_b

    iget-boolean v2, v0, Ldp/e;->r:Z

    invoke-virtual {v1, v2}, Lcom/transsion/postdetail/video/PostFeedVideoView;->updateMute(Z)V

    :cond_b
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_e

    iget-object v1, v0, Ldp/e;->m:Lcom/transsion/postdetail/layer/b;

    if-eqz v1, :cond_c

    invoke-virtual {v1, v11}, Lcom/transsion/postdetail/layer/b;->A(Ljava/lang/String;)V

    :cond_c
    iget-object v1, v0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_d

    new-instance v2, Lao/e;

    const/16 v15, 0x1c

    const/16 v16, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v2

    move-object v10, v11

    invoke-direct/range {v9 .. v16}, Lao/e;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/transsion/player/enum/PlayMimeType;Lcom/transsion/player/mediasession/MediaItem;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1, v2}, Lcom/transsion/player/orplayer/g;->setDataSource(Lao/e;)V

    :cond_d
    iget-object v1, v0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v1, :cond_e

    invoke-interface {v1}, Lcom/transsion/player/orplayer/g;->prepare()V

    :cond_e
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "PostFeedVideo"

    const-string v2, "onSetFirstData--checkActiveItemPosition"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-direct {p0}, Ldp/e;->h()V

    return-void
.end method

.method public b()V
    .locals 10

    sget-object v6, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "PostFeedVideo"

    const-string v2, "onPagePause--"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_0
    iget-object v7, p0, Ldp/e;->o:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v0, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getCurrentPosition()J

    move-result-wide v8

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==feedvideo savePlayProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "PostFeedVideo"

    const/4 v3, 0x0

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    sget-object v0, Lep/c;->a:Lep/c;

    invoke-virtual {v0, v7, v8, v9}, Lep/c;->c(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 9

    invoke-direct {p0}, Ldp/e;->o()V

    iget-object v0, p0, Ldp/e;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lep/c;->a:Lep/c;

    invoke-virtual {v1, v0}, Lep/c;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    sget-object v3, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==onPageResume seekTo:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "PostFeedVideo"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v2, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v2, :cond_0

    invoke-interface {v2, v0, v1}, Lcom/transsion/player/orplayer/g;->seekTo(J)V

    :cond_0
    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "PostFeedVideo"

    const-string v5, "onPageResume play"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->play()V

    :cond_1
    return-void
.end method

.method public canNonSubscriberPlay(ZIILmo/d;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/player/orplayer/f$a;->a(Lcom/transsion/player/orplayer/f;ZIILmo/d;)V

    return-void
.end method

.method public initPlayer()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->b(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onAliyunDecodeErrorChangeSoftwareDecoder(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->c(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onBackgroundStatusChange(Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Ldp/e;->m:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/layer/b;->d(Z)V

    :cond_1
    return-void
.end method

.method public onBufferedPosition(JLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->d(Lcom/transsion/player/orplayer/f;JLao/e;)V

    return-void
.end method

.method public onCompletion(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->e(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onFocusChange(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->g(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->h(Lcom/transsion/player/orplayer/f;Z)V

    return-void
.end method

.method public onLoadingBegin(Lao/e;)V
    .locals 0

    iget-object p1, p0, Ldp/e;->m:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->h()V

    :cond_0
    return-void
.end method

.method public onLoadingEnd(Lao/e;)V
    .locals 0

    iget-object p1, p0, Ldp/e;->m:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->i()V

    :cond_0
    return-void
.end method

.method public onLoadingProgress(IFLao/e;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/player/orplayer/f$a;->m(Lcom/transsion/player/orplayer/f;IFLao/e;)V

    return-void
.end method

.method public onLoopingStart()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->o(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onMediaItemTransition(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->p(Lcom/transsion/player/orplayer/f;Ljava/lang/String;)V

    return-void
.end method

.method public onPageDestroy()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "PostFeedVideo"

    const-string v2, "onPageDestroy"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Ldp/e;->c:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    :cond_0
    iget-object v0, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    const/4 v1, 0x0

    iput-object v1, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/transsion/player/orplayer/g;->removePlayerListener(Lcom/transsion/player/orplayer/f;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->release()V

    :cond_2
    iget-object v0, p0, Ldp/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_4
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_5

    iget-object v2, p0, Ldp/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    iput-object v1, p0, Ldp/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    sget-object v0, Lep/c;->a:Lep/c;

    invoke-virtual {v0}, Lep/c;->a()V

    sget-object v0, Lcom/transsion/baselib/report/l;->a:Lcom/transsion/baselib/report/l;

    invoke-virtual {v0, p0}, Lcom/transsion/baselib/report/l;->u(Lcom/transsion/baselib/report/l$a;)Z

    return-void
.end method

.method public onPlayError(Lcom/transsion/player/orplayer/PlayError;Lao/e;)V
    .locals 0

    const-string p2, "errorInfo"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Ldp/e;->m:Lcom/transsion/postdetail/layer/b;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/transsion/postdetail/layer/b;->k(Lcom/transsion/player/orplayer/PlayError;)V

    :cond_0
    return-void
.end method

.method public onPlayerRelease(Lao/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->t(Lcom/transsion/player/orplayer/f;Lao/e;)V

    return-void
.end method

.method public onPlayerReset()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->v(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onPrepare(Lao/e;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget p1, p0, Ldp/e;->n:I

    iget-boolean v1, p0, Ldp/e;->r:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------onPrepare Position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\uff0c isVideoMute\uff1a"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "PostFeedVideo"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->setLooping(Z)V

    :cond_0
    iget-object p1, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/transsion/player/enum/ScaleMode;->SCALE_ASPECT_FILL:Lcom/transsion/player/enum/ScaleMode;

    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->setScaleMode(Lcom/transsion/player/enum/ScaleMode;)V

    :cond_1
    iget-object p1, p0, Ldp/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    if-eqz p1, :cond_3

    iget-object v0, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/transsion/player/orplayer/g;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x64

    :goto_0
    invoke-virtual {p1, v0}, Lcom/transsion/postdetail/video/PostFeedVideoView;->setProgressMax(I)V

    :cond_3
    iget-object p1, p0, Ldp/e;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ldp/e;->b:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->play()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->pause()V

    :cond_5
    :goto_1
    iget-boolean p1, p0, Ldp/e;->r:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_7

    iget-object p1, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/transsion/player/orplayer/g;->getVolume()Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_2

    :cond_6
    move p1, v0

    :goto_2
    iput p1, p0, Ldp/e;->u:F

    :cond_7
    iget-object p1, p0, Ldp/e;->k:Lcom/transsion/player/orplayer/g;

    if-eqz p1, :cond_9

    iget-boolean v1, p0, Ldp/e;->r:Z

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    :cond_8
    invoke-interface {p1, v0}, Lcom/transsion/player/orplayer/g;->setVolume(F)V

    :cond_9
    return-void
.end method

.method public onProgress(JLao/e;)V
    .locals 1

    iget-object p3, p0, Ldp/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    if-eqz p3, :cond_0

    long-to-int v0, p1

    invoke-virtual {p3, v0}, Lcom/transsion/postdetail/video/PostFeedVideoView;->setProgress(I)V

    :cond_0
    iget-object p3, p0, Ldp/e;->m:Lcom/transsion/postdetail/layer/b;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p1, p2}, Lcom/transsion/postdetail/layer/b;->l(J)V

    :cond_1
    return-void
.end method

.method public onRenderFirstFrame()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget v1, p0, Ldp/e;->n:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----onRenderFirstFrame Position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "PostFeedVideo"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v0, p0, Ldp/e;->m:Lcom/transsion/postdetail/layer/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/b;->m()V

    :cond_0
    iget-object v0, p0, Ldp/e;->l:Lcom/transsion/postdetail/video/PostFeedVideoView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/video/PostFeedVideoView;->setProgress(I)V

    :cond_1
    iget-object v0, p0, Ldp/e;->s:Lso/g0;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lso/g0;->d:Lcom/google/android/material/imageview/ShapeableImageView;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Ldp/e;->s:Lso/g0;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lso/g0;->f:Lcom/noober/background/view/BLTextView;

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljg/c;->g(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    iget-object p1, p0, Ldp/e;->h:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-direct {p0}, Ldp/e;->h()V

    :cond_1
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 6

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p2, p0, Ldp/e;->h:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Ldp/e;->q:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x64

    cmp-long p2, v2, v4

    if-gez p2, :cond_1

    return-void

    :cond_1
    iput-wide v0, p0, Ldp/e;->q:J

    invoke-direct {p0, p1}, Ldp/e;->i(Landroidx/recyclerview/widget/RecyclerView;)V

    iput p3, p0, Ldp/e;->t:I

    return-void
.end method

.method public onSetDataSource()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->B(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method

.method public onTracksAudioBitrateChange(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->C(Lcom/transsion/player/orplayer/f;I)V

    return-void
.end method

.method public onTracksChange(Lmo/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->D(Lcom/transsion/player/orplayer/f;Lmo/c;)V

    return-void
.end method

.method public onTracksVideoBitrateChange(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/player/orplayer/f$a;->E(Lcom/transsion/player/orplayer/f;I)V

    return-void
.end method

.method public onVideoPause(Lao/e;)V
    .locals 0

    iget-object p1, p0, Ldp/e;->m:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->n()V

    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/player/orplayer/f$a;->H(Lcom/transsion/player/orplayer/f;II)V

    return-void
.end method

.method public onVideoStart(Lao/e;)V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    iget p1, p0, Ldp/e;->n:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----onVideoStart Position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "PostFeedVideo"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object p1, p0, Ldp/e;->m:Lcom/transsion/postdetail/layer/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/postdetail/layer/b;->o()V

    :cond_0
    return-void
.end method

.method public setOnSeekCompleteListener()V
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/orplayer/f$a;->K(Lcom/transsion/player/orplayer/f;)V

    return-void
.end method
