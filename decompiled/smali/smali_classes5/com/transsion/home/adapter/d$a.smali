.class public final Lcom/transsion/home/adapter/d$a;
.super Lcom/transsion/baseui/util/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/d;->c(Landroid/content/Context;I)Lj00/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/home/adapter/d;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/home/adapter/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/adapter/d$a;->e:Lcom/transsion/home/adapter/d;

    iput p2, p0, Lcom/transsion/home/adapter/d$a;->f:I

    invoke-direct {p0}, Lcom/transsion/baseui/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/home/adapter/d$a;->e:Lcom/transsion/home/adapter/d;

    invoke-static {p1}, Lcom/transsion/home/adapter/d;->h(Lcom/transsion/home/adapter/d;)Lgl/j;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lgl/j;->k:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/transsion/home/adapter/d$a;->f:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/home/adapter/d$a;->e:Lcom/transsion/home/adapter/d;

    invoke-static {p1}, Lcom/transsion/home/adapter/d;->h(Lcom/transsion/home/adapter/d;)Lgl/j;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lgl/j;->h:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/transsion/home/adapter/d$a;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    :cond_1
    return-void
.end method
