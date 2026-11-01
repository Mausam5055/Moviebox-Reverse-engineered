.class Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->D0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$b;->a:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$b;->a:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;

    invoke-static {v0}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->A0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior$b;->a:Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;

    invoke-static {v0, p1}, Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;->C0(Lcom/transsion/usercenter/profile/FixAppBarLayoutBehavior;Landroid/view/View;)V

    :cond_0
    return-void
.end method
