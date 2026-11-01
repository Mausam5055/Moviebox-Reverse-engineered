.class public final Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/bean/OperateItem;

.field final synthetic b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;


# direct methods
.method constructor <init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->a:Lcom/transsion/home/bean/OperateItem;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 9

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->a:Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerBean;->getAutoPlay()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    invoke-static {v0}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->B(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    invoke-static {v1}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->E(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    invoke-static {v0}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->B(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    invoke-static {v1}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->E(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    invoke-static {v2}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->z(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    invoke-static {v0, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->G(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;I)V

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->a:Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    rem-int/2addr p1, v0

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->a:Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerBean;->getBanners()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/bean/BannerData;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerData;->getImage()Lcom/transsion/moviedetailapi/bean/Image;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/moviedetailapi/bean/Image;->getAverageHueLight()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v7, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "#"

    const-string v3, "#ff"

    const/4 v4, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "#"

    const-string v3, "#00"

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->Q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v8, v0, v2, v1, v2}, Lil/a;->c(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/GradientDrawable$Orientation;ILjava/lang/Object;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-static {v7}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->A(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "bgColorView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->b:Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;

    iget-object v1, p0, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider$a;->a:Lcom/transsion/home/bean/OperateItem;

    invoke-static {v0, v1, p1}, Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;->F(Lcom/transsion/home/adapter/suboperate/provider/SubHorizontalBannerProvider;Lcom/transsion/home/bean/OperateItem;I)V

    return-void
.end method
