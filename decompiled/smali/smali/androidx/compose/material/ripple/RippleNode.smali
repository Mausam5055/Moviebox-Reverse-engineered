.class public abstract Landroidx/compose/material/ripple/RippleNode;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/d;
.implements Landroidx/compose/ui/node/n;
.implements Landroidx/compose/ui/node/w;


# instance fields
.field private final n:Lp/g;

.field private final o:Z

.field private final p:F

.field private final q:Landroidx/compose/ui/graphics/x1;

.field private final r:Lkotlin/jvm/functions/Function0;

.field private final s:Z

.field private t:Landroidx/compose/material/ripple/StateLayer;

.field private u:F

.field private v:J

.field private w:Z

.field private final x:Landroidx/collection/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->n:Lp/g;

    iput-boolean p2, p0, Landroidx/compose/material/ripple/RippleNode;->o:Z

    iput p3, p0, Landroidx/compose/material/ripple/RippleNode;->p:F

    iput-object p4, p0, Landroidx/compose/material/ripple/RippleNode;->q:Landroidx/compose/ui/graphics/x1;

    iput-object p5, p0, Landroidx/compose/material/ripple/RippleNode;->r:Lkotlin/jvm/functions/Function0;

    sget-object p1, Ly/m;->b:Ly/m$a;

    invoke-virtual {p1}, Ly/m$a;->b()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/material/ripple/RippleNode;->v:J

    new-instance p1, Landroidx/collection/l0;

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-direct {p1, p4, p2, p3}, Landroidx/collection/l0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->x:Landroidx/collection/l0;

    return-void
.end method

