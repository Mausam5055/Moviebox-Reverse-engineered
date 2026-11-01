.class Lcom/tn/lib/view/SwitchButton$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tn/lib/view/SwitchButton;->e(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tn/lib/view/SwitchButton;


# direct methods
.method constructor <init>(Lcom/tn/lib/view/SwitchButton;)V
    .locals 0

    iput-object p1, p0, Lcom/tn/lib/view/SwitchButton$b;->a:Lcom/tn/lib/view/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton$b;->a:Lcom/tn/lib/view/SwitchButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/tn/lib/view/SwitchButton;->d(Lcom/tn/lib/view/SwitchButton;I)V

    iget-object p1, p0, Lcom/tn/lib/view/SwitchButton$b;->a:Lcom/tn/lib/view/SwitchButton;

    invoke-static {p1}, Lcom/tn/lib/view/SwitchButton;->a(Lcom/tn/lib/view/SwitchButton;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton$b;->a:Lcom/tn/lib/view/SwitchButton;

    invoke-static {v0}, Lcom/tn/lib/view/SwitchButton;->b(Lcom/tn/lib/view/SwitchButton;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/tn/lib/view/SwitchButton$b;->a:Lcom/tn/lib/view/SwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
