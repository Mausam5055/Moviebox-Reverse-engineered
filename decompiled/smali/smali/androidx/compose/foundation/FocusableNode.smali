.class public final Landroidx/compose/foundation/FocusableNode;
.super Landroidx/compose/ui/node/i;

# interfaces
.implements Landroidx/compose/ui/focus/c;
.implements Landroidx/compose/ui/node/i1;
.implements Landroidx/compose/ui/node/p;
.implements Landroidx/compose/ui/focus/q;


# instance fields
.field private final p:Z

.field private q:Landroidx/compose/ui/focus/r;

.field private final r:Landroidx/compose/foundation/FocusableInteractionNode;

.field private final s:Landroidx/compose/foundation/FocusablePinnableContainerNode;

.field private final t:Landroidx/compose/foundation/s;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lp/i;)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/node/i;-><init>()V

    new-instance v0, Landroidx/compose/foundation/FocusableInteractionNode;

    invoke-direct {v0, p1}, Landroidx/compose/foundation/FocusableInteractionNode;-><init>(Lp/i;)V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->D1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/FocusableInteractionNode;

    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->r:Landroidx/compose/foundation/FocusableInteractionNode;

    new-instance p1, Landroidx/compose/foundation/FocusablePinnableContainerNode;

    invoke-direct {p1}, Landroidx/compose/foundation/FocusablePinnableContainerNode;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/i;->D1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/FocusablePinnableContainerNode;

    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->s:Landroidx/compose/foundation/FocusablePinnableContainerNode;

    new-instance p1, Landroidx/compose/foundation/s;

    invoke-direct {p1}, Landroidx/compose/foundation/s;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/i;->D1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    move-result-object p1

    check-cast p1, Landroidx/compose/foundation/s;

    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->t:Landroidx/compose/foundation/s;

    invoke-static {}, Landroidx/compose/ui/focus/t;->a()Landroidx/compose/ui/focus/s;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/i;->D1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    return-void
.end method


# virtual methods
.method public final J1(Lp/i;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->r:Landroidx/compose/foundation/FocusableInteractionNode;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/FocusableInteractionNode;->G1(Lp/i;)V

    return-void
.end method

.method public synthetic O()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/h1;->a(Landroidx/compose/ui/node/i1;)Z

    move-result v0

    return v0
.end method

.method public R0(Landroidx/compose/ui/semantics/n;)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->q:Landroidx/compose/ui/focus/r;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/focus/r;->isFocused()Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {p1, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->w(Landroidx/compose/ui/semantics/n;Z)V

    new-instance v0, Landroidx/compose/foundation/FocusableNode$applySemantics$1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/FocusableNode$applySemantics$1;-><init>(Landroidx/compose/foundation/FocusableNode;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v2, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/n;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public S0(Landroidx/compose/ui/focus/r;)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->q:Landroidx/compose/ui/focus/r;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Landroidx/compose/ui/focus/r;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v1

    new-instance v4, Landroidx/compose/foundation/FocusableNode$onFocusEvent$1;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v2}, Landroidx/compose/foundation/FocusableNode$onFocusEvent$1;-><init>(Landroidx/compose/foundation/FocusableNode;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->r:Landroidx/compose/foundation/FocusableInteractionNode;

    invoke-virtual {v1, v0}, Landroidx/compose/foundation/FocusableInteractionNode;->F1(Z)V

    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->t:Landroidx/compose/foundation/s;

    invoke-virtual {v1, v0}, Landroidx/compose/foundation/s;->F1(Z)V

    iget-object v1, p0, Landroidx/compose/foundation/FocusableNode;->s:Landroidx/compose/foundation/FocusablePinnableContainerNode;

    invoke-virtual {v1, v0}, Landroidx/compose/foundation/FocusablePinnableContainerNode;->E1(Z)V

    iput-object p1, p0, Landroidx/compose/foundation/FocusableNode;->q:Landroidx/compose/ui/focus/r;

    :cond_2
    return-void
.end method

.method public synthetic W0()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/h1;->b(Landroidx/compose/ui/node/i1;)Z

    move-result v0

    return v0
.end method

.method public i1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/FocusableNode;->p:Z

    return v0
.end method

.method public v(Landroidx/compose/ui/layout/l;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/FocusableNode;->t:Landroidx/compose/foundation/s;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/s;->v(Landroidx/compose/ui/layout/l;)V

    return-void
.end method
