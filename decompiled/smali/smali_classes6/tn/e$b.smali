.class public final Ltn/e$b;
.super Lik/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltn/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final b:Landroidx/viewpager2/widget/ViewPager2;

.field private final c:Ljava/util/List;

.field private final d:Z

.field private final e:Z

.field final synthetic f:Ltn/e;


# direct methods
.method public constructor <init>(Ltn/e;Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;ZZ)V
    .locals 1

    const-string v0, "tabList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ltn/e$b;->f:Ltn/e;

    invoke-direct {p0}, Lik/a;-><init>()V

    iput-object p2, p0, Ltn/e$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, Ltn/e$b;->c:Ljava/util/List;

    iput-boolean p4, p0, Ltn/e$b;->d:Z

    iput-boolean p5, p0, Ltn/e$b;->e:Z

    return-void
.end method

.method public static synthetic i(ILtn/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Ltn/e$b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ltn/e$b;->k(ILtn/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Ltn/e$b;Landroid/view/View;)V

    return-void
.end method

.method private final j()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x6

    invoke-static {v1}, Ldk/a;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/4 v1, 0x2

    invoke-static {v1}, Ldk/a;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-object v0
.end method

.method private static final k(ILtn/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Ltn/e$b;Landroid/view/View;)V
    .locals 1

    const/4 p4, 0x1

    if-ne p0, p4, :cond_0

    invoke-static {p1}, Ltn/e;->l(Ltn/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ltn/e;->n(Ltn/e;Z)V

    invoke-virtual {p2, v0}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;->setDotVisibility(Z)V

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string p2, "key_subj_comment_dot"

    invoke-virtual {p1, p2, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object p1, p3, Ltn/e$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0, p4}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-boolean v0, p0, Ltn/e$b;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ltn/e$b;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltn/e$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltn/e$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public b(Landroid/content/Context;)Lj00/c;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setMode(I)V

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineHeight(F)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    aput-object v1, v2, p1

    const/4 p1, 0x2

    aput-object v1, v2, p1

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    return-object v0
.end method

.method public c(Landroid/content/Context;I)Lj00/d;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;

    invoke-direct {v0, p1}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Ltn/e$b;->f:Ltn/e;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-static {p1}, Ltn/e;->l(Ltn/e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;->setDotVisibility(Z)V

    :cond_0
    iget-object v1, p0, Ltn/e$b;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "get(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;->setTitle(Ljava/lang/String;)V

    new-instance v1, Ltn/f;

    invoke-direct {v1, p2, p1, v0, p0}, Ltn/f;-><init>(ILtn/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Ltn/e$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public h(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ltn/e$b;->j()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method
