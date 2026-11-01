.class public final Lcom/transsion/home/fragment/home/HomeSearchViewManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;
    }
.end annotation


# instance fields
.field private final a:Lgl/r;

.field private final b:Lcom/transsion/home/fragment/home/HomeFragment;

.field private c:Lcom/transsion/home/fragment/home/t;

.field private d:Landroid/content/Context;

.field private final e:Ljava/util/ArrayList;

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

.field private i:Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;

.field private j:Z

.field private k:Landroidx/constraintlayout/widget/ConstraintLayout$b;

.field private l:Lkotlinx/coroutines/n0;

.field private final m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lgl/r;Lcom/transsion/home/fragment/home/HomeFragment;)V
    .locals 1

    const-string v0, "mViewBinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mFragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iput-object p2, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->l:Lkotlinx/coroutines/n0;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/transsion/home/fragment/home/w;

    invoke-direct {v0, p0}, Lcom/transsion/home/fragment/home/w;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->m:Landroid/os/Handler;

    return-void
.end method

.method private final A(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object v0, v0, Lgl/r;->p:Lcom/tn/lib/widget/TnTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/TnTextView;->setTextWithString(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/HotSearchKeyWord;

    iget-object v2, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/transsion/home/bean/HotSearchKeyWord;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object p1, p1, Lgl/r;->m:Landroid/widget/TextSwitcher;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/transsion/home/fragment/home/d0;

    invoke-direct {v0, p0}, Lcom/transsion/home/fragment/home/d0;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    :cond_2
    iget v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f:I

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-direct {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->q()Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->J()Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->N(Lcom/transsion/home/fragment/home/HomeSearchViewManager;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final B(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Landroid/view/View;
    .locals 2

    iget-object p0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/transsion/home/R$layout;->view_text:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private final E(Z)V
    .locals 6

    sget-object v0, Lcom/transsion/home/view/g;->a:Lcom/transsion/home/view/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/home/view/g;->b(Z)V

    sget-object v0, Lyj/a;->a:Lyj/a$a;

    const-class v1, Lyj/b;

    invoke-virtual {v0, v1}, Lyj/a$a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyj/b;

    const-string v1, "requireContext(...)"

    const-string v2, ""

    if-eqz p1, :cond_2

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->g:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    iget-object v3, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v4, v2, v3, v5}, Lyj/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V

    goto :goto_3

    :cond_2
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->g:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    iget-object v3, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3, v4}, Lyj/b;->b(Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V

    :cond_4
    :goto_3
    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->K(Z)V

    return-void
.end method

.method static synthetic F(Lcom/transsion/home/fragment/home/HomeSearchViewManager;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->E(Z)V

    return-void
.end method

.method private static final H(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/os/Message;)Z
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f:I

    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    iget v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    rem-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object v0, v0, Lgl/r;->m:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->N(Lcom/transsion/home/fragment/home/HomeSearchViewManager;ZILjava/lang/Object;)V

    :cond_1
    return v1
.end method

.method private final J()Landroid/view/animation/AnimationSet;
    .locals 10

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private final K(Z)V
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "search_button"

    goto :goto_0

    :cond_0
    const-string p1, "search"

    :goto_0
    const-string v1, "module_name"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->g:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    const-string v1, "hot_search_word"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object v1, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    sget-object v2, Lcom/transsion/home/enum/HomeTabId;->Companion:Lcom/transsion/home/enum/HomeTabId$a;

    invoke-virtual {v2}, Lcom/transsion/home/enum/HomeTabId$a;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/transsion/baselib/helper/a;->i(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic N(Lcom/transsion/home/fragment/home/HomeSearchViewManager;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->M(Z)V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->w(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b()Lkotlin/Unit;
    .locals 1

    invoke-static {}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->s()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->u(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Landroid/view/View;
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->B(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lcom/transsion/usercenterapi/UpdateResultEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->y(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lcom/transsion/usercenterapi/UpdateResultEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->p(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/os/Message;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->H(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->v(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lcom/transsion/home/bean/HotSubjectEntity;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->x(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lcom/transsion/home/bean/HotSubjectEntity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->d:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic k(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Lgl/r;
    .locals 0

    iget-object p0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    return-object p0
.end method

.method private final m(Z)V
    .locals 9

    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->h:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/tn/lib/widget/R$color;->common_white:I

    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/tn/lib/widget/R$color;->transparent:I

    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v1

    sget v2, Lnet/lucode/hackware/magicindicator/R$id;->title_container:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/transsion/baseui/widget/CustomPagerTitleView;

    if-eqz v6, :cond_1

    check-cast v5, Lcom/transsion/baseui/widget/CustomPagerTitleView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/tn/lib/widget/R$color;->white_60:I

    invoke-static {v6, v7}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setNormalColor(I)V

    invoke-virtual {v5, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/SimplePagerTitleView;->setSelectedColor(I)V

    iget-object v6, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    invoke-virtual {v6}, Lcom/transsion/home/fragment/home/HomeFragment;->I0()I

    move-result v6

    if-ne v4, v6, :cond_0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/tn/lib/widget/R$color;->white_60:I

    invoke-static {v6, v7}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, -0x1

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_1
    instance-of v6, v5, Lcom/transsion/home/view/CustomTabAdView;

    if-eqz v6, :cond_3

    check-cast v5, Lcom/transsion/home/view/CustomTabAdView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/tn/lib/widget/R$color;->white_60:I

    invoke-static {v6, v7}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/tn/lib/widget/R$color;->common_white:I

    invoke-static {v7, v8}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/transsion/home/view/CustomTabAdView;->changeTextColor(II)V

    iget-object v6, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    invoke-virtual {v6}, Lcom/transsion/home/fragment/home/HomeFragment;->I0()I

    move-result v6

    if-ne v4, v6, :cond_2

    invoke-virtual {v5, v0}, Lcom/transsion/home/view/CustomTabAdView;->setTextColor(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/tn/lib/widget/R$color;->white_60:I

    invoke-static {v6, v7}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/transsion/home/view/CustomTabAdView;->setTextColor(I)V

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->h:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    if-eqz p1, :cond_6

    sget v0, Lnet/lucode/hackware/magicindicator/R$id;->indicator_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_3
    if-ge v3, v0, :cond_6

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Lcom/tn/lib/view/GradientLinePagerIndicator;

    if-eqz v4, :cond_5

    check-cast v2, Lcom/tn/lib/view/GradientLinePagerIndicator;

    invoke-virtual {v2, v1, v1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setColors(III)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private final o()V
    .locals 2

    sget-object v0, Lcom/transsion/version/update/UpdateManager;->f:Lcom/transsion/version/update/UpdateManager$a;

    invoke-virtual {v0}, Lcom/transsion/version/update/UpdateManager$a;->a()Lcom/transsion/version/update/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/version/update/UpdateManager;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object v0, v0, Lgl/r;->i:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object v0, v0, Lgl/r;->i:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/transsion/home/fragment/home/c0;

    invoke-direct {v1, p0}, Lcom/transsion/home/fragment/home/c0;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object v0, v0, Lgl/r;->i:Landroidx/appcompat/widget/AppCompatImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private static final p(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->l:Lkotlinx/coroutines/n0;

    new-instance v3, Lcom/transsion/home/fragment/home/HomeSearchViewManager$handleUpdateIcon$1$1;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager$handleUpdateIcon$1$1;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private final q()Landroid/view/animation/AnimationSet;
    .locals 10

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v0, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object v0
.end method

.method private final r()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object v0, v0, Lgl/r;->p:Lcom/tn/lib/widget/TnTextView;

    new-instance v1, Lcom/transsion/home/fragment/home/e0;

    invoke-direct {v1}, Lcom/transsion/home/fragment/home/e0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/TnTextView;->setLocalChangeListener(Lkotlin/jvm/functions/Function0;)V

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "extra_language_activity_restart"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    sget-object v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->n:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;

    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;->a()Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->z()V

    :cond_1
    return-void
.end method

.method private static final s()Lkotlin/Unit;
    .locals 1

    sget-object v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->n:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;

    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;->a()Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->z()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method private final t()V
    .locals 11

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object v0, v0, Lgl/r;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/transsion/home/fragment/home/x;

    invoke-direct {v1, p0}, Lcom/transsion/home/fragment/home/x;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object v0, v0, Lgl/r;->q:Lcom/tn/lib/widget/TnTextView;

    new-instance v1, Lcom/transsion/home/fragment/home/y;

    invoke-direct {v1, p0}, Lcom/transsion/home/fragment/home/y;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object v0, v0, Lgl/r;->g:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Lcom/transsion/home/fragment/home/z;

    invoke-direct {v1}, Lcom/transsion/home/fragment/home/z;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->r()V

    sget-object v0, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->n:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;

    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;->a()Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->H()Landroidx/lifecycle/b0;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    new-instance v2, Lcom/transsion/home/fragment/home/a0;

    invoke-direct {v2, p0}, Lcom/transsion/home/fragment/home/a0;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V

    new-instance v3, Lcom/transsion/home/fragment/home/HomeSearchViewManager$b;

    invoke-direct {v3, v2}, Lcom/transsion/home/fragment/home/HomeSearchViewManager$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    iget-object v5, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    new-instance v10, Lcom/transsion/home/fragment/home/b0;

    invoke-direct {v10, p0}, Lcom/transsion/home/fragment/home/b0;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)V

    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/transsnet/flow/event/FlowEventBus;

    const-class v0, Lcom/transsion/usercenterapi/UpdateResultEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v0, "getName(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/a2;->d()Lkotlinx/coroutines/a2;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method private static final u(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->F(Lcom/transsion/home/fragment/home/HomeSearchViewManager;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final v(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->E(Z)V

    return-void
.end method

.method private static final w(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final x(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lcom/transsion/home/bean/HotSubjectEntity;)Lkotlin/Unit;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/bean/HotSubjectEntity;->getEveryoneSearch()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->A(Ljava/util/List;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final y(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lcom/transsion/usercenterapi/UpdateResultEvent;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->o()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final z(Lcom/transsion/home/bean/AppTab;)V
    .locals 2

    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->d:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-direct {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->h:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    new-instance v0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;

    invoke-direct {v0, p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;-><init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;Lcom/transsion/home/bean/AppTab;)V

    iput-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->i:Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;

    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->h:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;->setAdapter(Lj00/a;)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object p1, p1, Lgl/r;->k:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->h:Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/CommonNavigator;

    invoke-virtual {p1, v0}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->setNavigator(Lh00/a;)V

    return-void
.end method


# virtual methods
.method public final C(Lcom/transsion/home/bean/AppTab;)V
    .locals 6

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object v0, v0, Lgl/r;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object v1, v1, Lgl/r;->r:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->k:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->o()V

    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->z(Lcom/transsion/home/bean/AppTab;)V

    invoke-direct {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->t()V

    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance p1, Lcom/transsion/home/fragment/home/t;

    invoke-direct {p1}, Lcom/transsion/home/fragment/home/t;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->c:Lcom/transsion/home/fragment/home/t;

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object v0, v0, Lgl/r;->c:Landroid/widget/FrameLayout;

    const-string v1, "flGameCenter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object v1, v1, Lgl/r;->d:Landroid/widget/FrameLayout;

    const-string v2, "flPhoneCenter"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object v2, v2, Lgl/r;->g:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "ivMbLogo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->b:Lcom/transsion/home/fragment/home/HomeFragment;

    invoke-static {v3}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/transsion/home/fragment/home/t;->b(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/view/View;Lkotlinx/coroutines/n0;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Llg/a;->a:Llg/a$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HomeSearchViewManager --> initGameCenter() --> it --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "zxb_icon"

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Llg/a$a;->l(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    :goto_1
    new-instance p1, Lcom/transsion/home/fragment/home/v;

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->a:Lgl/r;

    iget-object v0, v0, Lgl/r;->h:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "ivNovelEnter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/transsion/home/fragment/home/v;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method

.method public final D()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->j:Z

    return v0
.end method

.method public final G()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->c:Lcom/transsion/home/fragment/home/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/fragment/home/t;->c()V

    :cond_0
    return-void
.end method

.method public final I(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const-string v0, "network"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "networkCapabilities"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->n:Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData$a;->a()Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/home/viewmodel/preload/PreloadTrendingData;->G()V

    :cond_0
    return-void
.end method

.method public final L()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final M(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f:I

    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f:I

    iget-object v1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->f:I

    :cond_1
    const/16 v0, 0x64

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->L()V

    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->m:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->L()V

    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->m:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method public final O(Lcom/transsion/home/bean/AppTab;)V
    .locals 1

    const-string v0, "appTab"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->i:Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->h(Lcom/transsion/home/bean/AppTab;)V

    :cond_0
    iget-boolean p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->j:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->m(Z)V

    :cond_1
    return-void
.end method

.method public final l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->j:Z

    invoke-direct {p0, p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->m(Z)V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->c:Lcom/transsion/home/fragment/home/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/fragment/home/t;->a()V

    :cond_0
    return-void
.end method
