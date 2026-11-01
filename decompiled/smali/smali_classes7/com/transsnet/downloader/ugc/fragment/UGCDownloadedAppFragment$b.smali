.class public final Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;
.super Lik/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final b:Landroidx/viewpager2/widget/ViewPager2;

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;)V
    .locals 1

    const-string v0, "tabList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lik/a;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic i(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;->j(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;ILandroid/view/View;)V

    return-void
.end method

.method private static final j(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;ILandroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)Lj00/c;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;

    invoke-direct {v0, p1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    aput-object v1, v2, p1

    const/4 p1, 0x1

    aput-object v1, v2, p1

    const/4 p1, 0x2

    aput-object v1, v2, p1

    invoke-virtual {v0, v2}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/indicators/LinePagerIndicator;->setColors([Ljava/lang/Integer;)V

    return-object v0
.end method

.method public c(Landroid/content/Context;I)Lj00/d;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsnet/downloader/widget/UGCSecondTabTitleView;

    invoke-direct {v0, p1}, Lcom/transsnet/downloader/widget/UGCSecondTabTitleView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/transsnet/downloader/widget/UGCSecondTabTitleView;->setTitle(Ljava/lang/String;)V

    new-instance p1, Lcom/transsnet/downloader/ugc/fragment/t;

    invoke-direct {p1, p0, p2}, Lcom/transsnet/downloader/ugc/fragment/t;-><init>(Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public h(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x4

    invoke-static {v0}, Ldk/a;->b(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    mul-int/lit8 v0, v0, 0x3

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/transsnet/downloader/ugc/fragment/UGCDownloadedAppFragment$b;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_1

    mul-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-object p1
.end method
