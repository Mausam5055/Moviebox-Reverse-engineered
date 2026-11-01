.class public final Lcom/transsion/player/longvideo/intercept/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/transsion/player/longvideo/constants/LongVodPageType;

.field private b:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

.field private c:Landroidx/lifecycle/LifecycleCoroutineScope;

.field private d:Ljava/lang/String;

.field private e:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/player/longvideo/intercept/c;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/c;->f(Lcom/transsion/player/longvideo/intercept/c;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/player/longvideo/intercept/c;)Landroid/app/Activity;
    .locals 0

    invoke-static {p0}, Lcom/transsion/player/longvideo/intercept/c;->e(Lcom/transsion/player/longvideo/intercept/c;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private final d()Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;
    .locals 8

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/c;->b:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v2, :cond_1

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    :cond_2
    move-object v4, v1

    iput-object v4, p0, Lcom/transsion/player/longvideo/intercept/c;->c:Landroidx/lifecycle/LifecycleCoroutineScope;

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/c;->e:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    if-nez v0, :cond_3

    new-instance v0, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    new-instance v5, Lcom/transsion/player/longvideo/intercept/a;

    invoke-direct {v5, p0}, Lcom/transsion/player/longvideo/intercept/a;-><init>(Lcom/transsion/player/longvideo/intercept/c;)V

    new-instance v6, Lcom/transsion/player/longvideo/intercept/b;

    invoke-direct {v6, p0}, Lcom/transsion/player/longvideo/intercept/b;-><init>(Lcom/transsion/player/longvideo/intercept/c;)V

    const/4 v7, 0x1

    const-string v3, "StreamVideoBackInterstitialScene"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;-><init>(Ljava/lang/String;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Z)V

    iput-object v0, p0, Lcom/transsion/player/longvideo/intercept/c;->e:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    :cond_3
    return-object v0
.end method

.method private static final e(Lcom/transsion/player/longvideo/intercept/c;)Landroid/app/Activity;
    .locals 2

    iget-object p0, p0, Lcom/transsion/player/longvideo/intercept/c;->b:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    instance-of v1, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_1

    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, p0

    :cond_2
    return-object v0
.end method

.method private static final f(Lcom/transsion/player/longvideo/intercept/c;)Lkotlin/Unit;
    .locals 3

    iget-object p0, p0, Lcom/transsion/player/longvideo/intercept/c;->b:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->backClick$default(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;ZZILjava/lang/Object;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/c;->e:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->o()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/player/longvideo/intercept/c;->e:Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/c;->a:Lcom/transsion/player/longvideo/constants/LongVodPageType;

    sget-object v1, Lcom/transsion/player/longvideo/constants/LongVodPageType;->STREAM:Lcom/transsion/player/longvideo/constants/LongVodPageType;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/c;->d()Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->q(Ljava/lang/String;)V

    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/c;->d:Ljava/lang/String;

    return-void
.end method

.method public final i(Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/c;->b:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    return-void
.end method

.method public final j(Lcom/transsion/player/longvideo/constants/LongVodPageType;)V
    .locals 1

    const-string v0, "pageType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/player/longvideo/intercept/c;->a:Lcom/transsion/player/longvideo/constants/LongVodPageType;

    return-void
.end method

.method public final k()Z
    .locals 9

    iget-object v0, p0, Lcom/transsion/player/longvideo/intercept/c;->a:Lcom/transsion/player/longvideo/constants/LongVodPageType;

    sget-object v1, Lcom/transsion/player/longvideo/constants/LongVodPageType;->STREAM:Lcom/transsion/player/longvideo/constants/LongVodPageType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/transsion/ad/scene/a;->a:Lcom/transsion/ad/scene/a;

    const-string v1, "StreamVideoBackInterstitialScene"

    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/a;->k(Ljava/lang/String;)I

    move-result v0

    sget-object v3, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {v3}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    const-string v4, "show_StreamVideoBackInterstitialScene_timestamp"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v3, v0

    const-wide/16 v7, 0x3e8

    mul-long/2addr v3, v7

    cmp-long v0, v5, v3

    if-gez v0, :cond_1

    sget-object v0, Lii/b;->a:Lii/b;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lii/b;->d(Lii/b;Ljava/lang/String;ZILjava/lang/Object;)V

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/transsion/player/longvideo/intercept/c;->d()Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/player/longvideo/intercept/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/layer/local/LocalBackAdHelper;->r(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
