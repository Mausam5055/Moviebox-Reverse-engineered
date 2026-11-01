.class Lcom/tn/lib/view/SwitchButton$c;
.super Landroid/animation/AnimatorListenerAdapter;


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

    iput-object p1, p0, Lcom/tn/lib/view/SwitchButton$c;->a:Lcom/tn/lib/view/SwitchButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/tn/lib/view/SwitchButton$c;->a:Lcom/tn/lib/view/SwitchButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/tn/lib/view/SwitchButton$c;->a:Lcom/tn/lib/view/SwitchButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
