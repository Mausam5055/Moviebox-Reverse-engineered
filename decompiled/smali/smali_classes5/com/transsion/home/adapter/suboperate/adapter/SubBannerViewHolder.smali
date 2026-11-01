.class public final Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# instance fields
.field private final a:I

.field private final b:Lcom/transsion/home/adapter/suboperate/provider/i;

.field private final c:Lcom/transsion/home/bean/OperateItem;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field private final f:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ILcom/transsion/home/adapter/suboperate/provider/i;Lcom/transsion/home/bean/OperateItem;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operateItem"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    iput p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->a:I

    iput-object p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    iput-object p4, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->c:Lcom/transsion/home/bean/OperateItem;

    sget p2, Lcom/transsion/home/R$id;->home_sub_pager_items_status:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->d:Landroid/view/View;

    sget p2, Lcom/transsion/home/R$id;->home_sub_pager_items_top_mask:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->e:Landroid/view/View;

    sget p2, Lcom/transsion/home/R$id;->home_sub_pager_item_image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->f:Landroid/widget/ImageView;

    return-void
.end method

.method public static synthetic f(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->h(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;ILandroid/view/View;)V

    return-void
.end method

.method private static final h(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;ILandroid/view/View;)V
    .locals 7

    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getDeepLink()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    sget-object v0, Lcom/transsion/baselib/helper/b;->a:Lcom/transsion/baselib/helper/b;

    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getOps()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&module_name=opt_banner_free&autoPlay=true&ops="

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/transsion/baselib/helper/b;->g(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-static {p3}, Lak/k;->o(Landroid/net/Uri;)V

    :cond_1
    sget-object p3, Lcom/transsnet/downloader/DownloadManagerApi;->j:Lcom/transsnet/downloader/DownloadManagerApi$a;

    invoke-virtual {p3}, Lcom/transsnet/downloader/DownloadManagerApi$a;->a()Lcom/transsnet/downloader/DownloadManagerApi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/transsnet/downloader/DownloadManagerApi;->x0(Lcom/transsnet/downloader/DownloadManagerApi;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "play_subject"

    goto :goto_0

    :cond_2
    const-string p3, "download_subject"

    :goto_0
    invoke-direct {p1, p0, p2, p3}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->k(Lcom/transsion/home/bean/BannerData;ILjava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final i(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;
    .locals 5

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v2, 0xff

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    const/16 v3, 0x99

    invoke-static {v3, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    filled-new-array {v2, v3, p1}, [I

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    sget-object p1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    return-object v0
.end method

.method private final j(Lcom/transsion/home/bean/BannerData;I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getSubjectId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/home/adapter/suboperate/provider/i;->T(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "browse_banner"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sequence"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->a:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "tabId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_2

    invoke-static {p1, v0}, Lil/b;->c(Lcom/transsion/home/bean/BannerData;Ljava/util/Map;)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->c:Lcom/transsion/home/bean/OperateItem;

    invoke-static {p1, v0}, Lil/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->a:I

    invoke-virtual {p2, v1}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final k(Lcom/transsion/home/bean/BannerData;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event_type"

    const-string v2, "click_banner_poster"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sequence"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "module_name"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->a:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "tabId"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    invoke-static {p1, v0}, Lil/b;->c(Lcom/transsion/home/bean/BannerData;Ljava/util/Map;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->c:Lcom/transsion/home/bean/OperateItem;

    invoke-static {p1, v0}, Lil/b;->a(Lcom/transsion/home/bean/OperateItem;Ljava/util/Map;)V

    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    sget-object p2, Lcom/transsion/home/fragment/tab/SubTabFragment;->u:Lcom/transsion/home/fragment/tab/SubTabFragment$a;

    iget p3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->a:I

    invoke-virtual {p2, p3}, Lcom/transsion/home/fragment/tab/SubTabFragment$a;->a(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/transsion/baselib/helper/a;->f(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final g(Lcom/transsion/home/bean/BannerData;I)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Loh/h;->a:Loh/h;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Loh/h;->e(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getBuiltIn()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v4

    new-instance v7, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder$bindData$1;

    invoke-direct {v7, p1, p0, v3}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder$bindData$1;-><init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_1

    :cond_1
    sget-object v1, Lej/f;->a:Lej/f$a;

    iget-object v4, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->f:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object v2

    const-string v4, ""

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_2
    move-object v2, v4

    :cond_3
    invoke-virtual {v1, v2}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move-object v4, v1

    :cond_5
    :goto_0
    invoke-virtual {v0, v4}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :goto_1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/d;->c()I

    move-result v1

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getAverageHueDark()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v3

    :goto_2
    if-eqz v0, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v4, "#"

    invoke-static {v0, v4, v1, v2, v3}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->d:Landroid/view/View;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->e:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->i(Ljava/lang/String;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->j(Lcom/transsion/home/bean/BannerData;I)V

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/transsion/home/adapter/suboperate/adapter/j;

    invoke-direct {v1, p1, p0, p2}, Lcom/transsion/home/adapter/suboperate/adapter/j;-><init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final getImageView()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerViewHolder;->f:Landroid/widget/ImageView;

    return-object v0
.end method
