.class public final Landroidx/lifecycle/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/n$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/lifecycle/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    sput-object v0, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroidx/lifecycle/t0;Landroidx/savedstate/c;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "viewModel"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "registry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/t0;->getCloseable(Ljava/lang/String;)Ljava/lang/AutoCloseable;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/n0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/n0;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/n0;->b(Landroidx/savedstate/c;Landroidx/lifecycle/Lifecycle;)V

    sget-object p0, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n;

    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/n;->c(Landroidx/savedstate/c;Landroidx/lifecycle/Lifecycle;)V

    :cond_0
    return-void
.end method

.method public static final b(Landroidx/savedstate/c;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/n0;
    .locals 2

    const-string v0, "registry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroidx/savedstate/c;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/l0;->f:Landroidx/lifecycle/l0$a;

    invoke-virtual {v1, v0, p3}, Landroidx/lifecycle/l0$a;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/l0;

    move-result-object p3

    new-instance v0, Landroidx/lifecycle/n0;

    invoke-direct {v0, p2, p3}, Landroidx/lifecycle/n0;-><init>(Ljava/lang/String;Landroidx/lifecycle/l0;)V

    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/n0;->b(Landroidx/savedstate/c;Landroidx/lifecycle/Lifecycle;)V

    sget-object p2, Landroidx/lifecycle/n;->a:Landroidx/lifecycle/n;

    invoke-direct {p2, p0, p1}, Landroidx/lifecycle/n;->c(Landroidx/savedstate/c;Landroidx/lifecycle/Lifecycle;)V

    return-object v0
.end method

.method private final c(Landroidx/savedstate/c;Landroidx/lifecycle/Lifecycle;)V
    .locals 2

    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/lifecycle/n$b;

    invoke-direct {v0, p2, p1}, Landroidx/lifecycle/n$b;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/savedstate/c;)V

    invoke-virtual {p2, v0}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-class p2, Landroidx/lifecycle/n$a;

    invoke-virtual {p1, p2}, Landroidx/savedstate/c;->i(Ljava/lang/Class;)V

    :goto_1
    return-void
.end method
