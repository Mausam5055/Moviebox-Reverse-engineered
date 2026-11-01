.class Lwa/c$c$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwa/c$c;->c(Lwa/b;)Landroid/window/OnBackInvokedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwa/b;

.field final synthetic b:Lwa/c$c;


# direct methods
.method constructor <init>(Lwa/c$c;Lwa/b;)V
    .locals 0

    iput-object p1, p0, Lwa/c$c$a;->b:Lwa/c$c;

    iput-object p2, p0, Lwa/c$c$a;->a:Lwa/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackCancelled()V
    .locals 1

    iget-object v0, p0, Lwa/c$c$a;->b:Lwa/c$c;

    invoke-virtual {v0}, Lwa/c$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lwa/c$c$a;->a:Lwa/b;

    invoke-interface {v0}, Lwa/b;->cancelBackProgress()V

    return-void
.end method

.method public onBackInvoked()V
    .locals 1

    iget-object v0, p0, Lwa/c$c$a;->a:Lwa/b;

    invoke-interface {v0}, Lwa/b;->handleBackInvoked()V

    return-void
.end method

.method public onBackProgressed(Landroid/window/BackEvent;)V
    .locals 2

    iget-object v0, p0, Lwa/c$c$a;->b:Lwa/c$c;

    invoke-virtual {v0}, Lwa/c$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lwa/c$c$a;->a:Lwa/b;

    new-instance v1, Landroidx/activity/b;

    invoke-direct {v1, p1}, Landroidx/activity/b;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {v0, v1}, Lwa/b;->updateBackProgress(Landroidx/activity/b;)V

    return-void
.end method

.method public onBackStarted(Landroid/window/BackEvent;)V
    .locals 2

    iget-object v0, p0, Lwa/c$c$a;->b:Lwa/c$c;

    invoke-virtual {v0}, Lwa/c$b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lwa/c$c$a;->a:Lwa/b;

    new-instance v1, Landroidx/activity/b;

    invoke-direct {v1, p1}, Landroidx/activity/b;-><init>(Landroid/window/BackEvent;)V

    invoke-interface {v0, v1}, Lwa/b;->startBackProgress(Landroidx/activity/b;)V

    return-void
.end method
