.class public final synthetic Lcom/google/android/material/search/c0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/internal/h;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/internal/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/c0;->a:Lcom/google/android/material/internal/h;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/c0;->a:Lcom/google/android/material/internal/h;

    invoke-static {v0, p1}, Lcom/google/android/material/search/f0;->e(Lcom/google/android/material/internal/h;Landroid/animation/ValueAnimator;)V

    return-void
.end method
