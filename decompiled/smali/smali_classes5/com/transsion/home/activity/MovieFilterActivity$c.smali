.class public final Lcom/transsion/home/activity/MovieFilterActivity$c;
.super Lj00/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/activity/MovieFilterActivity;->n0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/transsion/home/activity/MovieFilterActivity;


# direct methods
.method constructor <init>(Lcom/transsion/home/activity/MovieFilterActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/activity/MovieFilterActivity$c;->b:Lcom/transsion/home/activity/MovieFilterActivity;

    invoke-direct {p0}, Lj00/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/transsion/home/activity/MovieFilterActivity$c;->b:Lcom/transsion/home/activity/MovieFilterActivity;

    invoke-static {v0}, Lcom/transsion/home/activity/MovieFilterActivity;->g0(Lcom/transsion/home/activity/MovieFilterActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)Lj00/c;
    .locals 3

    new-instance p1, Lcom/tn/lib/view/GradientLinePagerIndicator;

    iget-object v0, p0, Lcom/transsion/home/activity/MovieFilterActivity$c;->b:Lcom/transsion/home/activity/MovieFilterActivity;

    invoke-direct {p1, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/transsion/home/activity/MovieFilterActivity$c;->b:Lcom/transsion/home/activity/MovieFilterActivity;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setMode(I)V

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/transsion/usercenter/setting/labelsfeedback/a;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineHeight(F)V

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/transsion/usercenter/setting/labelsfeedback/a;->b(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setLineWidth(F)V

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {v1}, Lcom/transsion/usercenter/setting/labelsfeedback/a;->a(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setRoundRadius(F)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setStartInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v1}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setEndInterpolator(Landroid/view/animation/Interpolator;)V

    sget v1, Lcom/tn/lib/widget/R$color;->white:I

    invoke-static {v0, v1}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0, v0, v0}, Lcom/tn/lib/view/GradientLinePagerIndicator;->setColors(III)V

    return-object p1
.end method

.method public c(Landroid/content/Context;I)Lj00/d;
    .locals 3

    new-instance p1, Lcom/transsion/baseui/widget/CustomPagerTitleView;

    iget-object v0, p0, Lcom/transsion/home/activity/MovieFilterActivity$c;->b:Lcom/transsion/home/activity/MovieFilterActivity;

    const/16 v1, 0xc

    invoke-static {v1}, Lcom/transsion/usercenter/setting/labelsfeedback/a;->b(I)I

    move-result v1

    const/16 v2, 0x11

    invoke-direct {p1, v0, v2, v1}, Lcom/transsion/baseui/widget/CustomPagerTitleView;-><init>(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/transsion/home/activity/MovieFilterActivity$c;->b:Lcom/transsion/home/activity/MovieFilterActivity;

    invoke-static {v0}, Lcom/transsion/home/activity/MovieFilterActivity;->g0(Lcom/transsion/home/activity/MovieFilterActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/home/bean/HomeTabItem;

    invoke-virtual {v1}, Lcom/transsion/home/bean/HomeTabItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/transsion/home/activity/MovieFilterActivity$c$a;

    invoke-direct {v1, v0, p2}, Lcom/transsion/home/activity/MovieFilterActivity$c$a;-><init>(Lcom/transsion/home/activity/MovieFilterActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
