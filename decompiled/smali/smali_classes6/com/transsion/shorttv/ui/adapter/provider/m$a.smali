.class public final Lcom/transsion/shorttv/ui/adapter/provider/m$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/adapter/provider/m;->I(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/shorttv/bean/OperateItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/shorttv/ui/adapter/provider/m;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/adapter/provider/m;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/shorttv/ui/adapter/provider/m$a;->a:Lcom/transsion/shorttv/ui/adapter/provider/m;

    iput-object p2, p0, Lcom/transsion/shorttv/ui/adapter/provider/m$a;->b:Landroid/view/View;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 2

    iget-object p3, p0, Lcom/transsion/shorttv/ui/adapter/provider/m$a;->a:Lcom/transsion/shorttv/ui/adapter/provider/m;

    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/provider/m$a;->b:Landroid/view/View;

    invoke-static {p3}, Lcom/transsion/shorttv/ui/adapter/provider/m;->B(Lcom/transsion/shorttv/ui/adapter/provider/m;)I

    move-result v1

    invoke-static {p3, v0, p1, v1, p2}, Lcom/transsion/shorttv/ui/adapter/provider/m;->E(Lcom/transsion/shorttv/ui/adapter/provider/m;Landroid/view/View;IIF)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/provider/m$a;->a:Lcom/transsion/shorttv/ui/adapter/provider/m;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/adapter/provider/m;->C(Lcom/transsion/shorttv/ui/adapter/provider/m;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/provider/m$a;->a:Lcom/transsion/shorttv/ui/adapter/provider/m;

    invoke-static {v0}, Lcom/transsion/shorttv/ui/adapter/provider/m;->D(Lcom/transsion/shorttv/ui/adapter/provider/m;)V

    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/provider/m$a;->a:Lcom/transsion/shorttv/ui/adapter/provider/m;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/transsion/shorttv/ui/adapter/provider/m;->F(Lcom/transsion/shorttv/ui/adapter/provider/m;J)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/shorttv/ui/adapter/provider/m$a;->a:Lcom/transsion/shorttv/ui/adapter/provider/m;

    invoke-static {v0, p1}, Lcom/transsion/shorttv/ui/adapter/provider/m;->G(Lcom/transsion/shorttv/ui/adapter/provider/m;I)V

    return-void
.end method
