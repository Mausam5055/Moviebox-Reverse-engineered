.class public Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lj00/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$a;,
        Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getContentBottom()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    return v0
.end method

.method public getContentLeft()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public getContentPositionDataProvider()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContentRight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    return v0
.end method

.method public getContentTop()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getOnPagerTitleChangeListener()Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$b;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDeselected(II)V
    .locals 0

    return-void
.end method

.method public onEnter(IIFZ)V
    .locals 0

    return-void
.end method

.method public onLeave(IIFZ)V
    .locals 0

    return-void
.end method

.method public onSelected(II)V
    .locals 0

    return-void
.end method

.method public setContentPositionDataProvider(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$a;)V
    .locals 0

    return-void
.end method

.method public setContentView(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView;->setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setOnPagerTitleChangeListener(Lnet/lucode/hackware/magicindicator/buildins/commonnavigator/titles/CommonPagerTitleView$b;)V
    .locals 0

    return-void
.end method
