.class public final synthetic Lck/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lck/k;->a:Landroid/view/View;

    iput p2, p0, Lck/k;->b:F

    iput p3, p0, Lck/k;->c:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lck/k;->a:Landroid/view/View;

    iget v1, p0, Lck/k;->b:F

    iget v2, p0, Lck/k;->c:F

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/baseui/dialog/BaseSwipeDismissDialog;->p0(Landroid/view/View;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
