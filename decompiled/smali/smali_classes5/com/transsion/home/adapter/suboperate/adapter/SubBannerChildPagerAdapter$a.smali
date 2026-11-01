.class public final Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/ImageView;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$b0;-><init>(Landroid/view/View;)V

    sget v0, Lcom/transsion/home/R$id;->iconBg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->a:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/home/R$id;->contentIV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->b:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/home/R$id;->playIV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->c:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/home/R$id;->titleTV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->d:Landroid/widget/TextView;

    sget v0, Lcom/transsion/home/R$id;->desTV:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->e:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic f(Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->i(Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/transsion/ad/monopoly/model/AdMaterialList;Lcom/transsion/ad/monopoly/model/AdPlans;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->j(Lcom/transsion/ad/monopoly/model/AdMaterialList;Lcom/transsion/ad/monopoly/model/AdPlans;Landroid/view/View;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final i(Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->a:Lcom/transsion/home/adapter/trending/BannerADDataHelper;

    invoke-virtual {p0}, Lcom/transsion/home/adapter/trending/BannerADDataHelper;->l()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final j(Lcom/transsion/ad/monopoly/model/AdMaterialList;Lcom/transsion/ad/monopoly/model/AdPlans;Landroid/view/View;)Lkotlin/Unit;
    .locals 2

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/transsion/ad/strategy/b;->a:Lcom/transsion/ad/strategy/b;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getDeeplink()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getH5Link()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p2, v1, v0, p1}, Lcom/transsion/ad/strategy/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ad/monopoly/model/AdPlans;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final h(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 8

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getPlans()Lcom/transsion/ad/monopoly/model/AdPlans;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;->getNativeInfo()Lcom/hisavana/common/bean/TAdNativeInfo;

    move-result-object p1

    const-string v1, "itemView"

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getIcon()Lcom/hisavana/common/bean/TAdNativeInfo$Image;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/hisavana/common/bean/TAdNativeInfo$Image;->getUrl()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v3, Lhg/a;

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/16 v6, 0x32

    invoke-direct {v3, v6, v4, v5}, Lhg/a;-><init>(IIZ)V

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/RequestBuilder;

    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->b:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo;->getIcon()Lcom/hisavana/common/bean/TAdNativeInfo$Image;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdNativeInfo$Image;->getUrl()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/tn/lib/widget/R$mipmap;->ic_img_placeholder:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->c:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/home/R$drawable;->ic_trending_arrow:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/transsion/home/adapter/suboperate/adapter/g;

    invoke-direct {v5}, Lcom/transsion/home/adapter/suboperate/adapter/g;-><init>()V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v2 .. v7}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    sget-object p1, Lcom/transsion/ad/monopoly/plan/b;->a:Lcom/transsion/ad/monopoly/plan/b;

    invoke-virtual {p1, v0}, Lcom/transsion/ad/monopoly/plan/b;->c(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object v3

    invoke-virtual {p1, v0}, Lcom/transsion/ad/monopoly/plan/b;->a(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/MbAdImage;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->b:Landroid/widget/ImageView;

    sget v6, Lcom/tn/lib/widget/R$mipmap;->ic_img_placeholder:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v5, Lej/f;->a:Lej/f$a;

    iget-object v6, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "getContext(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lej/f$a;->m(Landroid/content/Context;)Lej/f$b;

    move-result-object v5

    const-string v6, ""

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getUrl()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    :cond_4
    move-object v7, v6

    :cond_5
    invoke-virtual {v5, v7}, Lej/f$b;->g(Ljava/lang/String;)Lej/f$b;

    move-result-object v5

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/transsion/ad/monopoly/model/MbAdImage;->getThumbnail()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    move-object v6, v4

    :cond_7
    :goto_1
    invoke-virtual {v5, v6}, Lej/f$b;->l(Ljava/lang/String;)Lej/f$b;

    move-result-object v4

    sget v5, Lcom/tn/lib/widget/R$mipmap;->ic_img_placeholder:I

    invoke-virtual {v4, v5}, Lej/f$b;->i(I)Lej/f$b;

    move-result-object v4

    const/16 v5, 0x28

    invoke-static {v5}, Ldk/a;->b(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lej/f$b;->m(I)Lej/f$b;

    move-result-object v4

    const/16 v5, 0x38

    invoke-static {v5}, Ldk/a;->b(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lej/f$b;->c(I)Lej/f$b;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lej/f$b;->d(Landroid/widget/ImageView;)V

    iget-object v4, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->b:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->d:Landroid/widget/TextView;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_8
    move-object v5, v2

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->e:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/transsion/ad/monopoly/model/AdMaterialList;->getDesc()Ljava/lang/String;

    move-result-object v2

    :cond_9
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->e:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/adapter/SubBannerChildPagerAdapter$a;->c:Landroid/widget/ImageView;

    sget v3, Lcom/transsion/home/R$drawable;->ic_trending_arrow:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, v0}, Lcom/transsion/ad/monopoly/plan/b;->c(Lcom/transsion/ad/monopoly/model/AdPlans;)Lcom/transsion/ad/monopoly/model/AdMaterialList;

    move-result-object p1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$b0;->itemView:Landroid/view/View;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/transsion/home/adapter/suboperate/adapter/h;

    invoke-direct {v5, p1, v0}, Lcom/transsion/home/adapter/suboperate/adapter/h;-><init>(Lcom/transsion/ad/monopoly/model/AdMaterialList;Lcom/transsion/ad/monopoly/model/AdPlans;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v2 .. v7}, Ljg/c;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_a
    :goto_3
    return-void
.end method
