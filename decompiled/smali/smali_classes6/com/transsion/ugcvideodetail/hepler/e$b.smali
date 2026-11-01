.class public final Lcom/transsion/ugcvideodetail/hepler/e$b;
.super Lik/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ugcvideodetail/hepler/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final b:Landroidx/viewpager2/widget/ViewPager2;

.field private final c:Ljava/util/List;

.field final synthetic d:Lcom/transsion/ugcvideodetail/hepler/e;


# direct methods
.method public constructor <init>(Lcom/transsion/ugcvideodetail/hepler/e;Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;)V
    .locals 1

    const-string v0, "tabList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->d:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-direct {p0}, Lik/a;-><init>()V

    iput-object p2, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic i(ILcom/transsion/ugcvideodetail/hepler/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Lcom/transsion/ugcvideodetail/hepler/e$b;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/ugcvideodetail/hepler/e$b;->k(ILcom/transsion/ugcvideodetail/hepler/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Lcom/transsion/ugcvideodetail/hepler/e$b;Landroid/view/View;)V

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

.method private static final k(ILcom/transsion/ugcvideodetail/hepler/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Lcom/transsion/ugcvideodetail/hepler/e$b;Landroid/view/View;)V
    .locals 1

    const/4 p4, 0x1

    if-ne p0, p4, :cond_0

    invoke-static {p1}, Lcom/transsion/ugcvideodetail/hepler/e;->i(Lcom/transsion/ugcvideodetail/hepler/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/ugcvideodetail/hepler/e;->l(Lcom/transsion/ugcvideodetail/hepler/e;Z)V

    invoke-virtual {p2, v0}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;->setDotVisibility(Z)V

    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    move-result-object p1

    const-string p2, "key_subj_comment_dot"

    invoke-virtual {p1, p2, v0}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_0
    iget-object p1, p3, Lcom/transsion/ugcvideodetail/hepler/e$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p0, p4}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->d:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/e;->f(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    move-result-object v0

    sget-object v1, Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;->LOCAL_VIDEO:Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->d:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/e;->g(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->d:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/e;->g(Lcom/transsion/ugcvideodetail/hepler/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public b(Landroid/content/Context;)Lj00/c;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "context"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->d:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v2}, Lcom/transsion/ugcvideodetail/hepler/e;->f(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    move-result-object v2

    sget-object v3, Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;->LOCAL_VIDEO:Lcom/transsion/ugcvideodetail/hepler/UGCVideoPlayFrom;

    if-ne v2, v3, :cond_0

    new-instance v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    invoke-direct {v2, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object p1, v0, v1

    invoke-virtual {v2, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    invoke-direct {v2, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setMode(I)V

    const/high16 p1, 0x40400000    # 3.0f

    invoke-static {p1}, Lcom/blankj/utilcode/util/i;->e(F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineHeight(F)V

    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p1, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Integer;

    aput-object v3, v5, v1

    aput-object v4, v5, v0

    const/4 v0, 0x2

    aput-object p1, v5, v0

    invoke-virtual {v2, v5}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    :goto_0
    return-object v2
.end method

.method public c(Landroid/content/Context;I)Lj00/d;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;

    invoke-direct {v0, p1}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->d:Lcom/transsion/ugcvideodetail/hepler/e;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    invoke-static {p1}, Lcom/transsion/ugcvideodetail/hepler/e;->i(Lcom/transsion/ugcvideodetail/hepler/e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;->setDotVisibility(Z)V

    invoke-static {p1}, Lcom/transsion/ugcvideodetail/hepler/e;->h(Lcom/transsion/ugcvideodetail/hepler/e;)Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getInteractiveInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoInteractiveInfo;->getCommentNum()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x63

    const-string v3, ""

    if-le v1, v2, :cond_1

    const-string v1, "99+"

    goto :goto_1

    :cond_1
    if-gtz v1, :cond_2

    move-object v1, v3

    goto :goto_1

    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->c:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;->setTitle(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/hepler/e$b;->c:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;->setTitle(Ljava/lang/String;)V

    :goto_3
    new-instance v1, Lcom/transsion/ugcvideodetail/hepler/f;

    invoke-direct {v1, p2, p1, v0, p0}, Lcom/transsion/ugcvideodetail/hepler/f;-><init>(ILcom/transsion/ugcvideodetail/hepler/e;Lcom/transsion/play/detail/widget/PlayDetailResTabTitleView;Lcom/transsion/ugcvideodetail/hepler/e$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public h(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/hepler/e$b;->j()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method
