.class public final Lcom/transsion/transfer/impl/TransferStatusActivity$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/impl/TransferStatusActivity;->N0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/transfer/impl/TransferStatusActivity;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/impl/TransferStatusActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$b;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$b;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgv/b;

    iget-object v0, v0, Lgv/b;->f:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$b;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgv/b;

    iget-object v0, v0, Lgv/b;->f:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$b;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-virtual {v0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lg4/a;

    move-result-object v0

    check-cast v0, Lgv/b;

    iget-object v0, v0, Lgv/b;->f:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$b;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {v0, p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->J0(Lcom/transsion/transfer/impl/TransferStatusActivity;I)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$b;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->A0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/TransferReceivedFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/TransferReceivedFragment;->u0()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/impl/TransferStatusActivity$b;->a:Lcom/transsion/transfer/impl/TransferStatusActivity;

    invoke-static {p1}, Lcom/transsion/transfer/impl/TransferStatusActivity;->B0(Lcom/transsion/transfer/impl/TransferStatusActivity;)Lcom/transsion/transfer/impl/TransferSentFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/transfer/impl/TransferSentFragment;->p0()V

    :cond_1
    :goto_0
    return-void
.end method
