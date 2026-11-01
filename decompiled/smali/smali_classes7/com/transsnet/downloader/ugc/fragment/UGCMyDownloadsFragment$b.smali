.class public final Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;
.super Lik/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final b:Landroidx/viewpager2/widget/ViewPager2;

.field private final c:Ljava/util/List;

.field final synthetic d:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;


# direct methods
.method public constructor <init>(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;)V
    .locals 1

    const-string v0, "tabList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;->d:Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment;

    invoke-direct {p0}, Lik/a;-><init>()V

    iput-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic i(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;->j(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;ILandroid/view/View;)V

    return-void
.end method

.method private static final j(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)Lj00/c;
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setMode(I)V

    invoke-static {v1}, Ldk/a;->b(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineHeight(F)V

    const/16 v2, 0x62

    invoke-static {v2}, Ldk/a;->b(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setLineWidth(F)V

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    sget v2, Lcom/tn/lib/widget/R$color;->text_01:I

    invoke-static {p1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/tn/lib/widget/R$color;->text_01:I

    invoke-static {p1, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/tn/lib/widget/R$color;->text_01:I

    invoke-static {p1, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    aput-object p1, v4, v1

    invoke-virtual {v0, v4}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    return-object v0
.end method

.method public c(Landroid/content/Context;I)Lj00/d;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsnet/downloader/widget/UGCMyDownloadsTabTitleView;

    invoke-direct {v0, p1}, Lcom/transsnet/downloader/widget/UGCMyDownloadsTabTitleView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Lcom/transsnet/downloader/ugc/fragment/o0;

    invoke-direct {p1, p0, p2}, Lcom/transsnet/downloader/ugc/fragment/o0;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCMyDownloadsFragment$b;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
