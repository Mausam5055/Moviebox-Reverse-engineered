.class public final Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv_pugc/bean/OperateItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

    iput-object p2, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 2

    iget-object p3, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;->b:Landroid/view/View;

    invoke-static {p3}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->B(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;)I

    move-result v1

    invoke-static {p3, v0, p1, v1, p2}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->E(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;Landroid/view/View;IIF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->C(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

    invoke-static {v0}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->D(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;)V

    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->F(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;J)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j$a;->a:Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;

    invoke-static {v0, p1}, Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;->G(Lcom/transsion/shorttv_pugc/ui/adapter/provider/j;I)V

    return-void
.end method
