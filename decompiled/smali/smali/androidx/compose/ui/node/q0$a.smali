.class final Landroidx/compose/ui/node/q0$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/node/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private a:Landroidx/compose/ui/f$c;

.field private b:I

.field private c:Landroidx/compose/runtime/collection/b;

.field private d:Landroidx/compose/runtime/collection/b;

.field private e:Z

.field final synthetic f:Landroidx/compose/ui/node/q0;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/q0;Landroidx/compose/ui/f$c;ILandroidx/compose/runtime/collection/b;Landroidx/compose/runtime/collection/b;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/q0$a;->f:Landroidx/compose/ui/node/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    iput p3, p0, Landroidx/compose/ui/node/q0$a;->b:I

    iput-object p4, p0, Landroidx/compose/ui/node/q0$a;->c:Landroidx/compose/runtime/collection/b;

    iput-object p5, p0, Landroidx/compose/ui/node/q0$a;->d:Landroidx/compose/runtime/collection/b;

    iput-boolean p6, p0, Landroidx/compose/ui/node/q0$a;->e:Z

    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/q0$a;->c:Landroidx/compose/runtime/collection/b;

    iget v1, p0, Landroidx/compose/ui/node/q0$a;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, Landroidx/compose/ui/f$b;

    iget-object v0, p0, Landroidx/compose/ui/node/q0$a;->d:Landroidx/compose/runtime/collection/b;

    iget v1, p0, Landroidx/compose/ui/node/q0$a;->b:I

    add-int/2addr v1, p2

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object p2

    aget-object p2, p2, v1

    check-cast p2, Landroidx/compose/ui/f$b;

    invoke-static {p1, p2}, Landroidx/compose/ui/node/NodeChainKt;->d(Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$b;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(I)V
    .locals 3

    iget v0, p0, Landroidx/compose/ui/node/q0$a;->b:I

    add-int/2addr v0, p1

    iget-object p1, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    iget-object v1, p0, Landroidx/compose/ui/node/q0$a;->f:Landroidx/compose/ui/node/q0;

    iget-object v2, p0, Landroidx/compose/ui/node/q0$a;->d:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v2

    aget-object v0, v2, v0

    check-cast v0, Landroidx/compose/ui/f$b;

    invoke-static {v1, v0, p1}, Landroidx/compose/ui/node/q0;->a(Landroidx/compose/ui/node/q0;Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    iget-object p1, p0, Landroidx/compose/ui/node/q0$a;->f:Landroidx/compose/ui/node/q0;

    invoke-static {p1}, Landroidx/compose/ui/node/q0;->d(Landroidx/compose/ui/node/q0;)Landroidx/compose/ui/node/q0$b;

    iget-boolean p1, p0, Landroidx/compose/ui/node/q0$a;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->c1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    invoke-static {v0}, Landroidx/compose/ui/node/g;->d(Landroidx/compose/ui/f$c;)Landroidx/compose/ui/node/x;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/compose/ui/node/y;

    iget-object v2, p0, Landroidx/compose/ui/node/q0$a;->f:Landroidx/compose/ui/node/q0;

    invoke-virtual {v2}, Landroidx/compose/ui/node/q0;->m()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/node/y;-><init>(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/x;)V

    iget-object v0, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/f$c;->C1(Landroidx/compose/ui/node/NodeCoordinator;)V

    iget-object v0, p0, Landroidx/compose/ui/node/q0$a;->f:Landroidx/compose/ui/node/q0;

    iget-object v2, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    invoke-static {v0, v2, v1}, Landroidx/compose/ui/node/q0;->e(Landroidx/compose/ui/node/q0;Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator;)V

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->a2()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/NodeCoordinator;->E2(Landroidx/compose/ui/node/NodeCoordinator;)V

    invoke-virtual {v1, p1}, Landroidx/compose/ui/node/NodeCoordinator;->D2(Landroidx/compose/ui/node/NodeCoordinator;)V

    invoke-virtual {p1, v1}, Landroidx/compose/ui/node/NodeCoordinator;->E2(Landroidx/compose/ui/node/NodeCoordinator;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/f$c;->C1(Landroidx/compose/ui/node/NodeCoordinator;)V

    :goto_0
    iget-object p1, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->l1()V

    iget-object p1, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->r1()V

    iget-object p1, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    invoke-static {p1}, Landroidx/compose/ui/node/t0;->a(Landroidx/compose/ui/f$c;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/compose/ui/f$c;->w1(Z)V

    :goto_1
    return-void
.end method

.method public c(II)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    iget-object v0, p0, Landroidx/compose/ui/node/q0$a;->c:Landroidx/compose/runtime/collection/b;

    iget v1, p0, Landroidx/compose/ui/node/q0$a;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v1

    check-cast p1, Landroidx/compose/ui/f$b;

    iget-object v0, p0, Landroidx/compose/ui/node/q0$a;->d:Landroidx/compose/runtime/collection/b;

    iget v1, p0, Landroidx/compose/ui/node/q0$a;->b:I

    add-int/2addr v1, p2

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object p2

    aget-object p2, p2, v1

    check-cast p2, Landroidx/compose/ui/f$b;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/q0$a;->f:Landroidx/compose/ui/node/q0;

    iget-object v1, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    invoke-static {v0, p1, p2, v1}, Landroidx/compose/ui/node/q0;->f(Landroidx/compose/ui/node/q0;Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$b;Landroidx/compose/ui/f$c;)V

    iget-object p1, p0, Landroidx/compose/ui/node/q0$a;->f:Landroidx/compose/ui/node/q0;

    invoke-static {p1}, Landroidx/compose/ui/node/q0;->d(Landroidx/compose/ui/node/q0;)Landroidx/compose/ui/node/q0$b;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/node/q0$a;->f:Landroidx/compose/ui/node/q0;

    invoke-static {p1}, Landroidx/compose/ui/node/q0;->d(Landroidx/compose/ui/node/q0;)Landroidx/compose/ui/node/q0$b;

    :goto_0
    return-void
.end method

.method public final d(Landroidx/compose/runtime/collection/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/q0$a;->d:Landroidx/compose/runtime/collection/b;

    return-void
.end method

.method public e(II)V
    .locals 2

    iget-object p1, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object p2, p0, Landroidx/compose/ui/node/q0$a;->f:Landroidx/compose/ui/node/q0;

    invoke-static {p2}, Landroidx/compose/ui/node/q0;->d(Landroidx/compose/ui/node/q0;)Landroidx/compose/ui/node/q0$b;

    const/4 p2, 0x2

    invoke-static {p2}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result p2

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v0

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->c1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/compose/ui/node/NodeCoordinator;->a2()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Landroidx/compose/ui/node/NodeCoordinator;->D2(Landroidx/compose/ui/node/NodeCoordinator;)V

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/compose/ui/node/NodeCoordinator;->E2(Landroidx/compose/ui/node/NodeCoordinator;)V

    iget-object v0, p0, Landroidx/compose/ui/node/q0$a;->f:Landroidx/compose/ui/node/q0;

    iget-object v1, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    invoke-static {v0, v1, p2}, Landroidx/compose/ui/node/q0;->e(Landroidx/compose/ui/node/q0;Landroidx/compose/ui/f$c;Landroidx/compose/ui/node/NodeCoordinator;)V

    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/node/q0$a;->f:Landroidx/compose/ui/node/q0;

    invoke-static {p2, p1}, Landroidx/compose/ui/node/q0;->b(Landroidx/compose/ui/node/q0;Landroidx/compose/ui/f$c;)Landroidx/compose/ui/f$c;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    return-void
.end method

.method public final f(Landroidx/compose/runtime/collection/b;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/q0$a;->c:Landroidx/compose/runtime/collection/b;

    return-void
.end method

.method public final g(Landroidx/compose/ui/f$c;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/q0$a;->a:Landroidx/compose/ui/f$c;

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/node/q0$a;->b:I

    return-void
.end method

.method public final i(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/q0$a;->e:Z

    return-void
.end method
