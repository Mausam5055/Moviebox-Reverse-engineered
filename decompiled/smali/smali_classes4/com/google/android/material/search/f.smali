.class public final synthetic Lcom/google/android/material/search/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lab/i;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lab/i;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/f;->a:Lab/i;

    iput-object p2, p0, Lcom/google/android/material/search/f;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/search/f;->a:Lab/i;

    iget-object v1, p0, Lcom/google/android/material/search/f;->b:Landroid/view/View;

    invoke-static {v0, v1, p1}, Lcom/google/android/material/search/i;->c(Lab/i;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
