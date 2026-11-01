.class public final Landroidx/lifecycle/q0;
.super Landroidx/lifecycle/v0$e;

# interfaces
.implements Landroidx/lifecycle/v0$c;


# instance fields
.field private a:Landroid/app/Application;

.field private final b:Landroidx/lifecycle/v0$c;

.field private c:Landroid/os/Bundle;

.field private d:Landroidx/lifecycle/Lifecycle;

.field private e:Landroidx/savedstate/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/v0$e;-><init>()V

    new-instance v0, Landroidx/lifecycle/v0$a;

    invoke-direct {v0}, Landroidx/lifecycle/v0$a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/q0;->b:Landroidx/lifecycle/v0$c;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroidx/savedstate/e;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/v0$e;-><init>()V

    invoke-interface {p2}, Landroidx/savedstate/e;->getSavedStateRegistry()Landroidx/savedstate/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/q0;->e:Landroidx/savedstate/c;

    invoke-interface {p2}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/q0;->d:Landroidx/lifecycle/Lifecycle;

    iput-object p3, p0, Landroidx/lifecycle/q0;->c:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/lifecycle/q0;->a:Landroid/app/Application;

    if-eqz p1, :cond_0

    sget-object p2, Landroidx/lifecycle/v0$a;->e:Landroidx/lifecycle/v0$a$b;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/v0$a$b;->a(Landroid/app/Application;)Landroidx/lifecycle/v0$a;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/lifecycle/v0$a;

    invoke-direct {p1}, Landroidx/lifecycle/v0$a;-><init>()V

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/q0;->b:Landroidx/lifecycle/v0$c;

    return-void
.end method


# virtual methods
.method public a(Landroidx/lifecycle/t0;)V
    .locals 2

    const-string v0, "viewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/q0;->d:Landroidx/lifecycle/Lifecycle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/q0;->e:Landroidx/savedstate/c;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/lifecycle/q0;->d:Landroidx/lifecycle/Lifecycle;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {p1, v0, v1}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/t0;Landroidx/savedstate/c;Landroidx/lifecycle/Lifecycle;)V

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/t0;
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "key"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "modelClass"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/lifecycle/q0;->d:Landroidx/lifecycle/Lifecycle;

    if-eqz v2, :cond_4

    const-class v3, Landroidx/lifecycle/b;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Landroidx/lifecycle/q0;->a:Landroid/app/Application;

    if-eqz v4, :cond_0

    invoke-static {}, Landroidx/lifecycle/r0;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {p2, v4}, Landroidx/lifecycle/r0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/lifecycle/r0;->b()Ljava/util/List;

    move-result-object v4

    invoke-static {p2, v4}, Landroidx/lifecycle/r0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_2

    iget-object p1, p0, Landroidx/lifecycle/q0;->a:Landroid/app/Application;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/lifecycle/q0;->b:Landroidx/lifecycle/v0$c;

    invoke-interface {p1, p2}, Landroidx/lifecycle/v0$c;->create(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Landroidx/lifecycle/v0$d;->a:Landroidx/lifecycle/v0$d$a;

    invoke-virtual {p1}, Landroidx/lifecycle/v0$d$a;->a()Landroidx/lifecycle/v0$d;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/lifecycle/v0$d;->create(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_2
    iget-object v5, p0, Landroidx/lifecycle/q0;->e:Landroidx/savedstate/c;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v6, p0, Landroidx/lifecycle/q0;->c:Landroid/os/Bundle;

    invoke-static {v5, v2, p1, v6}, Landroidx/lifecycle/n;->b(Landroidx/savedstate/c;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/n0;

    move-result-object p1

    if-eqz v3, :cond_3

    iget-object v2, p0, Landroidx/lifecycle/q0;->a:Landroid/app/Application;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/lifecycle/n0;->d()Landroidx/lifecycle/l0;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    aput-object v3, v5, v0

    invoke-static {p2, v4, v5}, Landroidx/lifecycle/r0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/t0;

    move-result-object p2

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/lifecycle/n0;->d()Landroidx/lifecycle/l0;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {p2, v4, v0}, Landroidx/lifecycle/r0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/t0;

    move-result-object p2

    :goto_2
    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p2, v0, p1}, Landroidx/lifecycle/t0;->addCloseable(Ljava/lang/String;Ljava/lang/AutoCloseable;)V

    return-object p2

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create(Ljava/lang/Class;)Landroidx/lifecycle/t0;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/q0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create(Ljava/lang/Class;Lp1/a;)Landroidx/lifecycle/t0;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "modelClass"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "extras"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Landroidx/lifecycle/v0$d;->c:Lp1/a$b;

    invoke-virtual {p2, v2}, Lp1/a;->a(Lp1/a$b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5

    sget-object v3, Landroidx/lifecycle/o0;->a:Lp1/a$b;

    invoke-virtual {p2, v3}, Lp1/a;->a(Lp1/a$b;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v3, Landroidx/lifecycle/o0;->b:Lp1/a$b;

    invoke-virtual {p2, v3}, Lp1/a;->a(Lp1/a$b;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    sget-object v2, Landroidx/lifecycle/v0$a;->g:Lp1/a$b;

    invoke-virtual {p2, v2}, Lp1/a;->a(Lp1/a$b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    const-class v3, Landroidx/lifecycle/b;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-static {}, Landroidx/lifecycle/r0;->a()Ljava/util/List;

    move-result-object v4

    invoke-static {p1, v4}, Landroidx/lifecycle/r0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/lifecycle/r0;->b()Ljava/util/List;

    move-result-object v4

    invoke-static {p1, v4}, Landroidx/lifecycle/r0;->c(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_1

    iget-object v0, p0, Landroidx/lifecycle/q0;->b:Landroidx/lifecycle/v0$c;

    invoke-interface {v0, p1, p2}, Landroidx/lifecycle/v0$c;->create(Ljava/lang/Class;Lp1/a;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    invoke-static {p2}, Landroidx/lifecycle/o0;->b(Lp1/a;)Landroidx/lifecycle/l0;

    move-result-object p2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    aput-object p2, v3, v0

    invoke-static {p1, v4, v3}, Landroidx/lifecycle/r0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/t0;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/o0;->b(Lp1/a;)Landroidx/lifecycle/l0;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    invoke-static {p1, v4, v0}, Landroidx/lifecycle/r0;->d(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/t0;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/q0;->d:Landroidx/lifecycle/Lifecycle;

    if-eqz p2, :cond_4

    invoke-virtual {p0, v2, p1}, Landroidx/lifecycle/q0;->b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic create(Lkotlin/reflect/KClass;Lp1/a;)Landroidx/lifecycle/t0;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/lifecycle/w0;->c(Landroidx/lifecycle/v0$c;Lkotlin/reflect/KClass;Lp1/a;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1
.end method
