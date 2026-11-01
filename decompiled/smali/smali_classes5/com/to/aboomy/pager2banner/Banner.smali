.class public Lcom/to/aboomy/pager2banner/Banner;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/to/aboomy/pager2banner/Banner$e;,
        Lcom/to/aboomy/pager2banner/Banner$c;,
        Lcom/to/aboomy/pager2banner/Banner$d;
    }
.end annotation


# instance fields
.field private a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private b:Landroidx/viewpager2/widget/CompositePageTransformer;

.field private c:Lcom/to/aboomy/pager2banner/Banner$c;

.field private d:Landroidx/viewpager2/widget/ViewPager2;

.field private e:Lcom/to/aboomy/pager2banner/a;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:J

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private final r:I

.field private final s:Ljava/lang/Runnable;

.field private final t:Landroidx/recyclerview/widget/RecyclerView$g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/to/aboomy/pager2banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/to/aboomy/pager2banner/Banner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/to/aboomy/pager2banner/Banner;->f:Z

    iput-boolean p2, p0, Lcom/to/aboomy/pager2banner/Banner;->g:Z

    const-wide/16 v0, 0x9c4

    iput-wide v0, p0, Lcom/to/aboomy/pager2banner/Banner;->i:J

    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lcom/to/aboomy/pager2banner/Banner;->j:J

    const/4 p3, 0x2

    iput p3, p0, Lcom/to/aboomy/pager2banner/Banner;->k:I

    div-int/2addr p3, p3

    iput p3, p0, Lcom/to/aboomy/pager2banner/Banner;->l:I

    new-instance p3, Lcom/to/aboomy/pager2banner/Banner$1;

    invoke-direct {p3, p0}, Lcom/to/aboomy/pager2banner/Banner$1;-><init>(Lcom/to/aboomy/pager2banner/Banner;)V

    iput-object p3, p0, Lcom/to/aboomy/pager2banner/Banner;->s:Ljava/lang/Runnable;

    new-instance p3, Lcom/to/aboomy/pager2banner/Banner$a;

    invoke-direct {p3, p0}, Lcom/to/aboomy/pager2banner/Banner$a;-><init>(Lcom/to/aboomy/pager2banner/Banner;)V

    iput-object p3, p0, Lcom/to/aboomy/pager2banner/Banner;->t:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    shr-int/lit8 p2, p3, 0x1

    iput p2, p0, Lcom/to/aboomy/pager2banner/Banner;->r:I

    invoke-direct {p0, p1}, Lcom/to/aboomy/pager2banner/Banner;->s(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
    .locals 0

    iget-object p0, p0, Lcom/to/aboomy/pager2banner/Banner;->a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-object p0
.end method

.method static synthetic b(Lcom/to/aboomy/pager2banner/Banner;)Lcom/to/aboomy/pager2banner/a;
    .locals 0

    iget-object p0, p0, Lcom/to/aboomy/pager2banner/Banner;->e:Lcom/to/aboomy/pager2banner/a;

    return-object p0
.end method

.method static synthetic c(Lcom/to/aboomy/pager2banner/Banner;)I
    .locals 0

    iget p0, p0, Lcom/to/aboomy/pager2banner/Banner;->k:I

    return p0
.end method

.method static synthetic d(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/recyclerview/widget/RecyclerView$g;
    .locals 0

    iget-object p0, p0, Lcom/to/aboomy/pager2banner/Banner;->t:Landroidx/recyclerview/widget/RecyclerView$g;

    return-object p0
.end method

.method static synthetic e(Lcom/to/aboomy/pager2banner/Banner;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/to/aboomy/pager2banner/Banner;->t(I)V

    return-void
.end method

.method static synthetic f(Lcom/to/aboomy/pager2banner/Banner;)J
    .locals 2

    iget-wide v0, p0, Lcom/to/aboomy/pager2banner/Banner;->j:J

    return-wide v0
.end method

.method static synthetic g(Lcom/to/aboomy/pager2banner/Banner;)I
    .locals 0

    iget p0, p0, Lcom/to/aboomy/pager2banner/Banner;->m:I

    return p0
.end method

.method private getRealCount()I
    .locals 1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->c:Lcom/to/aboomy/pager2banner/Banner$c;

    invoke-virtual {v0}, Lcom/to/aboomy/pager2banner/Banner$c;->h()I

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/to/aboomy/pager2banner/Banner;I)I
    .locals 0

    iput p1, p0, Lcom/to/aboomy/pager2banner/Banner;->m:I

    return p1
.end method

.method static synthetic i(Lcom/to/aboomy/pager2banner/Banner;)I
    .locals 2

    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/to/aboomy/pager2banner/Banner;->m:I

    return v0
.end method

.method static synthetic j(Lcom/to/aboomy/pager2banner/Banner;)I
    .locals 0

    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/Banner;->getRealCount()I

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/to/aboomy/pager2banner/Banner;)I
    .locals 0

    iget p0, p0, Lcom/to/aboomy/pager2banner/Banner;->l:I

    return p0
.end method

.method static synthetic l(Lcom/to/aboomy/pager2banner/Banner;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/to/aboomy/pager2banner/Banner;->g:Z

    return p0
.end method

.method static synthetic m(Lcom/to/aboomy/pager2banner/Banner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/to/aboomy/pager2banner/Banner;->g:Z

    return p1
.end method

.method static synthetic n(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    iget-object p0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method static synthetic o(Lcom/to/aboomy/pager2banner/Banner;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/to/aboomy/pager2banner/Banner;->s:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic p(Lcom/to/aboomy/pager2banner/Banner;)J
    .locals 2

    iget-wide v0, p0, Lcom/to/aboomy/pager2banner/Banner;->i:J

    return-wide v0
.end method

.method static synthetic q(Lcom/to/aboomy/pager2banner/Banner;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/to/aboomy/pager2banner/Banner;->u(I)I

    move-result p0

    return p0
.end method

.method private r()V
    .locals 7

    const-string v0, "mLayoutManager"

    const-class v1, Landroidx/viewpager2/widget/ViewPager2;

    :try_start_0
    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/View;->setOverScrollMode(I)V

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    new-instance v4, Lcom/to/aboomy/pager2banner/Banner$e;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5, v3}, Lcom/to/aboomy/pager2banner/Banner$e;-><init>(Lcom/to/aboomy/pager2banner/Banner;Landroid/content/Context;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    const-class v5, Landroidx/recyclerview/widget/RecyclerView$m;

    const-string v6, "mRecyclerView"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v5, v3, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v3, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "mPageTransformerAdapter"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v3, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    const-string v2, "mScrollEventAdapter"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_3
    return-void
.end method

.method private s(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-direct {v0}, Landroidx/viewpager2/widget/CompositePageTransformer;-><init>()V

    iput-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->b:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    iget-object p1, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lcom/to/aboomy/pager2banner/Banner$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/to/aboomy/pager2banner/Banner$d;-><init>(Lcom/to/aboomy/pager2banner/Banner;Lcom/to/aboomy/pager2banner/Banner$1;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object p1, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v0, Lcom/to/aboomy/pager2banner/Banner$c;

    invoke-direct {v0, p0, v1}, Lcom/to/aboomy/pager2banner/Banner$c;-><init>(Lcom/to/aboomy/pager2banner/Banner;Lcom/to/aboomy/pager2banner/Banner$1;)V

    iput-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->c:Lcom/to/aboomy/pager2banner/Banner$c;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/to/aboomy/pager2banner/Banner;->setOffscreenPageLimit(I)Lcom/to/aboomy/pager2banner/Banner;

    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/Banner;->r()V

    iget-object p1, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private t(I)V
    .locals 2

    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner;->c:Lcom/to/aboomy/pager2banner/Banner$c;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->c:Lcom/to/aboomy/pager2banner/Banner$c;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/to/aboomy/pager2banner/Banner;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/to/aboomy/pager2banner/Banner;->e:Lcom/to/aboomy/pager2banner/a;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/Banner;->getRealCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->getCurrentPager()I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/to/aboomy/pager2banner/a;->initIndicatorCount(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->isAutoPlay()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->startTurning()V

    :cond_2
    return-void
.end method

.method private u(I)I
    .locals 2

    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/Banner;->getRealCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->l:I

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/Banner;->getRealCount()I

    move-result v0

    rem-int/2addr p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-gez p1, :cond_1

    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/Banner;->getRealCount()I

    move-result v0

    add-int/2addr p1, v0

    :cond_1
    return p1
.end method


# virtual methods
.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    return-object p0
.end method

.method public addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;I)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;I)V

    return-object p0
.end method

.method public addPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->b:Landroidx/viewpager2/widget/CompositePageTransformer;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/CompositePageTransformer;->addTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-object p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->stopTurning()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->startTurning()V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->c:Lcom/to/aboomy/pager2banner/Banner$c;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner$c;->g(Lcom/to/aboomy/pager2banner/Banner$c;)Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPager()I
    .locals 2

    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->m:I

    invoke-direct {p0, v0}, Lcom/to/aboomy/pager2banner/Banner;->u(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getViewPager2()Landroidx/viewpager2/widget/ViewPager2;
    .locals 1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    return-object v0
.end method

.method public isAutoPlay()Z
    .locals 2

    iget-boolean v0, p0, Lcom/to/aboomy/pager2banner/Banner;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/Banner;->getRealCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->startTurning()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->stopTurning()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/to/aboomy/pager2banner/Banner;->p:F

    iput v0, p0, Lcom/to/aboomy/pager2banner/Banner;->n:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/to/aboomy/pager2banner/Banner;->q:F

    iput v0, p0, Lcom/to/aboomy/pager2banner/Banner;->o:F

    goto :goto_2

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/to/aboomy/pager2banner/Banner;->p:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/to/aboomy/pager2banner/Banner;->q:F

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->isUserInputEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->p:F

    iget v1, p0, Lcom/to/aboomy/pager2banner/Banner;->n:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/to/aboomy/pager2banner/Banner;->q:F

    iget v4, p0, Lcom/to/aboomy/pager2banner/Banner;->o:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v4, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v4}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/to/aboomy/pager2banner/Banner;->r:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/to/aboomy/pager2banner/Banner;->r:I

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    if-ne v0, v3, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    :goto_3
    iget p1, p0, Lcom/to/aboomy/pager2banner/Banner;->p:F

    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->n:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->r:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_6

    iget p1, p0, Lcom/to/aboomy/pager2banner/Banner;->q:F

    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->o:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->r:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    :cond_6
    move v2, v3

    :cond_7
    return v2
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/to/aboomy/pager2banner/Banner;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->c:Lcom/to/aboomy/pager2banner/Banner$c;

    invoke-virtual {v0, p1}, Lcom/to/aboomy/pager2banner/Banner$c;->i(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-direct {p0, p2}, Lcom/to/aboomy/pager2banner/Banner;->t(I)V

    return-void
.end method

.method public setAutoPlay(Z)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1

    iput-boolean p1, p0, Lcom/to/aboomy/pager2banner/Banner;->f:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/to/aboomy/pager2banner/Banner;->getRealCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->startTurning()V

    :cond_0
    return-object p0
.end method

.method public setAutoTurningTime(J)Lcom/to/aboomy/pager2banner/Banner;
    .locals 0

    iput-wide p1, p0, Lcom/to/aboomy/pager2banner/Banner;->i:J

    return-object p0
.end method

.method public setCurrentItem(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/to/aboomy/pager2banner/Banner;->setCurrentItem(IZ)V

    return-void
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    iget v0, p0, Lcom/to/aboomy/pager2banner/Banner;->l:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/to/aboomy/pager2banner/Banner;->m:I

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    return-void
.end method

.method public setIndicator(Lcom/to/aboomy/pager2banner/a;)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/to/aboomy/pager2banner/Banner;->setIndicator(Lcom/to/aboomy/pager2banner/a;Z)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object p1

    return-object p1
.end method

.method public setIndicator(Lcom/to/aboomy/pager2banner/a;Z)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->e:Lcom/to/aboomy/pager2banner/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/to/aboomy/pager2banner/a;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner;->e:Lcom/to/aboomy/pager2banner/a;

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/to/aboomy/pager2banner/a;->getView()Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/to/aboomy/pager2banner/Banner;->e:Lcom/to/aboomy/pager2banner/a;

    invoke-interface {p2}, Lcom/to/aboomy/pager2banner/a;->getParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-object p0
.end method

.method public setOffscreenPageLimit(I)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    return-object p0
.end method

.method public setOrientation(I)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    return-object p0
.end method

.method public setOuterPageChangeListener(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)Lcom/to/aboomy/pager2banner/Banner;
    .locals 0

    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner;->a:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-object p0
.end method

.method public setPageMargin(II)Lcom/to/aboomy/pager2banner/Banner;
    .locals 0

    invoke-virtual {p0, p1, p1, p2}, Lcom/to/aboomy/pager2banner/Banner;->setPageMargin(III)Lcom/to/aboomy/pager2banner/Banner;

    move-result-object p1

    return-object p1
.end method

.method public setPageMargin(III)Lcom/to/aboomy/pager2banner/Banner;
    .locals 4

    const/4 v0, 0x0

    if-gez p3, :cond_0

    move p3, v0

    :cond_0
    new-instance v1, Landroidx/viewpager2/widget/MarginPageTransformer;

    invoke-direct {v1, p3}, Landroidx/viewpager2/widget/MarginPageTransformer;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/to/aboomy/pager2banner/Banner;->addPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)Lcom/to/aboomy/pager2banner/Banner;

    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroidx/viewpager2/widget/ViewPager2;->getOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr p1, v3

    iget-object v3, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr p2, p3

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/2addr p2, p3

    iget-object p3, p0, Lcom/to/aboomy/pager2banner/Banner;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    const/4 p1, 0x4

    iput p1, p0, Lcom/to/aboomy/pager2banner/Banner;->k:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/to/aboomy/pager2banner/Banner;->l:I

    return-object p0
.end method

.method public setPagerScrollDuration(J)Lcom/to/aboomy/pager2banner/Banner;
    .locals 0

    iput-wide p1, p0, Lcom/to/aboomy/pager2banner/Banner;->j:J

    return-object p0
.end method

.method public setRoundCorners(F)Lcom/to/aboomy/pager2banner/Banner;
    .locals 1

    new-instance v0, Lcom/to/aboomy/pager2banner/Banner$b;

    invoke-direct {v0, p0, p1}, Lcom/to/aboomy/pager2banner/Banner$b;-><init>(Lcom/to/aboomy/pager2banner/Banner;F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-object p0
.end method

.method public startTurning()V
    .locals 3

    invoke-virtual {p0}, Lcom/to/aboomy/pager2banner/Banner;->stopTurning()V

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->s:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/to/aboomy/pager2banner/Banner;->i:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/to/aboomy/pager2banner/Banner;->h:Z

    return-void
.end method

.method public stopTurning()V
    .locals 1

    iget-boolean v0, p0, Lcom/to/aboomy/pager2banner/Banner;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner;->s:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/to/aboomy/pager2banner/Banner;->h:Z

    :cond_0
    return-void
.end method
