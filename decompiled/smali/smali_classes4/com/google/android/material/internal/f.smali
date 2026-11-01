.class public final synthetic Lcom/google/android/material/internal/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/internal/g;

.field public final synthetic b:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/internal/g;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/f;->a:Lcom/google/android/material/internal/g;

    iput-object p2, p0, Lcom/google/android/material/internal/f;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/f;->a:Lcom/google/android/material/internal/g;

    iget-object v1, p0, Lcom/google/android/material/internal/f;->b:Landroid/graphics/Rect;

    invoke-static {v0, v1, p1}, Lcom/google/android/material/internal/g;->a(Lcom/google/android/material/internal/g;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method
