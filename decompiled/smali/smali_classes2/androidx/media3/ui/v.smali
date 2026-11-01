.class public final synthetic Landroidx/media3/ui/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroidx/media3/ui/e0;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/ui/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/ui/v;->a:Landroidx/media3/ui/e0;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/ui/v;->a:Landroidx/media3/ui/e0;

    invoke-static {v0, p1}, Landroidx/media3/ui/e0;->a(Landroidx/media3/ui/e0;Landroid/animation/ValueAnimator;)V

    return-void
.end method
