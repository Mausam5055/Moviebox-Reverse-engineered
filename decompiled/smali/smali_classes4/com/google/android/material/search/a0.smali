.class public final synthetic Lcom/google/android/material/search/a0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/graphics/drawable/c;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/graphics/drawable/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/a0;->a:Landroidx/appcompat/graphics/drawable/c;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/search/a0;->a:Landroidx/appcompat/graphics/drawable/c;

    invoke-static {v0, p1}, Lcom/google/android/material/search/f0;->c(Landroidx/appcompat/graphics/drawable/c;Landroid/animation/ValueAnimator;)V

    return-void
.end method
