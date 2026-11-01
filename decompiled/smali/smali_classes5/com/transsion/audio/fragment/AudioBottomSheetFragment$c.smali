.class public final Lcom/transsion/audio/fragment/AudioBottomSheetFragment$c;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;


# direct methods
.method constructor <init>(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$c;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$c;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->t0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lbj/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbj/a;->e:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$c;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->t0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lbj/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbj/a;->e:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$c;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->t0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lbj/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lbj/a;->e:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$c;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {v0, p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->z0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;I)V

    iget-object v0, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$c;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {v0}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->x0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)[Lcom/transsion/baseui/widget/RoomSimplePagerTitleView;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$c;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->t0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lbj/a;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lbj/a;->b:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/audio/fragment/AudioBottomSheetFragment$c;->a:Lcom/transsion/audio/fragment/AudioBottomSheetFragment;

    invoke-static {p1}, Lcom/transsion/audio/fragment/AudioBottomSheetFragment;->t0(Lcom/transsion/audio/fragment/AudioBottomSheetFragment;)Lbj/a;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lbj/a;->b:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
