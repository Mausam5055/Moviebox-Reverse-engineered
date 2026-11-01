.class public final Landroidx/savedstate/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/savedstate/d$a;
    }
.end annotation


# static fields
.field public static final d:Landroidx/savedstate/d$a;


# instance fields
.field private final a:Landroidx/savedstate/e;

.field private final b:Landroidx/savedstate/c;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/savedstate/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/savedstate/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/savedstate/d;->d:Landroidx/savedstate/d$a;

    return-void
.end method

.method private constructor <init>(Landroidx/savedstate/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/d;->a:Landroidx/savedstate/e;

    new-instance p1, Landroidx/savedstate/c;

    invoke-direct {p1}, Landroidx/savedstate/c;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/d;->b:Landroidx/savedstate/c;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/savedstate/e;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/savedstate/d;-><init>(Landroidx/savedstate/e;)V

    return-void
.end method

.method public static final a(Landroidx/savedstate/e;)Landroidx/savedstate/d;
    .locals 1

    sget-object v0, Landroidx/savedstate/d;->d:Landroidx/savedstate/d$a;

    invoke-virtual {v0, p0}, Landroidx/savedstate/d$a;->a(Landroidx/savedstate/e;)Landroidx/savedstate/d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Landroidx/savedstate/c;
    .locals 1

    iget-object v0, p0, Landroidx/savedstate/d;->b:Landroidx/savedstate/c;

    return-object v0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Landroidx/savedstate/d;->a:Landroidx/savedstate/e;

    invoke-interface {v0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->INITIALIZED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_0

    new-instance v1, Landroidx/savedstate/a;

    iget-object v2, p0, Landroidx/savedstate/d;->a:Landroidx/savedstate/e;

    invoke-direct {v1, v2}, Landroidx/savedstate/a;-><init>(Landroidx/savedstate/e;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/t;)V

    iget-object v1, p0, Landroidx/savedstate/d;->b:Landroidx/savedstate/c;

    invoke-virtual {v1, v0}, Landroidx/savedstate/c;->e(Landroidx/lifecycle/Lifecycle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/savedstate/d;->c:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Landroid/os/Bundle;)V
    .locals 3

    iget-boolean v0, p0, Landroidx/savedstate/d;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/savedstate/d;->c()V

    :cond_0
    iget-object v0, p0, Landroidx/savedstate/d;->a:Landroidx/savedstate/e;

    invoke-interface {v0}, Landroidx/lifecycle/u;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v1

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Landroidx/savedstate/d;->b:Landroidx/savedstate/c;

    invoke-virtual {v0, p1}, Landroidx/savedstate/c;->f(Landroid/os/Bundle;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "performRestore cannot be called when owner is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->b()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/savedstate/d;->b:Landroidx/savedstate/c;

    invoke-virtual {v0, p1}, Landroidx/savedstate/c;->g(Landroid/os/Bundle;)V

    return-void
.end method
