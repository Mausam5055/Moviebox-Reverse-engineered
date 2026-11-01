.class public abstract Landroidx/compose/foundation/AbstractClickableNode;
.super Landroidx/compose/ui/node/i;

# interfaces
.implements Landroidx/compose/ui/node/e1;
.implements Ld0/e;
.implements Landroidx/compose/ui/focus/c;
.implements Landroidx/compose/ui/node/i1;
.implements Landroidx/compose/ui/node/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/AbstractClickableNode$a;
    }
.end annotation


# static fields
.field public static final H:Landroidx/compose/foundation/AbstractClickableNode$a;

.field public static final I:I


# instance fields
.field private A:Lp/k$b;

.field private B:Lp/d;

.field private final C:Ljava/util/Map;

.field private D:J

.field private E:Lp/i;

.field private F:Z

.field private final G:Ljava/lang/Object;

.field private p:Lp/i;

.field private q:Landroidx/compose/foundation/b0;

.field private r:Ljava/lang/String;

.field private s:Landroidx/compose/ui/semantics/f;

.field private t:Z

.field private u:Lkotlin/jvm/functions/Function0;

.field private final v:Z

.field private final w:Landroidx/compose/foundation/q;

.field private final x:Landroidx/compose/foundation/FocusableNode;

.field private y:Landroidx/compose/ui/input/pointer/n0;

.field private z:Landroidx/compose/ui/node/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/AbstractClickableNode$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/AbstractClickableNode$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/foundation/AbstractClickableNode;->H:Landroidx/compose/foundation/AbstractClickableNode$a;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/AbstractClickableNode;->I:I

    return-void
.end method

