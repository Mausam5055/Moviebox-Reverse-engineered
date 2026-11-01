.class public final Lcom/transsion/ugcvideodetail/hepler/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ugcvideodetail/hepler/e$a;,
        Lcom/transsion/ugcvideodetail/hepler/e$b;
    }
.end annotation


# static fields
.field public static final r:Lcom/transsion/ugcvideodetail/hepler/e$a;


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

.field private final c:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

.field private final d:Lcom/transsion/baselib/db/download/DownloadBean;

.field private final e:Lnet/lucode/hackware/magicindicator/MagicIndicator;

.field private final f:Landroidx/viewpager2/widget/ViewPager2;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final k:Lcom/google/android/material/appbar/AppBarLayout;

.field private l:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

.field private m:Lcom/transsion/ugcvideodetail/hepler/e$b;

.field private n:Landroidx/viewpager2/adapter/FragmentStateAdapter;

.field private o:I

.field private p:Z

.field private final q:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/ugcvideodetail/hepler/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/ugcvideodetail/hepler/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/ugcvideodetail/hepler/e;->r:Lcom/transsion/ugcvideodetail/hepler/e$a;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/Fragment;Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/baselib/db/download/DownloadBean;Lnet/lucode/hackware/magicindicator/MagicIndicator;Landroidx/viewpager2/widget/ViewPager2;Ljava/lang/String;Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;Ljava/lang/String;ILcom/google/android/material/appbar/AppBarLayout;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playFrom"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/e;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/hepler/e;->b:Lcom/transsion/ugcvideodetail/viewmodel/UGCVideoDetailViewModel;

    iput-object p3, p0, Lcom/transsion/ugcvideodetail/hepler/e;->c:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    iput-object p4, p0, Lcom/transsion/ugcvideodetail/hepler/e;->d:Lcom/transsion/baselib/db/download/DownloadBean;

    iput-object p5, p0, Lcom/transsion/ugcvideodetail/hepler/e;->e:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    iput-object p6, p0, Lcom/transsion/ugcvideodetail/hepler/e;->f:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p7, p0, Lcom/transsion/ugcvideodetail/hepler/e;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/transsion/ugcvideodetail/hepler/e;->h:Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    iput-object p9, p0, Lcom/transsion/ugcvideodetail/hepler/e;->i:Ljava/lang/String;

    iput p10, p0, Lcom/transsion/ugcvideodetail/hepler/e;->j:I

    iput-object p11, p0, Lcom/transsion/ugcvideodetail/hepler/e;->k:Lcom/google/android/material/appbar/AppBarLayout;

    sget-object p1, Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;->LOCAL_VIDEO:Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    const/4 p2, 0x0

    if-ne p8, p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-static {p10, p2, p1}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result p1

    iput p1, p0, Lcom/transsion/ugcvideodetail/hepler/e;->o:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p1

    sget p2, Lcom/transsion/baseui/R$string;->for_you:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p2

    sget p3, Lcom/transsion/baseui/R$string;->name_comments:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/e;->q:Ljava/util/List;

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/hepler/e;->n()V

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/hepler/e;->q()V

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/hepler/e;->p()V

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/hepler/e;->o()V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/ugcvideodetail/hepler/e;Lcom/transsion/user/action/sync/event/CommentEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/hepler/e;->r(Lcom/transsion/ugcvideodetail/hepler/e;Lcom/transsion/user/action/sync/event/CommentEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->d:Lcom/transsion/baselib/db/download/DownloadBean;

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->i:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic d(Lcom/transsion/ugcvideodetail/hepler/e;)Lnet/lucode/hackware/magicindicator/MagicIndicator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->e:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->h:Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->q:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->c:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    return-object p0
.end method

.method public static final synthetic i(Lcom/transsion/ugcvideodetail/hepler/e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->p:Z

    return p0
.end method

.method public static final synthetic j(Lcom/transsion/ugcvideodetail/hepler/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/hepler/e;->t()V

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/ugcvideodetail/hepler/e;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/ugcvideodetail/hepler/e;->o:I

    return-void
.end method

.method public static final synthetic l(Lcom/transsion/ugcvideodetail/hepler/e;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ugcvideodetail/hepler/e;->p:Z

    return-void
.end method

.method private final m()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->f:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/transsion/ugcvideodetail/hepler/e$c;

    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/hepler/e$c;-><init>(Lcom/transsion/ugcvideodetail/hepler/e;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->f:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/transsion/ugcvideodetail/hepler/e;->o:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method

.method private final n()V
    .locals 0

    return-void
.end method

.method private final o()V
    .locals 4

    new-instance v0, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/e;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->setFollowTouch(Z)V

    new-instance v1, Lcom/transsion/ugcvideodetail/hepler/e$b;

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/hepler/e;->f:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v3, p0, Lcom/transsion/ugcvideodetail/hepler/e;->q:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lcom/transsion/ugcvideodetail/hepler/e$b;-><init>(Lcom/transsion/ugcvideodetail/hepler/e;Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;)V

    iput-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/e;->m:Lcom/transsion/ugcvideodetail/hepler/e$b;

    invoke-virtual {v0, v1}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->setAdapter(Lik/a;)V

    iput-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->l:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/e;->e:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lh00/a;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->e:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/transsion/ugcvideodetail/hepler/e;->o:I

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    :cond_1
    return-void
.end method

.method private final p()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->a:Landroidx/fragment/app/Fragment;

    new-instance v1, Lcom/transsion/ugcvideodetail/hepler/e$d;

    invoke-direct {v1, p0, v0}, Lcom/transsion/ugcvideodetail/hepler/e$d;-><init>(Lcom/transsion/ugcvideodetail/hepler/e;Landroidx/fragment/app/Fragment;)V

    iput-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/e;->n:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->f:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->f:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setUserInputEnabled(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/hepler/e;->m()V

    return-void
.end method

.method private final q()V
    .locals 7

    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/e;->a:Landroidx/fragment/app/Fragment;

    new-instance v6, Lcom/transsion/ugcvideodetail/hepler/d;

    invoke-direct {v6, p0}, Lcom/transsion/ugcvideodetail/hepler/d;-><init>(Lcom/transsion/ugcvideodetail/hepler/e;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v2, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v2}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v2, Lcom/transsion/user/action/sync/event/CommentEvent;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getName(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v4

    invoke-virtual {v4}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final r(Lcom/transsion/ugcvideodetail/hepler/e;Lcom/transsion/user/action/sync/event/CommentEvent;)Lkotlin/Unit;
    .locals 6

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/hepler/e;->c:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/user/action/sync/event/CommentEvent;->getSubjectId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/e;->c:Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getCommentNum()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    const/4 v2, 0x1

    add-int/2addr p1, v2

    const/16 v3, 0x63

    const-string v4, ""

    if-le p1, v3, :cond_2

    :try_start_1
    const-string p1, "99+"

    goto :goto_2

    :cond_2
    if-gtz p1, :cond_3

    move-object p1, v4

    goto :goto_2

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    iget-object v3, p0, Lcom/transsion/ugcvideodetail/hepler/e;->q:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->l:Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;

    if-eqz p0, :cond_5

    invoke-virtual {p0, v2}, Lcom/transsion/baseui/widget/magicindicator/ORCommonNavigator;->getPagerTitleView(I)Lj00/d;

    move-result-object p0

    goto :goto_4

    :cond_5
    move-object p0, v1

    :goto_4
    instance-of v2, p0, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;

    if-eqz v2, :cond_6

    check-cast p0, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;

    goto :goto_5

    :cond_6
    move-object p0, v1

    :goto_5
    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;->setTitle(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :goto_6
    sget-object p1, Llg/a;->a:Llg/a$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " callback change data fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    invoke-static {p1, p0, v0, v2, v1}, Llg/a$a;->g(Llg/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    :cond_7
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final t()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->k:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final s(Z)V
    .locals 4

    sget-object v0, Lcom/transsion/baseui/util/c;->a:Lcom/transsion/baseui/util/c;

    const v1, 0x1636f

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/util/c;->a(IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->y0()Ljava/util/List;

    move-result-object v0

    const-string v1, "getFragments(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    instance-of v2, v1, Lix/a;

    if-eqz v2, :cond_2

    check-cast v1, Lix/a;

    invoke-interface {v1, p1}, Lix/a;->onScreenChange(Z)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
