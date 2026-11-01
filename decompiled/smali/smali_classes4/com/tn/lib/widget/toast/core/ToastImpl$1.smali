.class Lcom/tn/lib/widget/toast/core/ToastImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tn/lib/widget/toast/core/ToastImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;


# direct methods
.method constructor <init>(Lcom/tn/lib/widget/toast/core/ToastImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/tn/lib/widget/toast/core/ToastImpl$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->lambda$run$0()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-virtual {v0}, Lcom/tn/lib/widget/toast/core/ToastImpl;->e()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-static {v0}, Lcom/tn/lib/widget/toast/core/ToastImpl;->c(Lcom/tn/lib/widget/toast/core/ToastImpl;)Lcom/tn/lib/widget/toast/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tn/lib/widget/toast/core/i;->a()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-static {v1}, Lcom/tn/lib/widget/toast/core/ToastImpl;->b(Lcom/tn/lib/widget/toast/core/ToastImpl;)Lvh/a;

    move-result-object v1

    invoke-interface {v1}, Lvh/a;->c()Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-static {v1}, Lcom/tn/lib/widget/toast/core/ToastImpl;->b(Lcom/tn/lib/widget/toast/core/ToastImpl;)Lvh/a;

    move-result-object v1

    invoke-interface {v1}, Lvh/a;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-static {v1}, Lcom/tn/lib/widget/toast/core/ToastImpl;->b(Lcom/tn/lib/widget/toast/core/ToastImpl;)Lvh/a;

    move-result-object v1

    invoke-interface {v1}, Lvh/a;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x3

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-static {v1}, Lcom/tn/lib/widget/toast/core/ToastImpl;->b(Lcom/tn/lib/widget/toast/core/ToastImpl;)Lvh/a;

    move-result-object v1

    invoke-interface {v1}, Lvh/a;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x88

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_3
    const/16 v1, 0x98

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    iget-object v1, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-static {v1}, Lcom/tn/lib/widget/toast/core/ToastImpl;->a(Lcom/tn/lib/widget/toast/core/ToastImpl;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-static {v1}, Lcom/tn/lib/widget/toast/core/ToastImpl;->b(Lcom/tn/lib/widget/toast/core/ToastImpl;)Lvh/a;

    move-result-object v1

    invoke-interface {v1}, Lvh/a;->getGravity()I

    move-result v1

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-static {v1}, Lcom/tn/lib/widget/toast/core/ToastImpl;->b(Lcom/tn/lib/widget/toast/core/ToastImpl;)Lvh/a;

    move-result-object v1

    invoke-interface {v1}, Lvh/a;->getXOffset()I

    move-result v1

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-static {v1}, Lcom/tn/lib/widget/toast/core/ToastImpl;->b(Lcom/tn/lib/widget/toast/core/ToastImpl;)Lvh/a;

    move-result-object v1

    invoke-interface {v1}, Lvh/a;->getYOffset()I

    move-result v1

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-static {v1}, Lcom/tn/lib/widget/toast/core/ToastImpl;->b(Lcom/tn/lib/widget/toast/core/ToastImpl;)Lvh/a;

    move-result-object v1

    invoke-interface {v1}, Lvh/a;->getVerticalMargin()F

    move-result v1

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    iget-object v1, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-static {v1}, Lcom/tn/lib/widget/toast/core/ToastImpl;->b(Lcom/tn/lib/widget/toast/core/ToastImpl;)Lvh/a;

    move-result-object v1

    invoke-interface {v1}, Lvh/a;->getHorizontalMargin()F

    move-result v1

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-static {v1}, Lcom/tn/lib/widget/toast/core/ToastImpl;->b(Lcom/tn/lib/widget/toast/core/ToastImpl;)Lvh/a;

    move-result-object v1

    invoke-interface {v1}, Lvh/a;->c()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/tn/lib/widget/toast/core/ToastImpl;->d()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tn/lib/widget/toast/core/f;

    invoke-direct {v1, p0}, Lcom/tn/lib/widget/toast/core/f;-><init>(Lcom/tn/lib/widget/toast/core/ToastImpl$1;)V

    iget-object v2, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-static {v2}, Lcom/tn/lib/widget/toast/core/ToastImpl;->b(Lcom/tn/lib/widget/toast/core/ToastImpl;)Lvh/a;

    move-result-object v2

    invoke-interface {v2}, Lvh/a;->getDuration()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const-wide/16 v4, 0xdac

    goto :goto_2

    :cond_5
    const-wide/16 v4, 0x7d0

    :goto_2
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-static {v0}, Lcom/tn/lib/widget/toast/core/ToastImpl;->c(Lcom/tn/lib/widget/toast/core/ToastImpl;)Lcom/tn/lib/widget/toast/core/i;

    move-result-object v0

    iget-object v1, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-virtual {v0, v1}, Lcom/tn/lib/widget/toast/core/i;->b(Lcom/tn/lib/widget/toast/core/ToastImpl;)V

    iget-object v0, p0, Lcom/tn/lib/widget/toast/core/ToastImpl$1;->this$0:Lcom/tn/lib/widget/toast/core/ToastImpl;

    invoke-virtual {v0, v3}, Lcom/tn/lib/widget/toast/core/ToastImpl;->g(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_4
    return-void
.end method