.method private constructor <init>(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/i;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    iput-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->q:Landroidx/compose/foundation/b0;

    iput-object p4, p0, Landroidx/compose/foundation/AbstractClickableNode;->r:Ljava/lang/String;

    iput-object p5, p0, Landroidx/compose/foundation/AbstractClickableNode;->s:Landroidx/compose/ui/semantics/f;

    iput-boolean p3, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    iput-object p6, p0, Landroidx/compose/foundation/AbstractClickableNode;->u:Lkotlin/jvm/functions/Function0;

    new-instance p1, Landroidx/compose/foundation/q;

    invoke-direct {p1}, Landroidx/compose/foundation/q;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Landroidx/compose/foundation/q;

    new-instance p1, Landroidx/compose/foundation/FocusableNode;

    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    invoke-direct {p1, p2}, Landroidx/compose/foundation/FocusableNode;-><init>(Lp/i;)V

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Landroidx/compose/foundation/FocusableNode;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->C:Ljava/util/Map;

    sget-object p1, Ly/g;->b:Ly/g$a;

    invoke-virtual {p1}, Ly/g$a;->c()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->D:J

    iget-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Lp/i;

    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->a2()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->F:Z

    sget-object p1, Landroidx/compose/foundation/AbstractClickableNode;->H:Landroidx/compose/foundation/AbstractClickableNode$a;

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->G:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/AbstractClickableNode;-><init>(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic J1(Landroidx/compose/foundation/AbstractClickableNode;)Z
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->R1()Z

    move-result p0

    return p0
.end method

.method public static final synthetic K1(Landroidx/compose/foundation/AbstractClickableNode;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->T1()V

    return-void
.end method

.method public static final synthetic L1(Landroidx/compose/foundation/AbstractClickableNode;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->U1()V

    return-void
.end method

.method public static final synthetic M1(Landroidx/compose/foundation/AbstractClickableNode;)Lp/i;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    return-object p0
.end method

.method public static final synthetic N1(Landroidx/compose/foundation/AbstractClickableNode;)Lp/k$b;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/AbstractClickableNode;->A:Lp/k$b;

    return-object p0
.end method

.method public static final synthetic O1(Landroidx/compose/foundation/AbstractClickableNode;Lp/k$b;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->A:Lp/k$b;

    return-void
.end method

.method private final R1()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/foundation/ClickableKt;->e(Landroidx/compose/ui/node/m1;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroidx/compose/foundation/f;->c(Landroidx/compose/ui/node/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final T1()V
    .locals 8

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->B:Lp/d;

    if-nez v0, :cond_1

    new-instance v0, Lp/d;

    invoke-direct {v0}, Lp/d;-><init>()V

    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Landroidx/compose/foundation/AbstractClickableNode$emitHoverEnter$1$1;

    const/4 v3, 0x0

    invoke-direct {v5, v1, v0, v3}, Landroidx/compose/foundation/AbstractClickableNode$emitHoverEnter$1$1;-><init>(Lp/i;Lp/d;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->B:Lp/d;

    :cond_1
    return-void
.end method

.method private final U1()V
    .locals 9

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->B:Lp/d;

    if-eqz v0, :cond_1

    new-instance v1, Lp/e;

    invoke-direct {v1, v0}, Lp/e;-><init>(Lp/d;)V

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v3

    new-instance v6, Landroidx/compose/foundation/AbstractClickableNode$emitHoverExit$1$1$1;

    invoke-direct {v6, v0, v1, v2}, Landroidx/compose/foundation/AbstractClickableNode$emitHoverExit$1$1$1;-><init>(Lp/i;Lp/e;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    iput-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->B:Lp/d;

    :cond_1
    return-void
.end method

.method private final Y1()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/ui/node/f;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->q:Landroidx/compose/foundation/b0;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    if-nez v1, :cond_1

    invoke-static {}, Lp/h;->a()Lp/i;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Landroidx/compose/foundation/FocusableNode;

    iget-object v2, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    invoke-virtual {v1, v2}, Landroidx/compose/foundation/FocusableNode;->J1(Lp/i;)V

    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroidx/compose/foundation/b0;->b(Lp/g;)Landroidx/compose/ui/node/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->D1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/ui/node/f;

    :cond_2
    return-void
.end method

.method private final a2()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Lp/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->q:Landroidx/compose/foundation/b0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public D()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->G:Ljava/lang/Object;

    return-object v0
.end method

.method public final M(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 10

    invoke-static {p3, p4}, Lo0/u;->b(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/p;->h(J)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1}, Lo0/p;->i(J)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v2, v0}, Ly/h;->a(FF)J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->D:J

    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->Y1()V

    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/o;->e()I

    move-result v0

    sget-object v2, Landroidx/compose/ui/input/pointer/q;->a:Landroidx/compose/ui/input/pointer/q$a;

    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/q$a;->a()I

    move-result v3

    invoke-static {v0, v3}, Landroidx/compose/ui/input/pointer/q;->i(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v4

    new-instance v7, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$1;

    invoke-direct {v7, p0, v1}, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/q$a;->b()I

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/input/pointer/q;->i(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v2

    new-instance v5, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$2;

    invoke-direct {v5, p0, v1}, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$2;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->y:Landroidx/compose/ui/input/pointer/n0;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/AbstractClickableNode$onPointerEvent$3;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Landroidx/compose/ui/input/pointer/l0;->a(Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/input/pointer/n0;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->D1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/pointer/n0;

    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->y:Landroidx/compose/ui/input/pointer/n0;

    :cond_2
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->y:Landroidx/compose/ui/input/pointer/n0;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p2, p3, p4}, Landroidx/compose/ui/node/e1;->M(Landroidx/compose/ui/input/pointer/o;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    :cond_3
    return-void
.end method

.method public synthetic O()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/h1;->a(Landroidx/compose/ui/node/i1;)Z

    move-result v0

    return v0
.end method

.method public synthetic P0()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/d1;->d(Landroidx/compose/ui/node/e1;)Z

    move-result v0

    return v0
.end method

.method public P1(Landroidx/compose/ui/semantics/n;)V
    .locals 0

    return-void
.end method

.method public abstract Q1(Landroidx/compose/ui/input/pointer/e0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public synthetic R()Z
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/d1;->a(Landroidx/compose/ui/node/e1;)Z

    move-result v0

    return v0
.end method

.method public final R0(Landroidx/compose/ui/semantics/n;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->s:Landroidx/compose/ui/semantics/f;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/semantics/f;->n()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->B(Landroidx/compose/ui/semantics/n;I)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->r:Ljava/lang/String;

    new-instance v1, Landroidx/compose/foundation/AbstractClickableNode$applySemantics$1;

    invoke-direct {v1, p0}, Landroidx/compose/foundation/AbstractClickableNode$applySemantics$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;)V

    invoke-static {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->l(Landroidx/compose/ui/semantics/n;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Landroidx/compose/foundation/FocusableNode;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/FocusableNode;->R0(Landroidx/compose/ui/semantics/n;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->f(Landroidx/compose/ui/semantics/n;)V

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/AbstractClickableNode;->P1(Landroidx/compose/ui/semantics/n;)V

    return-void
.end method

.method public final S0(Landroidx/compose/ui/focus/r;)V
    .locals 1

    invoke-interface {p1}, Landroidx/compose/ui/focus/r;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->Y1()V

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Landroidx/compose/foundation/FocusableNode;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/FocusableNode;->S0(Landroidx/compose/ui/focus/r;)V

    :cond_1
    return-void
.end method

.method protected final S1()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->A:Lp/k$b;

    if-eqz v1, :cond_0

    new-instance v2, Lp/k$a;

    invoke-direct {v2, v1}, Lp/k$a;-><init>(Lp/k$b;)V

    invoke-interface {v0, v2}, Lp/i;->a(Lp/f;)Z

    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->B:Lp/d;

    if-eqz v1, :cond_1

    new-instance v2, Lp/e;

    invoke-direct {v2, v1}, Lp/e;-><init>(Lp/d;)V

    invoke-interface {v0, v2}, Lp/i;->a(Lp/f;)Z

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->C:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp/k$b;

    new-instance v3, Lp/k$a;

    invoke-direct {v3, v2}, Lp/k$a;-><init>(Lp/k$b;)V

    invoke-interface {v0, v3}, Lp/i;->a(Lp/f;)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->A:Lp/k$b;

    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->B:Lp/d;

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->C:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public synthetic T0()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/d1;->c(Landroidx/compose/ui/node/e1;)V

    return-void
.end method

.method protected final V1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    return v0
.end method

.method public final W0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final W1()Lkotlin/jvm/functions/Function0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->u:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method protected final X1(Landroidx/compose/foundation/gestures/i;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    iget-object v4, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    if-eqz v4, :cond_0

    new-instance v7, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Landroidx/compose/foundation/AbstractClickableNode$handlePressInteraction$2$1;-><init>(Landroidx/compose/foundation/gestures/i;JLp/i;Landroidx/compose/foundation/AbstractClickableNode;Lkotlin/coroutines/Continuation;)V

    invoke-static {v7, p4}, Lkotlinx/coroutines/o0;->e(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method protected final Z1()Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->y:Landroidx/compose/ui/input/pointer/n0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/input/pointer/n0;->j0()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected final b2(Lp/i;Landroidx/compose/foundation/b0;ZLjava/lang/String;Landroidx/compose/ui/semantics/f;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Lp/i;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->S1()V

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Lp/i;

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->q:Landroidx/compose/foundation/b0;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->q:Landroidx/compose/foundation/b0;

    move p1, v1

    :cond_1
    iget-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    if-eq p2, p3, :cond_3

    if-eqz p3, :cond_2

    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Landroidx/compose/foundation/q;

    invoke-virtual {p0, p2}, Landroidx/compose/ui/node/i;->D1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Landroidx/compose/foundation/FocusableNode;

    invoke-virtual {p0, p2}, Landroidx/compose/ui/node/i;->D1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Landroidx/compose/foundation/q;

    invoke-virtual {p0, p2}, Landroidx/compose/ui/node/i;->G1(Landroidx/compose/ui/node/f;)V

    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Landroidx/compose/foundation/FocusableNode;

    invoke-virtual {p0, p2}, Landroidx/compose/ui/node/i;->G1(Landroidx/compose/ui/node/f;)V

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->S1()V

    :goto_1
    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    iput-boolean p3, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    :cond_3
    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->r:Ljava/lang/String;

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iput-object p4, p0, Landroidx/compose/foundation/AbstractClickableNode;->r:Ljava/lang/String;

    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    :cond_4
    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->s:Landroidx/compose/ui/semantics/f;

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iput-object p5, p0, Landroidx/compose/foundation/AbstractClickableNode;->s:Landroidx/compose/ui/semantics/f;

    invoke-static {p0}, Landroidx/compose/ui/node/j1;->b(Landroidx/compose/ui/node/i1;)V

    :cond_5
    iput-object p6, p0, Landroidx/compose/foundation/AbstractClickableNode;->u:Lkotlin/jvm/functions/Function0;

    iget-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->F:Z

    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->a2()Z

    move-result p3

    if-eq p2, p3, :cond_6

    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->a2()Z

    move-result p2

    iput-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->F:Z

    if-nez p2, :cond_6

    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/ui/node/f;

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    move v1, p1

    :goto_2
    if-eqz v1, :cond_9

    iget-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/ui/node/f;

    if-nez p1, :cond_7

    iget-boolean p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->F:Z

    if-nez p2, :cond_9

    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/i;->G1(Landroidx/compose/ui/node/f;)V

    :cond_8
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/ui/node/f;

    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->Y1()V

    :cond_9
    iget-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Landroidx/compose/foundation/FocusableNode;

    iget-object p2, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    invoke-virtual {p1, p2}, Landroidx/compose/foundation/FocusableNode;->J1(Lp/i;)V

    return-void
.end method

.method public final i1()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->v:Z

    return v0
.end method

.method public final l0(Landroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final n1()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->F:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->Y1()V

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->w:Landroidx/compose/foundation/q;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->D1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->x:Landroidx/compose/foundation/FocusableNode;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->D1(Landroidx/compose/ui/node/f;)Landroidx/compose/ui/node/f;

    :cond_1
    return-void
.end method

.method public final o1()V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/AbstractClickableNode;->S1()V

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->E:Lp/i;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/ui/node/f;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/i;->G1(Landroidx/compose/ui/node/f;)V

    :cond_1
    iput-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->z:Landroidx/compose/ui/node/f;

    return-void
.end method

.method public final s0(Landroid/view/KeyEvent;)Z
    .locals 10

    invoke-direct {p0}, Landroidx/compose/foundation/AbstractClickableNode;->Y1()V

    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroidx/compose/foundation/f;->f(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->C:Ljava/util/Map;

    invoke-static {p1}, Ld0/d;->a(Landroid/view/KeyEvent;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ld0/a;->m(J)Ld0/a;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lp/k$b;

    iget-wide v4, p0, Landroidx/compose/foundation/AbstractClickableNode;->D:J

    invoke-direct {v0, v4, v5, v3}, Lp/k$b;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->C:Ljava/util/Map;

    invoke-static {p1}, Ld0/d;->a(Landroid/view/KeyEvent;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ld0/a;->m(J)Ld0/a;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v4

    new-instance v7, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$1;

    invoke-direct {v7, p0, v0, v3}, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lp/k$b;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_0
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->t:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroidx/compose/foundation/f;->b(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->C:Ljava/util/Map;

    invoke-static {p1}, Ld0/d;->a(Landroid/view/KeyEvent;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ld0/a;->m(J)Ld0/a;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lp/k$b;

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/f$c;->d1()Lkotlinx/coroutines/n0;

    move-result-object v4

    new-instance v7, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$2$1;

    invoke-direct {v7, p0, p1, v3}, Landroidx/compose/foundation/AbstractClickableNode$onKeyEvent$2$1;-><init>(Landroidx/compose/foundation/AbstractClickableNode;Lp/k$b;Lkotlin/coroutines/Continuation;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    :cond_2
    iget-object p1, p0, Landroidx/compose/foundation/AbstractClickableNode;->u:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method public final t0()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->p:Lp/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/compose/foundation/AbstractClickableNode;->B:Lp/d;

    if-eqz v1, :cond_0

    new-instance v2, Lp/e;

    invoke-direct {v2, v1}, Lp/e;-><init>(Lp/d;)V

    invoke-interface {v0, v2}, Lp/i;->a(Lp/f;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->B:Lp/d;

    iget-object v0, p0, Landroidx/compose/foundation/AbstractClickableNode;->y:Landroidx/compose/ui/input/pointer/n0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/node/e1;->t0()V

    :cond_1
    return-void
.end method

.method public synthetic z0()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/d1;->b(Landroidx/compose/ui/node/e1;)V

    return-void
.end method
