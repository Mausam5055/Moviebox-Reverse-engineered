.class public final Lcom/gyf/immersionbar/o;
.super Landroid/app/Fragment;


# instance fields
.field private a:Lcom/gyf/immersionbar/ImmersionDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Landroid/app/Dialog;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/o;->a:Lcom/gyf/immersionbar/ImmersionDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/gyf/immersionbar/ImmersionDelegate;

    invoke-direct {v0, p1, p2}, Lcom/gyf/immersionbar/ImmersionDelegate;-><init>(Landroid/app/Activity;Landroid/app/Dialog;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/o;->a:Lcom/gyf/immersionbar/ImmersionDelegate;

    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/o;->a:Lcom/gyf/immersionbar/ImmersionDelegate;

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionDelegate;->get()Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Lcom/gyf/immersionbar/ImmersionBar;
    .locals 1

    iget-object v0, p0, Lcom/gyf/immersionbar/o;->a:Lcom/gyf/immersionbar/ImmersionDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/gyf/immersionbar/ImmersionDelegate;

    invoke-direct {v0, p1}, Lcom/gyf/immersionbar/ImmersionDelegate;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gyf/immersionbar/o;->a:Lcom/gyf/immersionbar/ImmersionDelegate;

    :cond_0
    iget-object p1, p0, Lcom/gyf/immersionbar/o;->a:Lcom/gyf/immersionbar/ImmersionDelegate;

    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionDelegate;->get()Lcom/gyf/immersionbar/ImmersionBar;

    move-result-object p1

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/gyf/immersionbar/o;->a:Lcom/gyf/immersionbar/ImmersionDelegate;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gyf/immersionbar/ImmersionDelegate;->onActivityCreated(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/gyf/immersionbar/o;->a:Lcom/gyf/immersionbar/ImmersionDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/gyf/immersionbar/ImmersionDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/gyf/immersionbar/o;->a:Lcom/gyf/immersionbar/ImmersionDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionDelegate;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gyf/immersionbar/o;->a:Lcom/gyf/immersionbar/ImmersionDelegate;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/gyf/immersionbar/o;->a:Lcom/gyf/immersionbar/ImmersionDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionDelegate;->onResume()V

    :cond_0
    return-void
.end method
