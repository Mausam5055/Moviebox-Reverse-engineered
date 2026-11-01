.class Lcom/to/aboomy/pager2banner/Banner$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/to/aboomy/pager2banner/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/to/aboomy/pager2banner/Banner;


# direct methods
.method constructor <init>(Lcom/to/aboomy/pager2banner/Banner;)V
    .locals 0

    iput-object p1, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    invoke-virtual {v0}, Lcom/to/aboomy/pager2banner/Banner;->isAutoPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->i(Lcom/to/aboomy/pager2banner/Banner;)I

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->g(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v0

    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v1}, Lcom/to/aboomy/pager2banner/Banner;->j(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v1

    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v2}, Lcom/to/aboomy/pager2banner/Banner;->k(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/to/aboomy/pager2banner/Banner;->m(Lcom/to/aboomy/pager2banner/Banner;Z)Z

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->n(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v2}, Lcom/to/aboomy/pager2banner/Banner;->k(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->o(Lcom/to/aboomy/pager2banner/Banner;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0, v2}, Lcom/to/aboomy/pager2banner/Banner;->m(Lcom/to/aboomy/pager2banner/Banner;Z)Z

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->n(Lcom/to/aboomy/pager2banner/Banner;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    iget-object v1, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v1}, Lcom/to/aboomy/pager2banner/Banner;->g(Lcom/to/aboomy/pager2banner/Banner;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v0}, Lcom/to/aboomy/pager2banner/Banner;->o(Lcom/to/aboomy/pager2banner/Banner;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/to/aboomy/pager2banner/Banner$1;->this$0:Lcom/to/aboomy/pager2banner/Banner;

    invoke-static {v2}, Lcom/to/aboomy/pager2banner/Banner;->p(Lcom/to/aboomy/pager2banner/Banner;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
