.class public final Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private final b:I

.field private final c:Lcom/transsion/home/adapter/operateUGC/provider/c;

.field private final d:Lcom/transsion/home/bean/OperateItem;

.field private final e:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/transsion/home/adapter/operateUGC/provider/c;Lcom/transsion/home/bean/OperateItem;)V
    .locals 1

    const-string v0, "banners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bannerProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "operateItem"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->a:Ljava/util/List;

    iput p2, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->b:I

    iput-object p3, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->c:Lcom/transsion/home/adapter/operateUGC/provider/c;

    iput-object p4, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->d:Lcom/transsion/home/bean/OperateItem;

    invoke-static {}, Lcom/blankj/utilcode/util/y;->e()I

    move-result p1

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->e:I

    invoke-virtual {p4}, Lcom/transsion/home/bean/OperateItem;->getStyleTemplate()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BANNER_NARROW"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    mul-int/lit8 p1, p1, 0x5

    div-int/lit8 p1, p1, 0xe

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x9

    div-int/lit8 p1, p1, 0x10

    :goto_0
    iput p1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->f:I

    return-void
.end method

.method public static synthetic g(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->i(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;ILandroid/view/View;)V

    return-void
.end method

.method private static final i(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;ILandroid/view/View;)V
    .locals 5

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getDeepLink()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    sget-object v0, Lnh/m;->a:Lnh/m;

    invoke-virtual {v0}, Lnh/m;->e()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Luh/b;->a:Luh/b$a;

    sget p1, Lcom/tn/lib/widget/R$string;->no_network_toast:I

    invoke-virtual {p0, p1}, Luh/b$a;->d(I)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->d:Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getOpId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/home/bean/BannerData;->getOps()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->b:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&module_name=opt_banner_free&from_opt_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&ops="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&tab_id="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lak/k;->g(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p3, Lhl/d;->c:Lhl/d$a;

    iget v0, p1, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->b:I

    iget-object p1, p1, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->d:Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {p3, v0, p2, p1, p0}, Lhl/d$a;->b(IILcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/BannerData;)V

    :cond_1
    return-void
.end method

.method private final k(Lcom/transsion/home/bean/BannerData;I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->c:Lcom/transsion/home/adapter/operateUGC/provider/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/home/bean/BannerData;->getDeepLink()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsion/home/adapter/operateUGC/provider/c;->I(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lhl/d;->c:Lhl/d$a;

    iget v1, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->b:I

    iget-object v2, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->d:Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v0, v1, p2, v2, p1}, Lhl/d$a;->a(IILcom/transsion/home/bean/OperateItem;Lcom/transsion/home/bean/BannerData;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public h(Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;I)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p2, v0

    iget-object v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/BannerData;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerData;->getBuiltIn()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v3

    new-instance v6, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$onBindViewHolder$1;

    const/4 v2, 0x0

    invoke-direct {v6, v0, p1, v2}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$onBindViewHolder$1;-><init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_1
    sget-object v2, Lej/f;->a:Lej/f$a;

    invoke-virtual {p1}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Image;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    move-object v3, v1

    :cond_3
    invoke-virtual {v2, v3}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    iget v3, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->e:I

    invoke-virtual {v2, v3}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/bean/Image;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    move-object v3, v1

    :cond_5
    invoke-virtual {v2, v3}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    :goto_0
    invoke-virtual {p1}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;->f()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerData;->getContent()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    move-object v1, v3

    :cond_6
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0, p2}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->k(Lcom/transsion/home/bean/BannerData;I)V

    invoke-virtual {p1}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    new-instance v1, Lcom/transsion/home/adapter/operateUGC/adapter/a;

    invoke-direct {v1, v0, p0, p2}, Lcom/transsion/home/adapter/operateUGC/adapter/a;-><init>(Lcom/transsion/home/bean/BannerData;Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public j(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/transsion/home/R$layout;->item_ugc_banner:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p2, p1}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->f:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$b0;I)V
    .locals 0

    check-cast p1, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->h(Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$b0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter;->j(Landroid/view/ViewGroup;I)Lcom/transsion/home/adapter/operateUGC/adapter/BannerUGCAdapter$a;

    move-result-object p1

    return-object p1
.end method
