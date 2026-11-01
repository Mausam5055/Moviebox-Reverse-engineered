.class public final Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;
.super Lcom/transsion/baseui/util/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b;->c(Landroid/content/Context;I)Lj00/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;->e:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    iput p2, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;->f:I

    invoke-direct {p0}, Lcom/transsion/baseui/util/f;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;->e:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lg4/a;

    move-result-object p1

    check-cast p1, Lso/t;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lso/t;->c:Landroidx/viewpager2/widget/ViewPager2;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;->f:I

    invoke-virtual {p1, v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    :cond_0
    iget p1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;->f:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment$b$a;->e:Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;

    invoke-static {p1, v0}, Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;->j0(Lcom/transsion/postdetail/shorttv/ShortTVHomeFragment;I)V

    :cond_1
    return-void
.end method
