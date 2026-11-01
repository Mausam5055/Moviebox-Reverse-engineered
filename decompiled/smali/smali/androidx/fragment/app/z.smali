.class Landroidx/fragment/app/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/m;
.implements Landroidx/savedstate/e;
.implements Landroidx/lifecycle/y0;


# instance fields
.field private final a:Landroidx/fragment/app/Fragment;

.field private final b:Landroidx/lifecycle/x0;

.field private c:Landroidx/lifecycle/v0$c;

.field private d:Landroidx/lifecycle/w;

.field private e:Landroidx/savedstate/d;


# direct methods
.method constructor <init>(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/x0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/z;->d:Landroidx/lifecycle/w;

    iput-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/savedstate/d;

    iput-object p1, p0, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/Fragment;

    iput-object p2, p0, Landroidx/fragment/app/z;->b:Landroidx/lifecycle/x0;

    return-void
.end method


# virtual methods
.method a(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->d:Landroidx/lifecycle/w;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/w;->i(Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->d:Landroidx/lifecycle/w;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/w;

    invoke-direct {v0, p0}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/u;)V

    iput-object v0, p0, Landroidx/fragment/app/z;->d:Landroidx/lifecycle/w;

    invoke-static {p0}, Landroidx/savedstate/d;->a(Landroidx/savedstate/e;)Landroidx/savedstate/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/savedstate/d;

    invoke-virtual {v0}, Landroidx/savedstate/d;->c()V

    invoke-static {p0}, Landroidx/lifecycle/o0;->c(Landroidx/savedstate/e;)V

    :cond_0
    return-void
.end method

.method c()Z
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->d:Landroidx/lifecycle/w;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method d(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/savedstate/d;

    invoke-virtual {v0, p1}, Landroidx/savedstate/d;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method e(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/savedstate/d;

    invoke-virtual {v0, p1}, Landroidx/savedstate/d;->e(Landroid/os/Bundle;)V

    return-void
.end method

.method f(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1

    iget-object v0, p0, Landroidx/fragment/app/z;->d:Landroidx/lifecycle/w;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/w;->n(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public getDefaultViewModelCreationExtras()Lp1/a;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lp1/b;

    invoke-direct {v1}, Lp1/b;-><init>()V

    if-eqz v0, :cond_2

    sget-object v2, Landroidx/lifecycle/v0$a;->g:Lp1/a$b;

    invoke-virtual {v1, v2, v0}, Lp1/b;->c(Lp1/a$b;Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Landroidx/lifecycle/o0;->a:Lp1/a$b;

    invoke-virtual {v1, v0, p0}, Lp1/b;->c(Lp1/a$b;Ljava/lang/Object;)V

    sget-object v0, Landroidx/lifecycle/o0;->b:Lp1/a$b;

    invoke-virtual {v1, v0, p0}, Lp1/b;->c(Lp1/a$b;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/lifecycle/o0;->c:Lp1/a$b;

    iget-object v2, p0, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lp1/b;->c(Lp1/a$b;Ljava/lang/Object;)V

    :cond_3
    return-object v1
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/v0$c;
    .locals 3

    iget-object v0, p0, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/v0$c;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/v0$c;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Landroidx/fragment/app/z;->c:Landroidx/lifecycle/v0$c;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/z;->c:Landroidx/lifecycle/v0$c;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_1
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Landroidx/lifecycle/q0;

    iget-object v2, p0, Landroidx/fragment/app/z;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v0, p0, v2}, Landroidx/lifecycle/q0;-><init>(Landroid/app/Application;Landroidx/savedstate/e;Landroid/os/Bundle;)V

    iput-object v1, p0, Landroidx/fragment/app/z;->c:Landroidx/lifecycle/v0$c;

    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/z;->c:Landroidx/lifecycle/v0$c;

    return-object v0
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/z;->b()V

    iget-object v0, p0, Landroidx/fragment/app/z;->d:Landroidx/lifecycle/w;

    return-object v0
.end method

.method public getSavedStateRegistry()Landroidx/savedstate/c;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/z;->b()V

    iget-object v0, p0, Landroidx/fragment/app/z;->e:Landroidx/savedstate/d;

    invoke-virtual {v0}, Landroidx/savedstate/d;->b()Landroidx/savedstate/c;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/x0;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/z;->b()V

    iget-object v0, p0, Landroidx/fragment/app/z;->b:Landroidx/lifecycle/x0;

    return-object v0
.end method
