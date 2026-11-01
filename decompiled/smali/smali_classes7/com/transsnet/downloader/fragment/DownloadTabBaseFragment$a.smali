.class public final Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;
.super Lik/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final b:Landroidx/viewpager2/widget/ViewPager2;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field final synthetic e:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;


# direct methods
.method public constructor <init>(Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;Landroidx/viewpager2/widget/ViewPager2;Ljava/util/List;)V
    .locals 1

    const-string v0, "defList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->e:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    invoke-direct {p0}, Lik/a;-><init>()V

    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->b:Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->c:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->d:Ljava/util/List;

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic i(ILcom/transsnet/downloader/fragment/DownloadTabBaseFragment;Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->l(ILcom/transsnet/downloader/fragment/DownloadTabBaseFragment;Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;Landroid/view/View;)V

    return-void
.end method

.method private final j(ILjava/util/List;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x4

    invoke-static {v1}, Ldk/a;->b(I)I

    move-result v1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    mul-int/lit8 p1, v1, 0x2

    move v3, v2

    move v2, p1

    move p1, v3

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_1

    mul-int/lit8 p1, v1, 0x2

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    return-object v0
.end method

.method private static final l(ILcom/transsnet/downloader/fragment/DownloadTabBaseFragment;Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;Landroid/view/View;)V
    .locals 0

    const/4 p3, 0x2

    if-ne p0, p3, :cond_0

    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->l0()Lcom/transsnet/downloader/widget/FileManagerTabTitleView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/transsnet/downloader/widget/FileManagerTabTitleView;->setDotVisibility(Z)V

    :cond_0
    iget-object p1, p2, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->b:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->d:Ljava/util/List;

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
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsnet/downloader/widget/FileManagerTabTitleView;

    invoke-direct {v0, p1}, Lcom/transsnet/downloader/widget/FileManagerTabTitleView;-><init>(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->e:Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;

    instance-of v1, p1, Lcom/transsnet/downloader/fragment/FileManagerFragment;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/transsnet/downloader/fragment/FileManagerFragment;

    invoke-virtual {v1, v0}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment;->x0(Lcom/transsnet/downloader/widget/FileManagerTabTitleView;)V

    :cond_0
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->d:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsnet/downloader/widget/FileManagerTabTitleView;->setTitle(Ljava/lang/String;)V

    new-instance v1, Lcom/transsnet/downloader/fragment/b5;

    invoke-direct {v1, p2, p1, p0}, Lcom/transsnet/downloader/fragment/b5;-><init>(ILcom/transsnet/downloader/fragment/DownloadTabBaseFragment;Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public h(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->d:Ljava/util/List;

    invoke-direct {p0, p2, p1}, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->j(ILjava/util/List;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public final k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadTabBaseFragment$a;->d:Ljava/util/List;

    return-object v0
.end method
