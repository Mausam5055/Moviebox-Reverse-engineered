.class public final Lcom/transsion/postdetail/shorttv/factory/g;
.super Ljava/lang/Object;

# interfaces
.implements Lqs/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic i(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/postdetail/shorttv/factory/g;->k(Landroidx/fragment/app/FragmentActivity;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final j(Ljs/j;)Lpx/a;
    .locals 11

    new-instance v10, Lpx/a;

    invoke-virtual {p1}, Ljs/j;->g()Lcom/transsion/player/ui/ORPlayerView;

    move-result-object v1

    invoke-virtual {p1}, Ljs/j;->c()Lcom/transsion/player/orplayer/g;

    move-result-object v2

    sget-object v4, Lcom/transsion/videofloat/bean/FloatPlayType;->SHORT_TV:Lcom/transsion/videofloat/bean/FloatPlayType;

    invoke-virtual {p1}, Ljs/j;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljs/j;->h()I

    move-result v6

    invoke-virtual {p1}, Ljs/j;->a()I

    move-result v7

    const-string v8, ""

    invoke-virtual {p1}, Ljs/j;->e()Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lpx/a;-><init>(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/player/orplayer/g;Landroid/view/ViewGroup;Lcom/transsion/videofloat/bean/FloatPlayType;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/moviedetailapi/SubjectType;->SHORT_TV:Lcom/transsion/moviedetailapi/SubjectType;

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Lpx/a;->J(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Ljs/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lpx/a;->A(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljs/j;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, p1}, Lpx/a;->B(Ljava/lang/String;)V

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

    const-string v0, "subjectId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lox/b;->a:Lox/b$a;

    invoke-virtual {v0}, Lox/b$a;->c()Lox/b;

    move-result-object v1

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

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

    sget-object v1, Lcom/transsion/postdetail/util/ShortTVFloatManager;->b:Lcom/transsion/postdetail/util/ShortTVFloatManager;

    invoke-virtual {v1, p1}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->k(Ljava/lang/String;)Ljava/lang/String;

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

.method public g(Landroidx/fragment/app/FragmentActivity;Ljs/j;)V
    .locals 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bean"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/transsion/postdetail/shorttv/factory/g;->j(Ljs/j;)Lpx/a;

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
    sget-object v0, Lcom/transsion/postdetail/util/ShortTVFloatManager;->b:Lcom/transsion/postdetail/util/ShortTVFloatManager;

    invoke-virtual {p2}, Ljs/j;->f()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/postdetail/util/ShortTVFloatManager;->w(Ljava/util/List;)V

    sget-object p2, Lox/b;->a:Lox/b$a;

    invoke-virtual {p2}, Lox/b$a;->c()Lox/b;

    move-result-object v1

    new-instance v6, Lcom/transsion/postdetail/shorttv/factory/f;

    invoke-direct {v6, p1}, Lcom/transsion/postdetail/shorttv/factory/f;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    new-instance v7, Lcom/transsion/postdetail/shorttv/factory/g$a;

    invoke-direct {v7}, Lcom/transsion/postdetail/shorttv/factory/g$a;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lox/b;->g(Landroidx/fragment/app/FragmentActivity;Lpx/a;ZZLkotlin/jvm/functions/Function1;Lsx/a;)V

    return-void
.end method

.method public h(ZLandroidx/fragment/app/FragmentActivity;Ljs/j;)V
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
    invoke-direct {p0, p3}, Lcom/transsion/postdetail/shorttv/factory/g;->j(Ljs/j;)Lpx/a;

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
