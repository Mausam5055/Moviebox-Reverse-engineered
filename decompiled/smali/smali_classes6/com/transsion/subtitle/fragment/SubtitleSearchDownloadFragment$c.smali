.class public final Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$c;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->r0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;


# direct methods
.method constructor <init>(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$c;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$c;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfu/f;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lfu/f;->e:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$c;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfu/f;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lfu/f;->e:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$c;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    invoke-virtual {v0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lfu/f;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lfu/f;->e:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment$c;->a:Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;

    invoke-static {v0, p1}, Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;->q0(Lcom/transsion/subtitle/fragment/SubtitleSearchDownloadFragment;I)V

    return-void
.end method
