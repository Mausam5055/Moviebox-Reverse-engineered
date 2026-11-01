.class public final Landroidx/compose/animation/core/Animatable;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/animation/core/s0;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/String;

.field private final d:Landroidx/compose/animation/core/i;

.field private final e:Landroidx/compose/runtime/i1;

.field private final f:Landroidx/compose/runtime/i1;

.field private final g:Landroidx/compose/animation/core/MutatorMutex;

.field private final h:Landroidx/compose/animation/core/o0;

.field private final i:Landroidx/compose/animation/core/o;

.field private final j:Landroidx/compose/animation/core/o;

.field private k:Landroidx/compose/animation/core/o;

.field private l:Landroidx/compose/animation/core/o;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/animation/core/Animatable;->a:Landroidx/compose/animation/core/s0;

    iput-object p3, p0, Landroidx/compose/animation/core/Animatable;->b:Ljava/lang/Object;

    iput-object p4, p0, Landroidx/compose/animation/core/Animatable;->c:Ljava/lang/String;

    new-instance p4, Landroidx/compose/animation/core/i;

    const/16 v9, 0x3c

    const/4 v10, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p4

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Landroidx/compose/animation/core/i;-><init>(Landroidx/compose/animation/core/s0;Ljava/lang/Object;Landroidx/compose/animation/core/o;JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p4, p0, Landroidx/compose/animation/core/Animatable;->d:Landroidx/compose/animation/core/i;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p4, 0x0

    const/4 v0, 0x2

    invoke-static {p2, p4, v0, p4}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/animation/core/Animatable;->e:Landroidx/compose/runtime/i1;

    invoke-static {p1, p4, v0, p4}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/Animatable;->f:Landroidx/compose/runtime/i1;

    new-instance p1, Landroidx/compose/animation/core/MutatorMutex;

    invoke-direct {p1}, Landroidx/compose/animation/core/MutatorMutex;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/Animatable;->g:Landroidx/compose/animation/core/MutatorMutex;

    new-instance p1, Landroidx/compose/animation/core/o0;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/o0;-><init>(FFLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/animation/core/Animatable;->h:Landroidx/compose/animation/core/o0;

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->m()Landroidx/compose/animation/core/o;

    move-result-object p1

    instance-of p2, p1, Landroidx/compose/animation/core/k;

    if-eqz p2, :cond_0

    invoke-static {}, Landroidx/compose/animation/core/a;->c()Landroidx/compose/animation/core/k;

    move-result-object p1

    goto :goto_0

    :cond_0
    instance-of p2, p1, Landroidx/compose/animation/core/l;

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/animation/core/a;->d()Landroidx/compose/animation/core/l;

    move-result-object p1

    goto :goto_0

    :cond_1
    instance-of p1, p1, Landroidx/compose/animation/core/m;

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/animation/core/a;->e()Landroidx/compose/animation/core/m;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroidx/compose/animation/core/a;->f()Landroidx/compose/animation/core/n;

    move-result-object p1

    :goto_0
    const-string p2, "null cannot be cast to non-null type V of androidx.compose.animation.core.Animatable"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/compose/animation/core/Animatable;->i:Landroidx/compose/animation/core/o;

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->m()Landroidx/compose/animation/core/o;

    move-result-object p3

    instance-of p4, p3, Landroidx/compose/animation/core/k;

    if-eqz p4, :cond_3

    invoke-static {}, Landroidx/compose/animation/core/a;->g()Landroidx/compose/animation/core/k;

    move-result-object p3

    goto :goto_1

    :cond_3
    instance-of p4, p3, Landroidx/compose/animation/core/l;

    if-eqz p4, :cond_4

    invoke-static {}, Landroidx/compose/animation/core/a;->h()Landroidx/compose/animation/core/l;

    move-result-object p3

    goto :goto_1

    :cond_4
    instance-of p3, p3, Landroidx/compose/animation/core/m;

    if-eqz p3, :cond_5

    invoke-static {}, Landroidx/compose/animation/core/a;->i()Landroidx/compose/animation/core/m;

    move-result-object p3

    goto :goto_1

    :cond_5
    invoke-static {}, Landroidx/compose/animation/core/a;->j()Landroidx/compose/animation/core/n;

    move-result-object p3

    :goto_1
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Landroidx/compose/animation/core/Animatable;->j:Landroidx/compose/animation/core/o;

    iput-object p1, p0, Landroidx/compose/animation/core/Animatable;->k:Landroidx/compose/animation/core/o;

    iput-object p3, p0, Landroidx/compose/animation/core/Animatable;->l:Landroidx/compose/animation/core/o;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const-string p4, "Animatable"

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/animation/core/Animatable;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/animation/core/Animatable;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/animation/core/Animatable;->h()V

    return-void
.end method

.method public static final synthetic c(Landroidx/compose/animation/core/Animatable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/animation/core/Animatable;->o(Z)V

    return-void
.end method

.method public static final synthetic d(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/animation/core/Animatable;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/g;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    iget-object p2, p0, Landroidx/compose/animation/core/Animatable;->h:Landroidx/compose/animation/core/o0;

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->l()Ljava/lang/Object;

    move-result-object p3

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    :cond_2
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;->e(Ljava/lang/Object;Landroidx/compose/animation/core/g;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->k:Landroidx/compose/animation/core/o;

    iget-object v1, p0, Landroidx/compose/animation/core/Animatable;->i:Landroidx/compose/animation/core/o;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->l:Landroidx/compose/animation/core/o;

    iget-object v1, p0, Landroidx/compose/animation/core/Animatable;->j:Landroidx/compose/animation/core/o;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->a:Landroidx/compose/animation/core/s0;

    invoke-interface {v0}, Landroidx/compose/animation/core/s0;->a()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/animation/core/o;

    invoke-virtual {v0}, Landroidx/compose/animation/core/o;->b()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v4

    iget-object v5, p0, Landroidx/compose/animation/core/Animatable;->k:Landroidx/compose/animation/core/o;

    invoke-virtual {v5, v2}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v5

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_1

    invoke-virtual {v0, v2}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v4

    iget-object v5, p0, Landroidx/compose/animation/core/Animatable;->l:Landroidx/compose/animation/core/o;

    invoke-virtual {v5, v2}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    :cond_1
    invoke-virtual {v0, v2}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v3

    iget-object v4, p0, Landroidx/compose/animation/core/Animatable;->k:Landroidx/compose/animation/core/o;

    invoke-virtual {v4, v2}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v4

    iget-object v5, p0, Landroidx/compose/animation/core/Animatable;->l:Landroidx/compose/animation/core/o;

    invoke-virtual {v5, v2}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v5

    invoke-static {v3, v4, v5}, Lkotlin/ranges/RangesKt;->l(FFF)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroidx/compose/animation/core/o;->e(IF)V

    const/4 v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    iget-object p1, p0, Landroidx/compose/animation/core/Animatable;->a:Landroidx/compose/animation/core/s0;

    invoke-interface {p1}, Landroidx/compose/animation/core/s0;->b()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method private final h()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->d:Landroidx/compose/animation/core/i;

    invoke-virtual {v0}, Landroidx/compose/animation/core/i;->g()Landroidx/compose/animation/core/o;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/animation/core/o;->d()V

    const-wide/high16 v1, -0x8000000000000000L

    invoke-virtual {v0, v1, v2}, Landroidx/compose/animation/core/i;->j(J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/animation/core/Animatable;->o(Z)V

    return-void
.end method

.method private final n(Landroidx/compose/animation/core/c;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15

    move-object v8, p0

    iget-object v0, v8, Landroidx/compose/animation/core/Animatable;->d:Landroidx/compose/animation/core/i;

    invoke-virtual {v0}, Landroidx/compose/animation/core/i;->d()J

    move-result-wide v4

    iget-object v9, v8, Landroidx/compose/animation/core/Animatable;->g:Landroidx/compose/animation/core/MutatorMutex;

    new-instance v11, Landroidx/compose/animation/core/Animatable$runAnimation$2;

    const/4 v7, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v7}, Landroidx/compose/animation/core/Animatable$runAnimation$2;-><init>(Landroidx/compose/animation/core/Animatable;Ljava/lang/Object;Landroidx/compose/animation/core/c;JLkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v10, 0x0

    move-object/from16 v12, p4

    invoke-static/range {v9 .. v14}, Landroidx/compose/animation/core/MutatorMutex;->e(Landroidx/compose/animation/core/MutatorMutex;Landroidx/compose/animation/core/MutatePriority;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final o(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->e:Landroidx/compose/runtime/i1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final p(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->f:Landroidx/compose/runtime/i1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Landroidx/compose/animation/core/g;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->k()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/animation/core/Animatable;->a:Landroidx/compose/animation/core/s0;

    invoke-static {p2, v1, v0, p1, p3}, Landroidx/compose/animation/core/d;->a(Landroidx/compose/animation/core/g;Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/animation/core/p0;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4, p5}, Landroidx/compose/animation/core/Animatable;->n(Landroidx/compose/animation/core/c;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i()Landroidx/compose/animation/core/i;
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->d:Landroidx/compose/animation/core/i;

    return-object v0
.end method

.method public final j()Landroidx/compose/animation/core/s0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->a:Landroidx/compose/animation/core/s0;

    return-object v0
.end method

.method public final k()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->d:Landroidx/compose/animation/core/i;

    invoke-virtual {v0}, Landroidx/compose/animation/core/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->a:Landroidx/compose/animation/core/s0;

    invoke-interface {v0}, Landroidx/compose/animation/core/s0;->b()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/animation/core/Animatable;->m()Landroidx/compose/animation/core/o;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final m()Landroidx/compose/animation/core/o;
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/Animatable;->d:Landroidx/compose/animation/core/i;

    invoke-virtual {v0}, Landroidx/compose/animation/core/i;->g()Landroidx/compose/animation/core/o;

    move-result-object v0

    return-object v0
.end method
