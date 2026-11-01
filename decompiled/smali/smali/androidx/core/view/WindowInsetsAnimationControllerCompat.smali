.class public final Landroidx/core/view/WindowInsetsAnimationControllerCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;,
        Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;
    }
.end annotation


# instance fields
.field private final mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;


# direct methods
.method constructor <init>(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;

    invoke-direct {v0, p1}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$a;-><init>(Landroid/view/WindowInsetsAnimationController;)V

    iput-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    return-void
.end method


# virtual methods
.method public finish(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->a(Z)V

    return-void
.end method

.method public getCurrentAlpha()F
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->b()F

    move-result v0

    return v0
.end method

.method public getCurrentFraction()F
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->c()F

    move-result v0

    return v0
.end method

.method public getCurrentInsets()Lz0/c;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->d()Lz0/c;

    move-result-object v0

    return-object v0
.end method

.method public getHiddenStateInsets()Lz0/c;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->e()Lz0/c;

    move-result-object v0

    return-object v0
.end method

.method public getShownStateInsets()Lz0/c;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->f()Lz0/c;

    move-result-object v0

    return-object v0
.end method

.method public getTypes()I
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->g()I

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->h()Z

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->i()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setInsetsAndAlpha(Lz0/c;FF)V
    .locals 1

    iget-object v0, p0, Landroidx/core/view/WindowInsetsAnimationControllerCompat;->mImpl:Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/core/view/WindowInsetsAnimationControllerCompat$b;->j(Lz0/c;FF)V

    return-void
.end method