.method public synthetic constructor <init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroidx/compose/material/ripple/RippleNode;-><init>(Lp/g;ZFLandroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic D1(Landroidx/compose/material/ripple/RippleNode;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/material/ripple/RippleNode;->w:Z

    return p0
.end method

.method public static final synthetic E1(Landroidx/compose/material/ripple/RippleNode;)Lp/g;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode;->n:Lp/g;

    return-object p0
.end method

.method public static final synthetic F1(Landroidx/compose/material/ripple/RippleNode;)Landroidx/collection/l0;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleNode;->x:Landroidx/collection/l0;

    return-object p0
.end method

.method public static final synthetic G1(Landroidx/compose/material/ripple/RippleNode;Lp/k;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/material/ripple/RippleNode;->O1(Lp/k;)V

    return-void
.end method

.method public static final synthetic H1(Landroidx/compose/material/ripple/RippleNode;Lp/f;Lkotlinx/coroutines/n0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/material/ripple/RippleNode;->Q1(Lp/f;Lkotlinx/coroutines/n0;)V

    return-void
.end method

.method private final O1(Lp/k;)V
    .locals 3

    instance-of v0, p1, Lp/k$b;

    if-eqz v0, :cond_0

    check-cast p1, Lp/k$b;

    iget-wide v0, p0, Landroidx/compose/material/ripple/RippleNode;->v:J

    iget v2, p0, Landroidx/compose/material/ripple/RippleNode;->u:F

    invoke-virtual {p0, p1, v0, v1, v2}, Landroidx/compose/material/ripple/RippleNode;->I1(Lp/k$b;JF)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lp/k$c;

    if-eqz v0, :cond_1

    check-cast p1, Lp/k$c;

    invoke-virtual {p1}, Lp/k$c;->a()Lp/k$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material/ripple/RippleNode;->P1(Lp/k$b;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lp/k$a;

    if-eqz v0, :cond_2

    check-cast p1, Lp/k$a;

    invoke-virtual {p1}, Lp/k$a;->a()Lp/k$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/material/ripple/RippleNode;->P1(Lp/k$b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private final Q1(Lp/f;Lkotlinx/coroutines/n0;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleNode;->t:Landroidx/compose/material/ripple/StateLayer;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/material/ripple/StateLayer;

    iget-boolean v1, p0, Landroidx/compose/material/ripple/RippleNode;->o:Z

    iget-object v2, p0, Landroidx/compose/material/ripple/RippleNode;->r:Lkotlin/jvm/functions/Function0;

    invoke-direct {v0, v1, v2}, Landroidx/compose/material/ripple/StateLayer;-><init>(ZLkotlin/jvm/functions/Function0;)V

    invoke-static {p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleNode;->t:Landroidx/compose/material/ripple/StateLayer;

    :cond_0
    invoke-virtual {v0, p1, p2}, Landroidx/compose/material/ripple/StateLayer;->c(Lp/f;Lkotlinx/coroutines/n0;)V

    return-void
.end method


# virtual methods
.method public F(J)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/material/ripple/RippleNode;->w:Z

    invoke-static {p0}, Landroidx/compose/ui/node/g;->i(Landroidx/compose/ui/node/f;)Lo0/e;

    move-result-object v0

    invoke-static {p1, p2}, Lo0/u;->d(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/material/ripple/RippleNode;->v:J

    iget p1, p0, Landroidx/compose/material/ripple/RippleNode;->p:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/compose/material/ripple/RippleNode;->o:Z

    iget-wide v1, p0, Landroidx/compose/material/ripple/RippleNode;->v:J

    invoke-static {v0, p1, v1, v2}, Landroidx/compose/material/ripple/d;->a(Lo0/e;ZJ)F

    move-result p1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/compose/material/ripple/RippleNode;->p:F

    invoke-interface {v0, p1}, Lo0/e;->E0(F)F

    move-result p1

    :goto_0
    iput p1, p0, Landroidx/compose/material/ripple/RippleNode;->u:F

    iget-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->x:Landroidx/collection/l0;

    iget-object p2, p1, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    iget p1, p1, Landroidx/collection/ObjectList;->b:I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    check-cast v1, Lp/k;

    invoke-direct {p0, v1}, Landroidx/compose/material/ripple/RippleNode;->O1(Lp/k;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/compose/material/ripple/RippleNode;->x:Landroidx/collection/l0;

    invoke-virtual {p1}, Landroidx/collection/l0;->f()V

    return-void
.end method

.method public synthetic I(Landroidx/compose/ui/layout/l;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/node/v;->a(Landroidx/compose/ui/node/w;Landroidx/compose/ui/layout/l;)V

    return-void
.end method

.method public abstract I1(Lp/k$b;JF)V
.end method

.method public abstract J1(Lz/g;)V
.end method

.method protected final K1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/material/ripple/RippleNode;->o:Z

    return v0
.end method

.method protected final L1()Lkotlin/jvm/functions/Function0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleNode;->r:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final M1()J
    .locals 2

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleNode;->q:Landroidx/compose/ui/graphics/x1;

    invoke-interface {v0}, Landroidx/compose/ui/graphics/x1;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final N1()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/material/ripple/RippleNode;->v:J

    return-wide v0
.end method

.method public abstract P1(Lp/k$b;)V
.end method

.method public final i1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/material/ripple/RippleNode;->s:Z

    return v0
.end method

.method public n(Lz/c;)V
    .locals 4

    invoke-interface {p1}, Lz/c;->Y0()V

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleNode;->t:Landroidx/compose/material/ripple/StateLayer;

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/compose/material/ripple/RippleNode;->u:F

    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleNode;->M1()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Landroidx/compose/material/ripple/StateLayer;->b(Lz/g;FJ)V

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/material/ripple/RippleNode;->J1(Lz/g;)V

    return-void
.end method

.method public n1()V
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v0

    new-instance v3, Landroidx/compose/material/ripple/RippleNode$onAttach$1;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Landroidx/compose/material/ripple/RippleNode$onAttach$1;-><init>(Landroidx/compose/material/ripple/RippleNode;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public synthetic w0()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/m;->a(Landroidx/compose/ui/node/n;)V

    return-void
.end method
