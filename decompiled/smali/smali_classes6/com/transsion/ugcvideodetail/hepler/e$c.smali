.class public final Lcom/transsion/ugcvideodetail/hepler/e$c;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/hepler/e;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/hepler/e;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/hepler/e;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/e$c;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrollStateChanged(I)V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e$c;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/e;->d(Lcom/transsion/ugcvideodetail/hepler/e;)Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageScrolled(IFI)V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e$c;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/e;->d(Lcom/transsion/ugcvideodetail/hepler/e;)Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e$c;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v0}, Lcom/transsion/ugcvideodetail/hepler/e;->d(Lcom/transsion/ugcvideodetail/hepler/e;)Lnet/lucode/hackware/magicindicator/MagicIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageSelected(I)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/hepler/e$c;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {v0, p1}, Lcom/transsion/ugcvideodetail/hepler/e;->k(Lcom/transsion/ugcvideodetail/hepler/e;I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/transsion/ugcvideodetail/hepler/e$c;->a:Lcom/transsion/ugcvideodetail/hepler/e;

    invoke-static {p1}, Lcom/transsion/ugcvideodetail/hepler/e;->j(Lcom/transsion/ugcvideodetail/hepler/e;)V

    :cond_1
    return-void
.end method
