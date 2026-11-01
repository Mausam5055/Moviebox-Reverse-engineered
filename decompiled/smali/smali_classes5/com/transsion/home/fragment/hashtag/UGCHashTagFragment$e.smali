.class public final Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$e;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->initView(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$e;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$e;->b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    iget-object v0, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$e;->b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgl/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lgl/p;->c:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object v0, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$e;->b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgl/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lgl/p;->c:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$e;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/home/hashtag/model/HashTagTab;

    invoke-virtual {v0}, Lcom/transsion/home/hashtag/model/HashTagTab;->getId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Llg/a;->a:Llg/a$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageSelected: position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", filterId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "/home/hashtag"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Llg/a$a;->f(Llg/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    iget-object v1, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$e;->b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    invoke-static {v1}, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;->f0(Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;)Lcom/transsion/home/hashtag/HashTagViewModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/transsion/home/hashtag/HashTagViewModel;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment$e;->b:Lcom/transsion/home/fragment/hashtag/UGCHashTagFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgl/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lgl/p;->c:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    :cond_0
    return-void
.end method
