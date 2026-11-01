.class public final Lcom/transsion/home/adapter/suboperate/provider/i$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/suboperate/provider/i;->O(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/home/bean/OperateItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/bean/OperateItem;

.field final synthetic b:Lcom/transsion/home/adapter/suboperate/provider/i;


# direct methods
.method constructor <init>(Lcom/transsion/home/bean/OperateItem;Lcom/transsion/home/adapter/suboperate/provider/i;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->a:Lcom/transsion/home/bean/OperateItem;

    iput-object p2, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 5

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->a:Lcom/transsion/home/bean/OperateItem;

    invoke-virtual {v0}, Lcom/transsion/home/bean/OperateItem;->getBanner()Lcom/transsion/home/bean/BannerBean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/home/bean/BannerBean;->getAutoPlay()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    invoke-static {v0}, Lcom/transsion/home/adapter/suboperate/provider/i;->G(Lcom/transsion/home/adapter/suboperate/provider/i;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    invoke-static {v2}, Lcom/transsion/home/adapter/suboperate/provider/i;->H(Lcom/transsion/home/adapter/suboperate/provider/i;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    invoke-static {v0}, Lcom/transsion/home/adapter/suboperate/provider/i;->G(Lcom/transsion/home/adapter/suboperate/provider/i;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    invoke-static {v2}, Lcom/transsion/home/adapter/suboperate/provider/i;->H(Lcom/transsion/home/adapter/suboperate/provider/i;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    invoke-static {v3}, Lcom/transsion/home/adapter/suboperate/provider/i;->D(Lcom/transsion/home/adapter/suboperate/provider/i;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    invoke-static {v0}, Lcom/transsion/home/adapter/suboperate/provider/i;->F(Lcom/transsion/home/adapter/suboperate/provider/i;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    invoke-static {v0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->K(Lcom/transsion/home/adapter/suboperate/provider/i;I)V

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i$a;->b:Lcom/transsion/home/adapter/suboperate/provider/i;

    invoke-static {v0, p1, v1}, Lcom/transsion/home/adapter/suboperate/provider/i;->J(Lcom/transsion/home/adapter/suboperate/provider/i;IZ)V

    return-void
.end method
