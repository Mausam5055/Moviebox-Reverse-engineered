.class Landroidx/media3/ui/e0$f;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media3/ui/e0;-><init>(Landroidx/media3/ui/PlayerControlView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/media3/ui/e0;


# direct methods
.method constructor <init>(Landroidx/media3/ui/e0;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/ui/e0$f;->a:Landroidx/media3/ui/e0;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/ui/e0$f;->a:Landroidx/media3/ui/e0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/media3/ui/e0;->s(Landroidx/media3/ui/e0;I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/media3/ui/e0$f;->a:Landroidx/media3/ui/e0;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroidx/media3/ui/e0;->s(Landroidx/media3/ui/e0;I)V

    return-void
.end method
