.class public abstract Landroidx/compose/runtime/s1;
.super Landroidx/compose/runtime/q;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/q;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final f(Landroidx/compose/runtime/t1;)Landroidx/compose/runtime/g3;
    .locals 2

    invoke-virtual {p1}, Landroidx/compose/runtime/t1;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/compose/runtime/f0;

    invoke-virtual {p1}, Landroidx/compose/runtime/t1;->f()Landroidx/compose/runtime/i1;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/t1;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/compose/runtime/t1;->e()Landroidx/compose/runtime/q2;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroidx/compose/runtime/r2;->j()Landroidx/compose/runtime/q2;

    move-result-object p1

    :cond_0
    invoke-static {v1, p1}, Landroidx/compose/runtime/r2;->e(Ljava/lang/Object;Landroidx/compose/runtime/q2;)Landroidx/compose/runtime/i1;

    move-result-object v1

    :cond_1
    invoke-direct {v0, v1}, Landroidx/compose/runtime/f0;-><init>(Landroidx/compose/runtime/i1;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/t1;->c()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Landroidx/compose/runtime/x;

    invoke-virtual {p1}, Landroidx/compose/runtime/t1;->c()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/compose/runtime/x;-><init>(Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/t1;->f()Landroidx/compose/runtime/i1;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/compose/runtime/f0;

    invoke-virtual {p1}, Landroidx/compose/runtime/t1;->f()Landroidx/compose/runtime/i1;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/compose/runtime/f0;-><init>(Landroidx/compose/runtime/i1;)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroidx/compose/runtime/c3;

    invoke-virtual {p1}, Landroidx/compose/runtime/t1;->d()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/compose/runtime/c3;-><init>(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public b(Landroidx/compose/runtime/t1;Landroidx/compose/runtime/g3;)Landroidx/compose/runtime/g3;
    .locals 3

    instance-of v0, p2, Landroidx/compose/runtime/f0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/compose/runtime/t1;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, p2

    check-cast v1, Landroidx/compose/runtime/f0;

    invoke-virtual {v1}, Landroidx/compose/runtime/f0;->b()Landroidx/compose/runtime/i1;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/compose/runtime/t1;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    instance-of v0, p2, Landroidx/compose/runtime/c3;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/t1;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/runtime/t1;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast p2, Landroidx/compose/runtime/c3;

    invoke-virtual {p2}, Landroidx/compose/runtime/c3;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    move-object v1, p2

    goto :goto_1

    :cond_1
    instance-of v0, p2, Landroidx/compose/runtime/x;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/runtime/t1;->c()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    check-cast p2, Landroidx/compose/runtime/x;

    invoke-virtual {p2}, Landroidx/compose/runtime/x;->b()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Landroidx/compose/runtime/s1;->f(Landroidx/compose/runtime/t1;)Landroidx/compose/runtime/g3;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public abstract c(Ljava/lang/Object;)Landroidx/compose/runtime/t1;
.end method

.method public final d(Ljava/lang/Object;)Landroidx/compose/runtime/t1;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/s1;->c(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/Object;)Landroidx/compose/runtime/t1;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/s1;->c(Ljava/lang/Object;)Landroidx/compose/runtime/t1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/t1;->h()Landroidx/compose/runtime/t1;

    move-result-object p1

    return-object p1
.end method
