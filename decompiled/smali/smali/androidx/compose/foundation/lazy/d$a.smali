.class public final Landroidx/compose/foundation/lazy/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/lazy/layout/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/lazy/d;->a(Landroidx/compose/foundation/lazy/LazyListState;Z)Landroidx/compose/foundation/lazy/layout/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/compose/foundation/lazy/LazyListState;

.field final synthetic b:Z


# direct methods
.method constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/d$a;->a:Landroidx/compose/foundation/lazy/LazyListState;

    iput-boolean p2, p0, Landroidx/compose/foundation/lazy/d$a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/d$a;->a:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->t()Landroidx/compose/foundation/lazy/l;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/l;->e()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/lazy/d$a;->a:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->t()Landroidx/compose/foundation/lazy/l;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/foundation/lazy/l;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b()F
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/lazy/d$a;->a:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->o()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/lazy/d$a;->a:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->p()I

    move-result v1

    iget-object v2, p0, Landroidx/compose/foundation/lazy/d$a;->a:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/LazyListState;->d()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/compose/foundation/lazy/layout/a0;->a(IIZ)F

    move-result v0

    return v0
.end method

.method public c(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/lazy/d$a;->a:Landroidx/compose/foundation/lazy/LazyListState;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/lazy/LazyListState;->H(Landroidx/compose/foundation/lazy/LazyListState;IILkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public d()Landroidx/compose/ui/semantics/b;
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/foundation/lazy/d$a;->b:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/ui/semantics/b;

    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/semantics/b;-><init>(II)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/semantics/b;

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/semantics/b;-><init>(II)V

    :goto_0
    return-object v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/d$a;->a:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->t()Landroidx/compose/foundation/lazy/l;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/l;->getOrientation()Landroidx/compose/foundation/gestures/Orientation;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Vertical:Landroidx/compose/foundation/gestures/Orientation;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/lazy/d$a;->a:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->t()Landroidx/compose/foundation/lazy/l;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/l;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/t;->f(J)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/d$a;->a:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->t()Landroidx/compose/foundation/lazy/l;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/l;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/t;->g(J)I

    move-result v0

    :goto_0
    return v0
.end method

.method public f()F
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/lazy/d$a;->a:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->o()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/lazy/d$a;->a:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyListState;->p()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/lazy/layout/a0;->b(II)F

    move-result v0

    return v0
.end method
