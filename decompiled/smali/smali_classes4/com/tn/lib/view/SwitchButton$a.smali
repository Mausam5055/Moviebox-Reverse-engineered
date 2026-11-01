.class Lcom/tn/lib/view/SwitchButton$a;
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

    iput-object p1, p0, Lcom/tn/lib/view/SwitchButton$a;->a:Lcom/tn/lib/view/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/tn/lib/view/SwitchButton$a;->a:Lcom/tn/lib/view/SwitchButton;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/tn/lib/view/SwitchButton;->c(Lcom/tn/lib/view/SwitchButton;F)V

    iget-object p1, p0, Lcom/tn/lib/view/SwitchButton$a;->a:Lcom/tn/lib/view/SwitchButton;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
