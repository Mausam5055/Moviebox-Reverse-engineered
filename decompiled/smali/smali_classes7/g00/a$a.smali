.class Lg00/a$a;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg00/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg00/a;


# direct methods
.method constructor <init>(Lg00/a;)V
    .locals 0

    iput-object p1, p0, Lg00/a$a;->a:Lg00/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lg00/a$a;->a:Lg00/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg00/a;->a(Lg00/a;I)V

    iget-object p1, p0, Lg00/a$a;->a:Lg00/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lg00/a;->b(Lg00/a;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
