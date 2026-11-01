.class public final Ltn/e$c;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltn/e;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltn/e;


# direct methods
.method constructor <init>(Ltn/e;)V
    .locals 0

    iput-object p1, p0, Ltn/e$c;->a:Ltn/e;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    iget-object v0, p0, Ltn/e$c;->a:Ltn/e;

    invoke-static {v0}, Ltn/e;->e(Ltn/e;)Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object v0, p0, Ltn/e$c;->a:Ltn/e;

    invoke-static {v0}, Ltn/e;->e(Ltn/e;)Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Ltn/e$c;->a:Ltn/e;

    invoke-static {v0}, Ltn/e;->f(Ltn/e;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Ltn/e$c;->a:Ltn/e;

    invoke-static {v0}, Ltn/e;->e(Ltn/e;)Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    :cond_1
    iget-object v0, p0, Ltn/e$c;->a:Ltn/e;

    invoke-static {v0, p1}, Ltn/e;->m(Ltn/e;I)V

    return-void
.end method
