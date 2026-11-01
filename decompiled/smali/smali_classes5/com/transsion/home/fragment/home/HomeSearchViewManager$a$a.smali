.class public final Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;
.super Lcom/transsion/baseui/util/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/home/HomeSearchViewManager$a;->c(Landroid/content/Context;I)Lj00/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/home/HomeSearchViewManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;->e:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    iput p2, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;->f:I

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

    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;->e:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    invoke-static {p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->k(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Lgl/r;

    move-result-object p1

    iget-object p1, p1, Lgl/r;->s:Landroidx/viewpager2/widget/ViewPager2;

    iget v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;->f:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object p1, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;->e:Lcom/transsion/home/fragment/home/HomeSearchViewManager;

    invoke-static {p1}, Lcom/transsion/home/fragment/home/HomeSearchViewManager;->k(Lcom/transsion/home/fragment/home/HomeSearchViewManager;)Lgl/r;

    move-result-object p1

    iget-object p1, p1, Lgl/r;->k:Lnet/lucode/hackware/magicindicator/MagicIndicator;

    iget v0, p0, Lcom/transsion/home/fragment/home/HomeSearchViewManager$a$a;->f:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lnet/lucode/hackware/magicindicator/MagicIndicator;->onPageScrolled(IFI)V

    return-void
.end method
