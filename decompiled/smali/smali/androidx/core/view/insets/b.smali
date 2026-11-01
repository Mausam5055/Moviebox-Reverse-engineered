.class public final synthetic Landroidx/core/view/insets/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroidx/core/view/insets/Protection;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/insets/Protection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/insets/b;->a:Landroidx/core/view/insets/Protection;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/insets/b;->a:Landroidx/core/view/insets/Protection;

    invoke-static {v0, p1}, Landroidx/core/view/insets/Protection;->a(Landroidx/core/view/insets/Protection;Landroid/animation/ValueAnimator;)V

    return-void
.end method
