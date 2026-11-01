.class public final Lcom/transsion/home/adapter/suboperate/provider/i$b;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/adapter/suboperate/provider/i;->S(Ljava/util/List;Lcom/transsion/home/bean/OperateItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/adapter/suboperate/provider/i;


# direct methods
.method constructor <init>(Lcom/transsion/home/adapter/suboperate/provider/i;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i$b;->a:Lcom/transsion/home/adapter/suboperate/provider/i;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    iget-object p1, p0, Lcom/transsion/home/adapter/suboperate/provider/i$b;->a:Lcom/transsion/home/adapter/suboperate/provider/i;

    invoke-static {p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->E(Lcom/transsion/home/adapter/suboperate/provider/i;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/transsion/home/adapter/suboperate/provider/i$b;->a:Lcom/transsion/home/adapter/suboperate/provider/i;

    invoke-static {v0, p1}, Lcom/transsion/home/adapter/suboperate/provider/i;->I(Lcom/transsion/home/adapter/suboperate/provider/i;I)V

    :cond_0
    return-void
.end method
