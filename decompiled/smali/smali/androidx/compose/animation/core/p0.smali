.class public final Landroidx/compose/animation/core/p0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/animation/core/c;


# instance fields
.field private final a:Landroidx/compose/animation/core/v0;

.field private final b:Landroidx/compose/animation/core/s0;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Landroidx/compose/animation/core/o;

.field private f:Landroidx/compose/animation/core/o;

.field private final g:Landroidx/compose/animation/core/o;

.field private h:J

.field private i:Landroidx/compose/animation/core/o;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/g;Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/o;)V
    .locals 6

    invoke-interface {p1, p2}, Landroidx/compose/animation/core/g;->a(Landroidx/compose/animation/core/s0;)Landroidx/compose/animation/core/v0;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/p0;-><init>(Landroidx/compose/animation/core/v0;Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/o;)V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/core/v0;Landroidx/compose/animation/core/s0;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/core/p0;->a:Landroidx/compose/animation/core/v0;

    iput-object p2, p0, Landroidx/compose/animation/core/p0;->b:Landroidx/compose/animation/core/s0;

    iput-object p4, p0, Landroidx/compose/animation/core/p0;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/compose/animation/core/p0;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/compose/animation/core/p0;->e()Landroidx/compose/animation/core/s0;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/animation/core/s0;->a()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/o;

    iput-object p1, p0, Landroidx/compose/animation/core/p0;->e:Landroidx/compose/animation/core/o;

    invoke-virtual {p0}, Landroidx/compose/animation/core/p0;->e()Landroidx/compose/animation/core/s0;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/animation/core/s0;->a()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/o;

    iput-object p1, p0, Landroidx/compose/animation/core/p0;->f:Landroidx/compose/animation/core/o;

    if-eqz p5, :cond_0

    invoke-static {p5}, Landroidx/compose/animation/core/p;->e(Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/animation/core/p0;->e()Landroidx/compose/animation/core/s0;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/animation/core/s0;->a()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/animation/core/o;

    invoke-static {p1}, Landroidx/compose/animation/core/p;->g(Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Landroidx/compose/animation/core/p0;->g:Landroidx/compose/animation/core/o;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/compose/animation/core/p0;->h:J

    return-void
.end method

.method private final h()Landroidx/compose/animation/core/o;
    .locals 4

    iget-object v0, p0, Landroidx/compose/animation/core/p0;->i:Landroidx/compose/animation/core/o;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/core/p0;->a:Landroidx/compose/animation/core/v0;

    iget-object v1, p0, Landroidx/compose/animation/core/p0;->e:Landroidx/compose/animation/core/o;

    iget-object v2, p0, Landroidx/compose/animation/core/p0;->f:Landroidx/compose/animation/core/o;

    iget-object v3, p0, Landroidx/compose/animation/core/p0;->g:Landroidx/compose/animation/core/o;

    invoke-interface {v0, v1, v2, v3}, Landroidx/compose/animation/core/v0;->c(Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/animation/core/p0;->i:Landroidx/compose/animation/core/o;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/p0;->a:Landroidx/compose/animation/core/v0;

    invoke-interface {v0}, Landroidx/compose/animation/core/v0;->a()Z

    move-result v0

    return v0
.end method

.method public b(J)Landroidx/compose/animation/core/o;
    .locals 7

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/p0;->c(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/compose/animation/core/p0;->a:Landroidx/compose/animation/core/v0;

    iget-object v4, p0, Landroidx/compose/animation/core/p0;->e:Landroidx/compose/animation/core/o;

    iget-object v5, p0, Landroidx/compose/animation/core/p0;->f:Landroidx/compose/animation/core/o;

    iget-object v6, p0, Landroidx/compose/animation/core/p0;->g:Landroidx/compose/animation/core/o;

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Landroidx/compose/animation/core/v0;->e(JLandroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/compose/animation/core/p0;->h()Landroidx/compose/animation/core/o;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public synthetic c(J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/b;->a(Landroidx/compose/animation/core/c;J)Z

    move-result p1

    return p1
.end method

.method public d()J
    .locals 4

    iget-wide v0, p0, Landroidx/compose/animation/core/p0;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/animation/core/p0;->a:Landroidx/compose/animation/core/v0;

    iget-object v1, p0, Landroidx/compose/animation/core/p0;->e:Landroidx/compose/animation/core/o;

    iget-object v2, p0, Landroidx/compose/animation/core/p0;->f:Landroidx/compose/animation/core/o;

    iget-object v3, p0, Landroidx/compose/animation/core/p0;->g:Landroidx/compose/animation/core/o;

    invoke-interface {v0, v1, v2, v3}, Landroidx/compose/animation/core/v0;->f(Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/animation/core/p0;->h:J

    :cond_0
    iget-wide v0, p0, Landroidx/compose/animation/core/p0;->h:J

    return-wide v0
.end method

.method public e()Landroidx/compose/animation/core/s0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/p0;->b:Landroidx/compose/animation/core/s0;

    return-object v0
.end method

.method public f(J)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0, p1, p2}, Landroidx/compose/animation/core/p0;->c(J)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Landroidx/compose/animation/core/p0;->a:Landroidx/compose/animation/core/v0;

    iget-object v4, p0, Landroidx/compose/animation/core/p0;->e:Landroidx/compose/animation/core/o;

    iget-object v5, p0, Landroidx/compose/animation/core/p0;->f:Landroidx/compose/animation/core/o;

    iget-object v6, p0, Landroidx/compose/animation/core/p0;->g:Landroidx/compose/animation/core/o;

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, Landroidx/compose/animation/core/v0;->g(JLandroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/core/o;->b()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnimationVector cannot contain a NaN. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ". Animation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", playTimeNanos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/animation/core/k0;->b(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/animation/core/p0;->e()Landroidx/compose/animation/core/s0;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/animation/core/s0;->b()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/animation/core/p0;->g()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/p0;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final i()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/animation/core/p0;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TargetBasedAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/animation/core/p0;->i()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/animation/core/p0;->g()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",initial velocity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/animation/core/p0;->g:Landroidx/compose/animation/core/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/compose/animation/core/d;->b(Landroidx/compose/animation/core/c;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms,animationSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/animation/core/p0;->a:Landroidx/compose/animation/core/v0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
