.class public final Lcom/transsion/postdetail/helper/ImmVideoHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/helper/ImmVideoHelper$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

.field private static final i:Lkotlin/Lazy;


# instance fields
.field private final a:Ljava/util/List;

.field private b:I

.field private final c:Ljava/util/Map;

.field private final d:Lkotlin/Lazy;

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/postdetail/helper/ImmVideoHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->h:Lcom/transsion/postdetail/helper/ImmVideoHelper$a;

    new-instance v0, Lcom/transsion/postdetail/helper/c;

    invoke-direct {v0}, Lcom/transsion/postdetail/helper/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->i:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->a:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->c:Ljava/util/Map;

    new-instance v0, Lcom/transsion/postdetail/helper/b;

    invoke-direct {v0}, Lcom/transsion/postdetail/helper/b;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->d:Lkotlin/Lazy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->e:Z

    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->f:Z

    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->g:Z

    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "k_imm_video_guide"

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->e:Z

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    const-string v3, "k_short_tv_guide"

    invoke-virtual {v2, v3, v0}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->g:Z

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "k_imm_video_guide_from_trending"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->f:Z

    return-void
.end method

.method public static synthetic a(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ImmVideoHelper;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->l(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ImmVideoHelper;)V

    return-void
.end method

.method public static synthetic b()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->v()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Lcom/transsion/postdetail/helper/ImmVideoHelper;
    .locals 1

    invoke-static {}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->m()Lcom/transsion/postdetail/helper/ImmVideoHelper;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->i:Lkotlin/Lazy;

    return-object v0
.end method

.method public static final synthetic e(Lcom/transsion/postdetail/helper/ImmVideoHelper;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->q(Ljava/util/List;)V

    return-void
.end method

.method private static final l(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ImmVideoHelper;)V
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

    iput p0, p1, Lcom/transsion/postdetail/helper/ImmVideoHelper;->b:I

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

.method private static final m()Lcom/transsion/postdetail/helper/ImmVideoHelper;
    .locals 1

    new-instance v0, Lcom/transsion/postdetail/helper/ImmVideoHelper;

    invoke-direct {v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper;-><init>()V

    return-object v0
.end method

.method private final q(Ljava/util/List;)V
    .locals 3

    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/moviedetailapi/bean/Video;

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

.method private static final v()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final f()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final g()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->a:Ljava/util/List;

    return-object v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->b:I

    return v0
.end method

.method public final i()Landroidx/lifecycle/b0;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final j()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final k(Landroidx/fragment/app/FragmentActivity;)V
    .locals 9

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iput v2, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->b:I

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

    iput v2, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->b:I

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

    new-instance v1, Lcom/transsion/postdetail/helper/d;

    invoke-direct {v1, p1, p0}, Lcom/transsion/postdetail/helper/d;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/postdetail/helper/ImmVideoHelper;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public final n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->e:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->f:Z

    return v0
.end method

.method public final p()V
    .locals 7

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/helper/ImmVideoHelper$loadCache$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$loadCache$1;-><init>(Lcom/transsion/postdetail/helper/ImmVideoHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final r(Ljava/util/List;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Lcom/transsion/postdetail/helper/ImmVideoHelper$saveCache$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/transsion/postdetail/helper/ImmVideoHelper$saveCache$1;-><init>(Ljava/util/List;Lcom/transsion/postdetail/helper/ImmVideoHelper;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    :goto_0
    return-void
.end method

.method public final s(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->getMedia()Lcom/transsion/moviedetailapi/bean/Media;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Media;->getVideo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/postdetail/helper/ImmVideoHelper;->f()V

    sget-object v0, Lcom/transsion/moviedetailapi/bean/PostSubjectItem;->Companion:Lcom/transsion/moviedetailapi/bean/PostSubjectItem$a;

    invoke-virtual {v0, p1}, Lcom/transsion/moviedetailapi/bean/PostSubjectItem$a;->a(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)Lcom/transsion/moviedetailapi/bean/PostSubjectItem;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ImmVideoPlayer"

    const-string v2, "-- setVideoGuideShown"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->e:Z

    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "k_imm_video_guide"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public final u()V
    .locals 6

    sget-object v0, Llg/a;->a:Llg/a$a;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "ImmVideoPlayer"

    const-string v2, "-- setVideoGuideShownFromTrending"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->v(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/postdetail/helper/ImmVideoHelper;->f:Z

    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v1

    const-string v2, "k_imm_video_guide_from_trending"

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
