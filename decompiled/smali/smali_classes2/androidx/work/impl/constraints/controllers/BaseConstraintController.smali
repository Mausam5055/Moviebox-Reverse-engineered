.class public abstract Landroidx/work/impl/constraints/controllers/BaseConstraintController;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/work/impl/constraints/controllers/d;


# instance fields
.field private final a:Li4/g;


# direct methods
.method public constructor <init>(Li4/g;)V
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->a:Li4/g;

    return-void
.end method

.method public static final synthetic d(Landroidx/work/impl/constraints/controllers/BaseConstraintController;)Li4/g;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->a:Li4/g;

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/work/impl/model/j0;)Z
    .locals 1

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Landroidx/work/impl/constraints/controllers/d;->c(Landroidx/work/impl/model/j0;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->a:Li4/g;

    invoke-virtual {p1}, Li4/g;->f()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/controllers/BaseConstraintController;->f(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Landroidx/work/d;)Lkotlinx/coroutines/flow/b;
    .locals 1

    const-string v0, "constraints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/work/impl/constraints/controllers/BaseConstraintController$track$1;-><init>(Landroidx/work/impl/constraints/controllers/BaseConstraintController;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/d;->e(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/b;

    move-result-object p1

    return-object p1
.end method

.method protected abstract e()I
.end method

.method protected abstract f(Ljava/lang/Object;)Z
.end method
