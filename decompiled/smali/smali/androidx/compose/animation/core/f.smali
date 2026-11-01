.class public final Landroidx/compose/animation/core/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroidx/compose/animation/core/s0;

.field private final b:Ljava/lang/Object;

.field private final c:J

.field private final d:Lkotlin/jvm/functions/Function0;

.field private final e:Landroidx/compose/runtime/i1;

.field private f:Landroidx/compose/animation/core/o;

.field private g:J

.field private h:J

.field private final i:Landroidx/compose/runtime/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroidx/compose/animation/core/s0;Landroidx/compose/animation/core/o;JLjava/lang/Object;JZLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/animation/core/f;->a:Landroidx/compose/animation/core/s0;

    iput-object p6, p0, Landroidx/compose/animation/core/f;->b:Ljava/lang/Object;

    iput-wide p7, p0, Landroidx/compose/animation/core/f;->c:J

    iput-object p10, p0, Landroidx/compose/animation/core/f;->d:Lkotlin/jvm/functions/Function0;

    const/4 p2, 0x0

    const/4 p6, 0x2

    invoke-static {p1, p2, p6, p2}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/f;->e:Landroidx/compose/runtime/i1;

    invoke-static {p3}, Landroidx/compose/animation/core/p;->e(Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/f;->f:Landroidx/compose/animation/core/o;

    iput-wide p4, p0, Landroidx/compose/animation/core/f;->g:J

    const-wide/high16 p3, -0x8000000000000000L

    iput-wide p3, p0, Landroidx/compose/animation/core/f;->h:J

    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1, p2, p6, p2}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/animation/core/f;->i:Landroidx/compose/runtime/i1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/compose/animation/core/f;->k(Z)V

    iget-object v0, p0, Landroidx/compose/animation/core/f;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/f;->h:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/f;->g:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/core/f;->c:J

    return-wide v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/f;->e:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/animation/core/f;->a:Landroidx/compose/animation/core/s0;

    invoke-interface {v0}, Landroidx/compose/animation/core/s0;->b()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/animation/core/f;->f:Landroidx/compose/animation/core/o;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final g()Landroidx/compose/animation/core/o;
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/f;->f:Landroidx/compose/animation/core/o;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/f;->i:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final i(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/animation/core/f;->h:J

    return-void
.end method

.method public final j(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/animation/core/f;->g:J

    return-void
.end method

.method public final k(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/f;->i:Landroidx/compose/runtime/i1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/f;->e:Landroidx/compose/runtime/i1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final m(Landroidx/compose/animation/core/o;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/core/f;->f:Landroidx/compose/animation/core/o;

    return-void
.end method
