.class public final Landroidx/compose/ui/node/BackwardsCompatNode;
.super Landroidx/compose/ui/f$c;

# interfaces
.implements Landroidx/compose/ui/node/x;
.implements Landroidx/compose/ui/node/n;
.implements Landroidx/compose/ui/node/i1;
.implements Landroidx/compose/ui/node/e1;
.implements Landroidx/compose/ui/modifier/h;
.implements Landroidx/compose/ui/modifier/k;
.implements Landroidx/compose/ui/node/a1;
.implements Landroidx/compose/ui/node/w;
.implements Landroidx/compose/ui/node/p;
.implements Landroidx/compose/ui/focus/c;
.implements Landroidx/compose/ui/focus/m;
.implements Landroidx/compose/ui/focus/q;
.implements Landroidx/compose/ui/node/z0;
.implements Landroidx/compose/ui/draw/a;


# instance fields
.field private n:Landroidx/compose/ui/f$b;

.field private o:Z

.field private p:Landroidx/compose/ui/modifier/a;

.field private q:Ljava/util/HashSet;

.field private r:Landroidx/compose/ui/layout/l;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/f$b;)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/f$c;-><init>()V

    invoke-static {p1}, Landroidx/compose/ui/node/t0;->f(Landroidx/compose/ui/f$b;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/f$c;->x1(I)V

    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->o:Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->q:Ljava/util/HashSet;

    return-void
.end method

.method private final F1(Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "initializeModifier called on unattached node"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    const/16 v1, 0x20

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroidx/compose/ui/modifier/d;

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/compose/ui/node/BackwardsCompatNode$initializeModifier$2;

    invoke-direct {v1, p0}, Landroidx/compose/ui/node/BackwardsCompatNode$initializeModifier$2;-><init>(Landroidx/compose/ui/node/BackwardsCompatNode;)V

    invoke-virtual {p0, v1}, Landroidx/compose/ui/f$c;->B1(Lkotlin/jvm/functions/Function0;)V

    :cond_1
    instance-of v1, v0, Landroidx/compose/ui/modifier/j;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/modifier/j;

    invoke-direct {p0, v1}, Landroidx/compose/ui/node/BackwardsCompatNode;->K1(Landroidx/compose/ui/modifier/j;)V

    :cond_2
    const/4 v1, 0x4

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    if-nez p1, :cond_3

    invoke-static {p0}, Landroidx/compose/ui/node/a0;->a(Landroidx/compose/ui/node/x;)V

    :cond_3
    const/4 v1, 0x2

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    invoke-static {p0}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->c(Landroidx/compose/ui/node/BackwardsCompatNode;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    move-object v2, v1

    check-cast v2, Landroidx/compose/ui/node/y;

    invoke-virtual {v2, p0}, Landroidx/compose/ui/node/y;->U2(Landroidx/compose/ui/node/x;)V

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->o2()V

    :cond_4
    if-nez p1, :cond_5

    invoke-static {p0}, Landroidx/compose/ui/node/a0;->a(Landroidx/compose/ui/node/x;)V

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->y0()V

    :cond_5
    instance-of p1, v0, Landroidx/compose/ui/layout/i0;

    if-eqz p1, :cond_6

    move-object p1, v0

    check-cast p1, Landroidx/compose/ui/layout/i0;

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/compose/ui/layout/i0;->d(Landroidx/compose/ui/layout/h0;)V

    :cond_6
    const/16 p1, 0x80

    invoke-static {p1}, Landroidx/compose/ui/node/s0;->a(I)I

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    const/16 p1, 0x100

    invoke-static {p1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v1

    and-int/2addr p1, v1

    if-eqz p1, :cond_7

    instance-of p1, v0, Landroidx/compose/ui/layout/b0;

    if-eqz p1, :cond_7

    invoke-static {p0}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->c(Landroidx/compose/ui/node/BackwardsCompatNode;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->y0()V

    :cond_7
    const/16 p1, 0x10

    invoke-static {p1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v1

    and-int/2addr p1, v1

    if-eqz p1, :cond_8

    instance-of p1, v0, Landroidx/compose/ui/input/pointer/d0;

    if-eqz p1, :cond_8

    check-cast v0, Landroidx/compose/ui/input/pointer/d0;

    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/d0;->g()Landroidx/compose/ui/input/pointer/c0;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->c1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/input/pointer/c0;->f(Landroidx/compose/ui/layout/l;)V

    :cond_8
    const/16 p1, 0x8

    invoke-static {p1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_9

    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    move-result-object p1

    invoke-interface {p1}, Landroidx/compose/ui/node/y0;->onSemanticsChange()V

    :cond_9
    return-void
.end method

.method private final I1()V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unInitializeModifier called on unattached node"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    const/16 v1, 0x20

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroidx/compose/ui/modifier/j;

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/y0;->getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroidx/compose/ui/modifier/j;

    invoke-interface {v2}, Landroidx/compose/ui/modifier/j;->getKey()Landroidx/compose/ui/modifier/l;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroidx/compose/ui/modifier/ModifierLocalManager;->d(Landroidx/compose/ui/node/BackwardsCompatNode;Landroidx/compose/ui/modifier/c;)V

    :cond_1
    instance-of v1, v0, Landroidx/compose/ui/modifier/d;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/compose/ui/modifier/d;

    invoke-static {}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->a()Landroidx/compose/ui/node/BackwardsCompatNodeKt$a;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/compose/ui/modifier/d;->f(Landroidx/compose/ui/modifier/k;)V

    :cond_2
    const/16 v0, 0x8

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->onSemanticsChange()V

    :cond_3
    return-void
.end method

.method private final K1(Landroidx/compose/ui/modifier/j;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->p:Landroidx/compose/ui/modifier/a;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroidx/compose/ui/modifier/j;->getKey()Landroidx/compose/ui/modifier/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/modifier/a;->a(Landroidx/compose/ui/modifier/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/modifier/a;->c(Landroidx/compose/ui/modifier/j;)V

    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;

    move-result-object v0

    invoke-interface {p1}, Landroidx/compose/ui/modifier/j;->getKey()Landroidx/compose/ui/modifier/l;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/modifier/ModifierLocalManager;->f(Landroidx/compose/ui/node/BackwardsCompatNode;Landroidx/compose/ui/modifier/c;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/compose/ui/modifier/a;

    invoke-direct {v0, p1}, Landroidx/compose/ui/modifier/a;-><init>(Landroidx/compose/ui/modifier/j;)V

    iput-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->p:Landroidx/compose/ui/modifier/a;

    invoke-static {p0}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->c(Landroidx/compose/ui/node/BackwardsCompatNode;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;

    move-result-object v0

    invoke-interface {p1}, Landroidx/compose/ui/modifier/j;->getKey()Landroidx/compose/ui/modifier/l;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/modifier/ModifierLocalManager;->a(Landroidx/compose/ui/node/BackwardsCompatNode;Landroidx/compose/ui/modifier/c;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final D1()Landroidx/compose/ui/f$b;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    return-object v0
.end method

.method public final E1()Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->q:Ljava/util/HashSet;

    return-object v0
.end method

.method public F(J)V
    .locals 0

    return-void
.end method

.method public final G1()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->o:Z

    invoke-static {p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    return-void
.end method

.method public final H1(Landroidx/compose/ui/f$b;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->I1()V

    :cond_0
    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    invoke-static {p1}, Landroidx/compose/ui/node/t0;->f(Landroidx/compose/ui/f$b;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/f$c;->x1(I)V

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/BackwardsCompatNode;->F1(Z)V

    :cond_1
    return-void
.end method

.method public I(Landroidx/compose/ui/layout/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->r:Landroidx/compose/ui/layout/l;

    return-void
.end method

.method public final J1()V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->q:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-static {p0}, Landroidx/compose/ui/node/g;->n(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/y0;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    invoke-static {}, Landroidx/compose/ui/node/BackwardsCompatNodeKt;->b()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    new-instance v2, Landroidx/compose/ui/node/BackwardsCompatNode$updateModifierLocalConsumer$1;

    invoke-direct {v2, p0}, Landroidx/compose/ui/node/BackwardsCompatNode$updateModifierLocalConsumer$1;-><init>(Landroidx/compose/ui/node/BackwardsCompatNode;)V

    invoke-virtual {v0, p0, v1, v2}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->i(Landroidx/compose/ui/node/z0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method

.method public M(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/input/pointer/d0;

    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/d0;->g()Landroidx/compose/ui/input/pointer/c0;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/compose/ui/input/pointer/c0;->e(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    return-void
.end method

.method public synthetic O()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/h1;->a(Landroidx/compose/ui/node/i1;)Z

    move-result v0

    return v0
.end method

.method public P(Landroidx/compose/ui/modifier/c;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->q:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x20

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->a1()I

    move-result v3

    and-int/2addr v3, v0

    const/4 v4, 0x0

    if-eqz v3, :cond_8

    :goto_1
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v3

    and-int/2addr v3, v0

    if-eqz v3, :cond_7

    move-object v3, v1

    move-object v5, v4

    :goto_2
    if-eqz v3, :cond_7

    instance-of v6, v3, Landroidx/compose/ui/modifier/h;

    if-eqz v6, :cond_0

    check-cast v3, Landroidx/compose/ui/modifier/h;

    invoke-interface {v3}, Landroidx/compose/ui/modifier/h;->V()Landroidx/compose/ui/modifier/f;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroidx/compose/ui/modifier/f;->a(Landroidx/compose/ui/modifier/c;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Landroidx/compose/ui/modifier/h;->V()Landroidx/compose/ui/modifier/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/modifier/f;->b(Landroidx/compose/ui/modifier/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->f1()I

    move-result v6

    and-int/2addr v6, v0

    if-eqz v6, :cond_6

    instance-of v6, v3, Landroidx/compose/ui/node/i;

    if-eqz v6, :cond_6

    move-object v6, v3

    check-cast v6, Landroidx/compose/ui/node/i;

    invoke-virtual {v6}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_3
    const/4 v9, 0x1

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->f1()I

    move-result v10

    and-int/2addr v10, v0

    if-eqz v10, :cond_4

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v9, :cond_1

    move-object v3, v6

    goto :goto_4

    :cond_1
    if-nez v5, :cond_2

    new-instance v5, Landroidx/compose/runtime/collection/b;

    const/16 v9, 0x10

    new-array v9, v9, [Landroidx/compose/ui/f$c;

    invoke-direct {v5, v9, v7}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v5, v3}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v3, v4

    :cond_3
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v6

    goto :goto_3

    :cond_5
    if-ne v8, v9, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v5}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v3

    goto :goto_2

    :cond_7
    invoke-virtual {v1}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v1

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->e0()Landroidx/compose/ui/node/q0;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroidx/compose/ui/node/q0;->o()Landroidx/compose/ui/f$c;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    move-object v1, v4

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Landroidx/compose/ui/modifier/c;->a()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "visitAncestors called on an unattached node"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public P0()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/input/pointer/d0;

    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/d0;->g()Landroidx/compose/ui/input/pointer/c0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/c0;->c()Z

    move-result v0

    return v0
.end method

.method public R()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/input/pointer/d0;

    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/d0;->g()Landroidx/compose/ui/input/pointer/c0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/c0;->a()Z

    move-result v0

    return v0
.end method

.method public R0(Landroidx/compose/ui/semantics/n;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/semantics/j;

    invoke-interface {v0}, Landroidx/compose/ui/semantics/j;->h()Landroidx/compose/ui/semantics/i;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsConfiguration"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/ui/semantics/i;

    invoke-virtual {p1, v0}, Landroidx/compose/ui/semantics/i;->c(Landroidx/compose/ui/semantics/i;)V

    return-void
.end method

.method public S0(Landroidx/compose/ui/focus/r;)V
    .locals 1

    iget-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    const-string v0, "onFocusEvent called on wrong node"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public synthetic T0()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/d1;->c(Landroidx/compose/ui/node/e1;)V

    return-void
.end method

.method public V()Landroidx/compose/ui/modifier/f;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->p:Landroidx/compose/ui/modifier/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/modifier/i;->a()Landroidx/compose/ui/modifier/f;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public synthetic W0()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/h1;->b(Landroidx/compose/ui/node/i1;)Z

    move-result v0

    return v0
.end method

.method public getDensity()Lo0/e;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->H()Lo0/e;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/g;->m(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public i()J
    .locals 2

    const/16 v0, 0x80

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/node/g;->h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/u;->d(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isValidOwnerScope()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v0

    return v0
.end method

.method public n(Lz/c;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.draw.DrawModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/draw/f;

    invoke-interface {v0, p1}, Landroidx/compose/ui/draw/f;->n(Lz/c;)V

    return-void
.end method

.method public n1()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/ui/node/BackwardsCompatNode;->F1(Z)V

    return-void
.end method

.method public o1()V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->I1()V

    return-void
.end method

.method public r0(Landroidx/compose/ui/focus/k;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    const-string v1, "applyFocusProperties called on wrong node"

    invoke-static {v1}, Lg0/a;->b(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    new-instance v0, Landroidx/compose/ui/focus/h;

    invoke-direct {v0, p1}, Landroidx/compose/ui/focus/h;-><init>(Landroidx/compose/ui/focus/k;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public t0()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/input/pointer/d0;

    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/d0;->g()Landroidx/compose/ui/input/pointer/c0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/c0;->d()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(Landroidx/compose/ui/layout/l;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.layout.OnGloballyPositionedModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/layout/b0;

    invoke-interface {v0, p1}, Landroidx/compose/ui/layout/b0;->v(Landroidx/compose/ui/layout/l;)V

    return-void
.end method

.method public v0(Lo0/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    const-string p2, "null cannot be cast to non-null type androidx.compose.ui.layout.ParentDataModifier"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public w0()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->o:Z

    invoke-static {p0}, Landroidx/compose/ui/node/o;->a(Landroidx/compose/ui/node/n;)V

    return-void
.end method

.method public z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->n:Landroidx/compose/ui/f$b;

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/layout/o;

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/o;->z(Landroidx/compose/ui/layout/x;Landroidx/compose/ui/layout/s;J)Landroidx/compose/ui/layout/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic z0()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/d1;->b(Landroidx/compose/ui/node/e1;)V

    return-void
.end method
