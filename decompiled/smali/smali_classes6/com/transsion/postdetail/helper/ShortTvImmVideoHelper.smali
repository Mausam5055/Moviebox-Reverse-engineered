.class public final Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;
    }
.end annotation


# static fields
.field public static final k:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

.field private static final l:Lkotlin/Lazy;


# instance fields
.field private final a:Ljava/util/List;

.field private b:I

.field private final c:Ljava/util/Map;

.field private final d:Lkotlin/Lazy;

.field private e:Z

.field private f:Z

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->k:Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$a;

    new-instance v0, Lcom/transsion/postdetail/helper/h;

    invoke-direct {v0}, Lcom/transsion/postdetail/helper/h;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->l:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->a:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->c:Ljava/util/Map;

    new-instance v0, Lcom/transsion/postdetail/helper/g;

    invoke-direct {v0}, Lcom/transsion/postdetail/helper/g;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->d:Lkotlin/Lazy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->e:Z

    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->f:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->g:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->h:Ljava/util/List;

    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "k_imm_video_guide"

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->e:Z

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "k_short_tv_guide"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->f:Z

    return-void
.end method

.method private static final B()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method

.method public static synthetic a()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->r()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->w(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic c()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->B()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->x(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic e(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->q(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;)V

    return-void
.end method

.method public static final synthetic f(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->i:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic g()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->l:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic h(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Lcom/transsion/moviedetailapi/bean/Video;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->u(Lcom/transsion/moviedetailapi/bean/Video;)V

    return-void
.end method

.method public static final synthetic i(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->i:Ljava/util/List;

    return-void
.end method

.method private static final q(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;)V
    .locals 12

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroidx/core/view/d2;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-static {p0}, Landroidx/appcompat/widget/x;->a(Landroid/graphics/Insets;)I

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    if-le v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Landroidx/appcompat/widget/x;->a(Landroid/graphics/Insets;)I

    move-result p0

    iput p0, p1, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->b:I

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on get navigation gesture height = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ImmVideoHelper"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    sget-object v6, Llg/a;->a:Llg/a$a;

    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "ImmVideoHelper"

    const-string v8, "is open navigation bar 2"

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final r()Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;
    .locals 1

    new-instance v0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;

    invoke-direct {v0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;-><init>()V

    return-object v0
.end method

.method private final u(Lcom/transsion/moviedetailapi/bean/Video;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/Video;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->i:Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;

    invoke-virtual {v0}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager$a;->a()Lcom/transsion/player/orplayer/ORPlayerPreloadManager;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/player/orplayer/ORPlayerPreloadManager;->j(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method private static final w(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 6

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "for you preloadItemViews completion, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ShortTvImmVideoPlayer"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean p2, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->j:Z

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->g:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static final x(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 6

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "detail preloadItemViews completion, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ShortTvImmVideoPlayer"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-boolean p2, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->j:Z

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->h:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ImmVideoPlayer"

    const-string v2, "-- setVideoGuideShown"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->e:Z

    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "k_imm_video_guide"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->a:Ljava/util/List;

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->g:Ljava/util/List;

    return-object v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->b:I

    return v0
.end method

.method public final n()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final o()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final p(Landroidx/fragment/app/FragmentActivity;)V
    .locals 9

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iput v2, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->b:I

    return-void

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    sget-object v3, Llg/a;->a:Llg/a$a;

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v4, "ImmVideoHelper"

    const-string v5, "is open navigation bar"

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iput v2, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->b:I

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    new-instance v1, Lcom/transsion/postdetail/helper/i;

    invoke-direct {v1, p1, p0}, Lcom/transsion/postdetail/helper/i;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public final s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->e:Z

    return v0
.end method

.method public final t()V
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->n()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$loadCache$1;-><init>(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final v(Landroid/content/Context;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->j:Z

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    new-instance v3, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    invoke-direct {v3, p1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/transsion/postdetail/R$layout;->item_short_tv_immersion_video:I

    new-instance v5, Lcom/transsion/postdetail/helper/j;

    invoke-direct {v5, p0}, Lcom/transsion/postdetail/helper/j;-><init>(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;)V

    invoke-virtual {v3, v4, v2, v5}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->a(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v0, v3, :cond_1

    new-instance v1, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    invoke-direct {v1, p1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/transsion/shorttv/R$layout;->short_tv_item_video:I

    new-instance v5, Lcom/transsion/postdetail/helper/k;

    invoke-direct {v5, p0}, Lcom/transsion/postdetail/helper/k;-><init>(Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;)V

    invoke-virtual {v1, v4, v2, v5}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->a(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$d;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final y()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->j:Z

    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final z(Ljava/util/List;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;->n()Landroidx/lifecycle/b0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$saveCache$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper$saveCache$1;-><init>(Ljava/util/List;Lcom/transsion/postdetail/helper/ShortTvImmVideoHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    :goto_0
    return-void
.end method
