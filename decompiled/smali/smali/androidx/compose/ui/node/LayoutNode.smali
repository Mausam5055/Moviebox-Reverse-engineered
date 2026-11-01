.class public final Landroidx/compose/ui/node/LayoutNode;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/h;
.implements Landroidx/compose/ui/layout/h0;
.implements Landroidx/compose/ui/node/z0;
.implements Landroidx/compose/ui/layout/n;
.implements Landroidx/compose/ui/node/ComposeUiNode;
.implements Landroidx/compose/ui/node/y0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/LayoutNode$c;,
        Landroidx/compose/ui/node/LayoutNode$LayoutState;,
        Landroidx/compose/ui/node/LayoutNode$d;,
        Landroidx/compose/ui/node/LayoutNode$UsageByParent;,
        Landroidx/compose/ui/node/LayoutNode$e;
    }
.end annotation


# static fields
.field public static final K:Landroidx/compose/ui/node/LayoutNode$c;

.field public static final L:I

.field private static final M:Landroidx/compose/ui/node/LayoutNode$d;

.field private static final N:Lkotlin/jvm/functions/Function0;

.field private static final O:Landroidx/compose/ui/platform/o2;

.field private static final P:Ljava/util/Comparator;


# instance fields
.field private final A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

.field private B:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

.field private C:Landroidx/compose/ui/node/NodeCoordinator;

.field private D:Z

.field private E:Landroidx/compose/ui/f;

.field private F:Landroidx/compose/ui/f;

.field private G:Lkotlin/jvm/functions/Function1;

.field private H:Lkotlin/jvm/functions/Function1;

.field private I:Z

.field private J:Z

.field private final a:Z

.field private b:I

.field private c:I

.field private d:Z

.field private e:Landroidx/compose/ui/node/LayoutNode;

.field private f:I

.field private final g:Landroidx/compose/ui/node/n0;

.field private h:Landroidx/compose/runtime/collection/b;

.field private i:Z

.field private j:Landroidx/compose/ui/node/LayoutNode;

.field private k:Landroidx/compose/ui/node/y0;

.field private l:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

.field private m:I

.field private n:Z

.field private o:Landroidx/compose/ui/semantics/i;

.field private final p:Landroidx/compose/runtime/collection/b;

.field private q:Z

.field private r:Landroidx/compose/ui/layout/t;

.field private s:Lo0/e;

.field private t:Landroidx/compose/ui/unit/LayoutDirection;

.field private u:Landroidx/compose/ui/platform/o2;

.field private v:Landroidx/compose/runtime/s;

.field private w:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

.field private x:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

.field private y:Z

.field private final z:Landroidx/compose/ui/node/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/LayoutNode$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/LayoutNode$c;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->K:Landroidx/compose/ui/node/LayoutNode$c;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/node/LayoutNode;->L:I

    new-instance v0, Landroidx/compose/ui/node/LayoutNode$b;

    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNode$b;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->M:Landroidx/compose/ui/node/LayoutNode$d;

    sget-object v0, Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;->INSTANCE:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->N:Lkotlin/jvm/functions/Function0;

    new-instance v0, Landroidx/compose/ui/node/LayoutNode$a;

    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNode$a;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/platform/o2;

    new-instance v0, Landroidx/compose/ui/node/b0;

    invoke-direct {v0}, Landroidx/compose/ui/node/b0;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/LayoutNode;->P:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroidx/compose/ui/node/LayoutNode;-><init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->a:Z

    iput p2, p0, Landroidx/compose/ui/node/LayoutNode;->b:I

    new-instance p1, Landroidx/compose/ui/node/n0;

    new-instance p2, Landroidx/compose/runtime/collection/b;

    const/16 v0, 0x10

    new-array v1, v0, [Landroidx/compose/ui/node/LayoutNode;

    const/4 v2, 0x0

    invoke-direct {p2, v1, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    new-instance v1, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;

    invoke-direct {v1, p0}, Landroidx/compose/ui/node/LayoutNode$_foldedChildren$1;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    invoke-direct {p1, p2, v1}, Landroidx/compose/ui/node/n0;-><init>(Landroidx/compose/runtime/collection/b;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->g:Landroidx/compose/ui/node/n0;

    new-instance p1, Landroidx/compose/runtime/collection/b;

    new-array p2, v0, [Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p1, p2, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->p:Landroidx/compose/runtime/collection/b;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->q:Z

    sget-object p2, Landroidx/compose/ui/node/LayoutNode;->M:Landroidx/compose/ui/node/LayoutNode$d;

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->r:Landroidx/compose/ui/layout/t;

    invoke-static {}, Landroidx/compose/ui/node/f0;->a()Lo0/e;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->s:Lo0/e;

    sget-object p2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->t:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object p2, Landroidx/compose/ui/node/LayoutNode;->O:Landroidx/compose/ui/platform/o2;

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->u:Landroidx/compose/ui/platform/o2;

    sget-object p2, Landroidx/compose/runtime/s;->Y0:Landroidx/compose/runtime/s$a;

    invoke-virtual {p2}, Landroidx/compose/runtime/s$a;->a()Landroidx/compose/runtime/s;

    move-result-object p2

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->v:Landroidx/compose/runtime/s;

    sget-object p2, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->x:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    new-instance p2, Landroidx/compose/ui/node/q0;

    invoke-direct {p2, p0}, Landroidx/compose/ui/node/q0;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    new-instance p2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-direct {p2, p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;-><init>(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object p2, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->D:Z

    sget-object p1, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->E:Landroidx/compose/ui/f;

    return-void
.end method

.method public synthetic constructor <init>(ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-static {}, Landroidx/compose/ui/semantics/k;->a()I

    move-result p2

    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNode;-><init>(ZI)V

    return-void
.end method

.method private final C0()V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->f:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->i:Z

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->j:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_1

    invoke-direct {v0}, Landroidx/compose/ui/node/LayoutNode;->C0()V

    :cond_1
    return-void
.end method

.method public static synthetic J0(Landroidx/compose/ui/node/LayoutNode;Lo0/b;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->z()Lo0/b;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->I0(Lo0/b;)Z

    move-result p0

    return p0
.end method

.method private final N()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->D:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->f0()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->a2()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->C:Landroidx/compose/ui/node/NodeCoordinator;

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->T1()Landroidx/compose/ui/node/w0;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_1

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->C:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->a2()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->C:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->T1()Landroidx/compose/ui/node/w0;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "layer was not set"

    invoke-static {v0}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_5
    :goto_3
    return-object v0
.end method

.method private final Q0(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 4

    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->s()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->s()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->W(I)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->w()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->j:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->f0()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/NodeCoordinator;->E2(Landroidx/compose/ui/node/NodeCoordinator;)V

    iget-boolean v1, p1, Landroidx/compose/ui/node/LayoutNode;->a:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/compose/ui/node/LayoutNode;->f:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/ui/node/LayoutNode;->f:I

    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->g:Landroidx/compose/ui/node/n0;

    invoke-virtual {p1}, Landroidx/compose/ui/node/n0;->f()Landroidx/compose/runtime/collection/b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x0

    :cond_2
    aget-object v3, p1, v2

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->f0()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/compose/ui/node/NodeCoordinator;->E2(Landroidx/compose/ui/node/NodeCoordinator;)V

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_2

    :cond_3
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->C0()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->S0()V

    return-void
.end method

.method private final R0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->y0()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->w0()V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->x0()V

    return-void
.end method

.method private final U0()V
    .locals 6

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->i:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->i:Z

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->h:Landroidx/compose/runtime/collection/b;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/compose/runtime/collection/b;

    const/16 v2, 0x10

    new-array v2, v2, [Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {v1, v2, v0}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->h:Landroidx/compose/runtime/collection/b;

    :cond_0
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->h()V

    iget-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->g:Landroidx/compose/ui/node/n0;

    invoke-virtual {v2}, Landroidx/compose/ui/node/n0;->f()Landroidx/compose/runtime/collection/b;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v2

    :cond_1
    aget-object v4, v2, v0

    check-cast v4, Landroidx/compose/ui/node/LayoutNode;

    iget-boolean v5, v4, Landroidx/compose/ui/node/LayoutNode;->a:Z

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->p0()Landroidx/compose/runtime/collection/b;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v5

    invoke-virtual {v1, v5, v4}, Landroidx/compose/runtime/collection/b;->c(ILandroidx/compose/runtime/collection/b;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_1

    :cond_3
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->N()V

    :cond_4
    return-void
.end method

.method public static synthetic W0(Landroidx/compose/ui/node/LayoutNode;Lo0/b;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->y()Lo0/b;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->V0(Lo0/b;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b1(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->a1(Z)V

    return-void
.end method

.method public static synthetic d1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNode;->c1(ZZZ)V

    return-void
.end method

.method public static synthetic f1(Landroidx/compose/ui/node/LayoutNode;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->e1(Z)V

    return-void
.end method

.method public static synthetic h1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/LayoutNode;->g1(ZZZ)V

    return-void
.end method

.method public static synthetic j(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->k(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)I

    move-result p0

    return p0
.end method

.method private final j1()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    invoke-virtual {v0}, Landroidx/compose/ui/node/q0;->x()V

    return-void
.end method

.method private static final k(Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/node/LayoutNode;)I
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->n0()F

    move-result v0

    invoke-direct {p1}, Landroidx/compose/ui/node/LayoutNode;->n0()F

    move-result v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->i0()I

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->i0()I

    move-result p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->n0()F

    move-result p0

    invoke-direct {p1}, Landroidx/compose/ui/node/LayoutNode;->n0()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final synthetic l()Lkotlin/jvm/functions/Function0;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/LayoutNode;->N:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final synthetic m()Ljava/util/Comparator;
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/LayoutNode;->P:Ljava/util/Comparator;

    return-object v0
.end method

.method private final n0()F
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->e1()F

    move-result v0

    return v0
.end method

.method private final o1(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->e:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->e:Landroidx/compose/ui/node/LayoutNode;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->q()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->f0()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->K1()V

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->y0()V

    :cond_1
    return-void
.end method

.method public static final synthetic p(Landroidx/compose/ui/node/LayoutNode;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->n:Z

    return-void
.end method

.method private final q(Landroidx/compose/ui/f;)V
    .locals 1

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->E:Landroidx/compose/ui/f;

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/q0;->E(Landroidx/compose/ui/f;)V

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->c0()V

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->e:Landroidx/compose/ui/node/LayoutNode;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    const/16 v0, 0x200

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/q0;->q(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p0}, Landroidx/compose/ui/node/LayoutNode;->o1(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_0
    return-void
.end method

.method public static synthetic r0(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/q;ZZILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    const/4 p5, 0x1

    :cond_1
    move v5, p5

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/node/LayoutNode;->q0(JLandroidx/compose/ui/node/q;ZZ)V

    return-void
.end method

.method private final t()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->x:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->p0()Landroidx/compose/runtime/collection/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    aget-object v3, v0, v2

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    iget-object v4, v3, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v5, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->InLayoutBlock:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v4, v5, :cond_1

    invoke-direct {v3}, Landroidx/compose/ui/node/LayoutNode;->t()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_0

    :cond_2
    return-void
.end method

.method public static synthetic t0(Landroidx/compose/ui/node/LayoutNode;JLandroidx/compose/ui/node/q;ZZILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x1

    if-eqz p7, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/ui/node/LayoutNode;->s0(JLandroidx/compose/ui/node/q;ZZ)V

    return-void
.end method

.method private final u(I)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "|-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->p0()Landroidx/compose/runtime/collection/b;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v2

    move v4, v1

    :cond_1
    aget-object v5, v2, v4

    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    add-int/lit8 v6, p1, 0x1

    invoke-direct {v5, v6}, Landroidx/compose/ui/node/LayoutNode;->u(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v3, :cond_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method static synthetic v(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->u(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final v0()V
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    const/16 v1, 0x400

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v2

    const/16 v3, 0x800

    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v4

    or-int/2addr v2, v4

    const/16 v4, 0x1000

    invoke-static {v4}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v5

    or-int/2addr v2, v5

    invoke-virtual {v0, v2}, Landroidx/compose/ui/node/q0;->p(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    invoke-virtual {v0}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v5

    and-int/2addr v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_1

    :cond_0
    move v2, v5

    :goto_1
    invoke-static {v3}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v7

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_1

    move v7, v6

    goto :goto_2

    :cond_1
    move v7, v5

    :goto_2
    or-int/2addr v2, v7

    invoke-static {v4}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v7

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_2

    move v5, v6

    :cond_2
    or-int/2addr v2, v5

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroidx/compose/ui/node/t0;->a(Landroidx/compose/ui/f$c;)V

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->F:Landroidx/compose/ui/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final A0()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->M()V

    return-void
.end method

.method public final B()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->y:Z

    return v0
.end method

.method public final B0()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->o:Landroidx/compose/ui/semantics/i;

    invoke-static {p0}, Landroidx/compose/ui/node/f0;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->onSemanticsChange()V

    return-void
.end method

.method public final C()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->U()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->S0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final D()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->Z0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public D0()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final E()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->p0()Landroidx/compose/runtime/collection/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public E0()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->J:Z

    return v0
.end method

.method public final F()Landroidx/compose/ui/semantics/i;
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    const/16 v1, 0x8

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/node/q0;->q(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->o:Landroidx/compose/ui/semantics/i;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Landroidx/compose/ui/semantics/i;

    invoke-direct {v1}, Landroidx/compose/ui/semantics/i;-><init>()V

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p0}, Landroidx/compose/ui/node/f0;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/y0;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v1

    new-instance v2, Landroidx/compose/ui/node/LayoutNode$collapsedSemantics$1;

    invoke-direct {v2, p0, v0}, Landroidx/compose/ui/node/LayoutNode$collapsedSemantics$1;-><init>(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, p0, v2}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->j(Landroidx/compose/ui/node/LayoutNode;Lkotlin/jvm/functions/Function0;)V

    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/semantics/i;

    iput-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->o:Landroidx/compose/ui/semantics/i;

    check-cast v0, Landroidx/compose/ui/semantics/i;

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->o:Landroidx/compose/ui/semantics/i;

    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final F0()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->h1()Z

    move-result v0

    return v0
.end method

.method public G()Landroidx/compose/runtime/s;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->v:Landroidx/compose/runtime/s;

    return-object v0
.end method

.method public final G0()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->U()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->n()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public H()Lo0/e;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->s:Lo0/e;

    return-object v0
.end method

.method public final H0()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->d:Z

    return v0
.end method

.method public final I()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->m:I

    return v0
.end method

.method public final I0(Lo0/b;)Z
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->e:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->U()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lo0/b;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->k1(J)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final J()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->g:Landroidx/compose/ui/node/n0;

    invoke-virtual {v0}, Landroidx/compose/ui/node/n0;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final K()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->S1()J

    move-result-wide v0

    invoke-static {v0, v1}, Lo0/b;->j(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Lo0/b;->i(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final K0()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->t()V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->U()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->l1()V

    return-void
.end method

.method public L()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->x()I

    move-result v0

    return v0
.end method

.method public final L0()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->O()V

    return-void
.end method

.method public final M()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    invoke-virtual {v0}, Landroidx/compose/ui/node/q0;->l()Landroidx/compose/ui/node/s;

    move-result-object v0

    return-object v0
.end method

.method public final M0()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->P()V

    return-void
.end method

.method public final N0()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->Q()V

    return-void
.end method

.method public final O()Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    return-object v0
.end method

.method public final O0()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->R()V

    return-void
.end method

.method public final P()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    return-object v0
.end method

.method public final P0(III)V
    .locals 4

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    if-le p1, p2, :cond_1

    add-int v1, p1, v0

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    if-le p1, p2, :cond_2

    add-int v2, p2, v0

    goto :goto_2

    :cond_2
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x2

    :goto_2
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->g:Landroidx/compose/ui/node/n0;

    invoke-virtual {v3, v1}, Landroidx/compose/ui/node/n0;->g(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->g:Landroidx/compose/ui/node/n0;

    invoke-virtual {v3, v2, v1}, Landroidx/compose/ui/node/n0;->a(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->S0()V

    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->C0()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->y0()V

    return-void
.end method

.method public final Q()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->A()Z

    move-result v0

    return v0
.end method

.method public final R()Landroidx/compose/ui/node/LayoutNode$LayoutState;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->B()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v0

    return-object v0
.end method

.method public final S()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->F()Z

    move-result v0

    return v0
.end method

.method public final S0()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->S0()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->q:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final T()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->G()Z

    move-result v0

    return v0
.end method

.method public final T0(II)V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->t()V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->d1()Landroidx/compose/ui/layout/g0$a;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-static {p0}, Landroidx/compose/ui/node/f0;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getPlacementScope()Landroidx/compose/ui/layout/g0$a;

    move-result-object v0

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/g0$a;->l(Landroidx/compose/ui/layout/g0$a;Landroidx/compose/ui/layout/g0;IIFILjava/lang/Object;)V

    return-void
.end method

.method public final U()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->H()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object v0

    return-object v0
.end method

.method public final V()Landroidx/compose/ui/node/LayoutNode;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->e:Landroidx/compose/ui/node/LayoutNode;

    return-object v0
.end method

.method public final V0(Lo0/b;)Z
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->s()V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {p1}, Lo0/b;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->r1(J)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final W()Landroidx/compose/ui/node/d0;
    .locals 1

    invoke-static {p0}, Landroidx/compose/ui/node/f0;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/node/y0;->getSharedDrawScope()Landroidx/compose/ui/node/d0;

    move-result-object v0

    return-object v0
.end method

.method public final X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->I()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v0

    return-object v0
.end method

.method public final X0()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->g:Landroidx/compose/ui/node/n0;

    invoke-virtual {v0}, Landroidx/compose/ui/node/n0;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-ge v1, v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->g:Landroidx/compose/ui/node/n0;

    invoke-virtual {v1, v0}, Landroidx/compose/ui/node/n0;->d(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->Q0(Landroidx/compose/ui/node/LayoutNode;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->g:Landroidx/compose/ui/node/n0;

    invoke-virtual {v0}, Landroidx/compose/ui/node/n0;->c()V

    return-void
.end method

.method public final Y()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->J()Z

    move-result v0

    return v0
.end method

.method public final Y0(II)V
    .locals 3

    const/4 v0, 0x1

    if-ltz p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "count ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") must be greater than 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_1
    add-int/2addr p2, p1

    sub-int/2addr p2, v0

    if-gt p1, p2, :cond_2

    :goto_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->g:Landroidx/compose/ui/node/n0;

    invoke-virtual {v0, p2}, Landroidx/compose/ui/node/n0;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p0, v0}, Landroidx/compose/ui/node/LayoutNode;->Q0(Landroidx/compose/ui/node/LayoutNode;)V

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->g:Landroidx/compose/ui/node/n0;

    invoke-virtual {v0, p2}, Landroidx/compose/ui/node/n0;->g(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/node/LayoutNode;

    if-eq p2, p1, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public Z()Landroidx/compose/ui/layout/t;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->r:Landroidx/compose/ui/layout/t;

    return-object v0
.end method

.method public final Z0()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->t()V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->s1()V

    return-void
.end method

.method public a(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->t:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq v0, p1, :cond_8

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->t:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->R0()V

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    const/4 v0, 0x4

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-static {p1}, Landroidx/compose/ui/node/q0;->c(Landroidx/compose/ui/node/q0;)I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_7

    instance-of v4, v2, Landroidx/compose/ui/node/n;

    if-eqz v4, :cond_0

    check-cast v2, Landroidx/compose/ui/node/n;

    instance-of v4, v2, Landroidx/compose/ui/draw/b;

    if-eqz v4, :cond_6

    check-cast v2, Landroidx/compose/ui/draw/b;

    invoke-interface {v2}, Landroidx/compose/ui/draw/b;->o0()V

    goto :goto_4

    :cond_0
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->f1()I

    move-result v4

    and-int/2addr v4, v0

    if-eqz v4, :cond_6

    instance-of v4, v2, Landroidx/compose/ui/node/i;

    if-eqz v4, :cond_6

    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/node/i;

    invoke-virtual {v4}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_2
    const/4 v7, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->f1()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_4

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_1

    move-object v2, v4

    goto :goto_3

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Landroidx/compose/runtime/collection/b;

    const/16 v7, 0x10

    new-array v7, v7, [Landroidx/compose/ui/f$c;

    invoke-direct {v3, v7, v5}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v2, v1

    :cond_3
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v4

    goto :goto_2

    :cond_5
    if-ne v6, v7, :cond_6

    goto :goto_1

    :cond_6
    :goto_4
    invoke-static {v3}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v2

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->a1()I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public final a0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->c1()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v0

    return-object v0
.end method

.method public final a1(Z)V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, p1}, Landroidx/compose/ui/node/y0;->onRequestRelayout(Landroidx/compose/ui/node/LayoutNode;ZZ)V

    :cond_0
    return-void
.end method

.method public b(Lo0/e;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->s:Lo0/e;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->s:Lo0/e;

    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->R0()V

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    invoke-virtual {p1}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    const/16 v0, 0x10

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/e1;

    invoke-interface {v0}, Landroidx/compose/ui/node/e1;->z0()V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/draw/b;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/draw/b;

    invoke-interface {v0}, Landroidx/compose/ui/draw/b;->o0()V

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->U()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->Z0()Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    :cond_1
    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->c:I

    return-void
.end method

.method public c0()Landroidx/compose/ui/f;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->E:Landroidx/compose/ui/f;

    return-object v0
.end method

.method public final c1(ZZZ)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->e:Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Lookahead measure cannot be requested on a node that is not a part of theLookaheadScope"

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-boolean v2, p0, Landroidx/compose/ui/node/LayoutNode;->n:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroidx/compose/ui/node/LayoutNode;->a:Z

    if-nez v2, :cond_3

    invoke-interface {v0, p0, v1, p1, p2}, Landroidx/compose/ui/node/y0;->onRequestMeasure(Landroidx/compose/ui/node/LayoutNode;ZZZ)V

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->U()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->b1(Z)V

    :cond_3
    return-void
.end method

.method public d()V
    .locals 13

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->e:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_0

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/node/LayoutNode;->d1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v11, 0x5

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Landroidx/compose/ui/node/LayoutNode;->h1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->y()Lo0/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lo0/b;->r()J

    move-result-wide v2

    invoke-interface {v1, p0, v2, v3}, Landroidx/compose/ui/node/y0;->measureAndLayout-0kLqBqw(Landroidx/compose/ui/node/LayoutNode;J)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroidx/compose/ui/node/x0;->c(Landroidx/compose/ui/node/y0;ZILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final d0()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->I:Z

    return v0
.end method

.method public e(Landroidx/compose/ui/platform/o2;)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->u:Landroidx/compose/ui/platform/o2;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->u:Landroidx/compose/ui/platform/o2;

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    const/16 v0, 0x10

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-static {p1}, Landroidx/compose/ui/node/q0;->c(Landroidx/compose/ui/node/q0;)I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    move-object v3, p1

    move-object v4, v2

    :goto_1
    if-eqz v3, :cond_7

    instance-of v5, v3, Landroidx/compose/ui/node/e1;

    if-eqz v5, :cond_0

    check-cast v3, Landroidx/compose/ui/node/e1;

    invoke-interface {v3}, Landroidx/compose/ui/node/e1;->T0()V

    goto :goto_4

    :cond_0
    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->f1()I

    move-result v5

    and-int/2addr v5, v1

    if-eqz v5, :cond_6

    instance-of v5, v3, Landroidx/compose/ui/node/i;

    if-eqz v5, :cond_6

    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/node/i;

    invoke-virtual {v5}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    const/4 v8, 0x1

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->f1()I

    move-result v9

    and-int/2addr v9, v1

    if-eqz v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v8, :cond_1

    move-object v3, v5

    goto :goto_3

    :cond_1
    if-nez v4, :cond_2

    new-instance v4, Landroidx/compose/runtime/collection/b;

    new-array v8, v0, [Landroidx/compose/ui/f$c;

    invoke-direct {v4, v8, v6}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v3, v2

    :cond_3
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    invoke-virtual {v5}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v5

    goto :goto_2

    :cond_5
    if-ne v7, v8, :cond_6

    goto :goto_1

    :cond_6
    :goto_4
    invoke-static {v4}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v3

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->a1()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public final e0()Landroidx/compose/ui/node/q0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    return-object v0
.end method

.method public final e1(Z)V
    .locals 7

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->a:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    if-eqz v1, :cond_0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move v4, p1

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/node/x0;->e(Landroidx/compose/ui/node/y0;Landroidx/compose/ui/node/LayoutNode;ZZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 11

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/node/t0;->i(I)Z

    move-result v2

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->Y1()Landroidx/compose/ui/f$c;

    move-result-object v3

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroidx/compose/ui/f$c;->h1()Landroidx/compose/ui/f$c;

    move-result-object v3

    if-nez v3, :cond_1

    goto/16 :goto_6

    :cond_1
    :goto_0
    invoke-static {v0, v2}, Landroidx/compose/ui/node/NodeCoordinator;->x1(Landroidx/compose/ui/node/NodeCoordinator;Z)Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->a1()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v2

    and-int/2addr v2, v1

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    move-object v4, v0

    move-object v5, v2

    :goto_2
    if-eqz v4, :cond_9

    instance-of v6, v4, Landroidx/compose/ui/node/w;

    if-eqz v6, :cond_2

    check-cast v4, Landroidx/compose/ui/node/w;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v6

    invoke-interface {v4, v6}, Landroidx/compose/ui/node/w;->I(Landroidx/compose/ui/layout/l;)V

    goto :goto_5

    :cond_2
    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->f1()I

    move-result v6

    and-int/2addr v6, v1

    if-eqz v6, :cond_8

    instance-of v6, v4, Landroidx/compose/ui/node/i;

    if-eqz v6, :cond_8

    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/node/i;

    invoke-virtual {v6}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_3
    const/4 v9, 0x1

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->f1()I

    move-result v10

    and-int/2addr v10, v1

    if-eqz v10, :cond_6

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v9, :cond_3

    move-object v4, v6

    goto :goto_4

    :cond_3
    if-nez v5, :cond_4

    new-instance v5, Landroidx/compose/runtime/collection/b;

    const/16 v9, 0x10

    new-array v9, v9, [Landroidx/compose/ui/f$c;

    invoke-direct {v5, v9, v7}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v4, v2

    :cond_5
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v6

    goto :goto_3

    :cond_7
    if-ne v8, v9, :cond_8

    goto :goto_2

    :cond_8
    :goto_5
    invoke-static {v5}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v4

    goto :goto_2

    :cond_9
    if-eq v0, v3, :cond_a

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_1

    :cond_a
    :goto_6
    return-void
.end method

.method public final f0()Landroidx/compose/ui/node/NodeCoordinator;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    invoke-virtual {v0}, Landroidx/compose/ui/node/q0;->n()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroidx/compose/ui/layout/t;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->r:Landroidx/compose/ui/layout/t;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->r:Landroidx/compose/ui/layout/t;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->y0()V

    :cond_0
    return-void
.end method

.method public final g0()Landroidx/compose/ui/node/y0;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    return-object v0
.end method

.method public final g1(ZZZ)V
    .locals 8

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->n:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->a:Z

    if-nez v0, :cond_1

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/node/x0;->d(Landroidx/compose/ui/node/y0;Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->f1(Z)V

    :cond_1
    return-void
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->t:Landroidx/compose/ui/unit/LayoutDirection;

    return-object v0
.end method

.method public h(Landroidx/compose/ui/f;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->a:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->c0()Landroidx/compose/ui/f;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    const-string v0, "Modifiers are not supported on virtual LayoutNodes"

    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->E0()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "modifier is updated when deactivated"

    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->q(Landroidx/compose/ui/f;)V

    goto :goto_2

    :cond_4
    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->F:Landroidx/compose/ui/f;

    :goto_2
    return-void
.end method

.method public final h0()Landroidx/compose/ui/node/LayoutNode;
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->j:Landroidx/compose/ui/node/LayoutNode;

    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroidx/compose/ui/node/LayoutNode;->a:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->j:Landroidx/compose/ui/node/LayoutNode;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public i(Landroidx/compose/runtime/s;)V
    .locals 9

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->v:Landroidx/compose/runtime/s;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->c()Landroidx/compose/runtime/s1;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/compose/runtime/s;->a(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo0/e;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/LayoutNode;->b(Lo0/e;)V

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->g()Landroidx/compose/runtime/s1;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/compose/runtime/s;->a(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/LayoutNode;->a(Landroidx/compose/ui/unit/LayoutDirection;)V

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->j()Landroidx/compose/runtime/s1;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/compose/runtime/s;->a(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/platform/o2;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LayoutNode;->e(Landroidx/compose/ui/platform/o2;)V

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    const v0, 0x8000

    invoke-static {v0}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v0

    invoke-static {p1}, Landroidx/compose/ui/node/q0;->c(Landroidx/compose/ui/node/q0;)I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->f1()I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, v1

    :goto_1
    if-eqz v2, :cond_8

    instance-of v4, v2, Landroidx/compose/ui/node/d;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    check-cast v2, Landroidx/compose/ui/node/d;

    invoke-interface {v2}, Landroidx/compose/ui/node/f;->getNode()Landroidx/compose/ui/f$c;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->k1()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2}, Landroidx/compose/ui/node/t0;->e(Landroidx/compose/ui/f$c;)V

    goto :goto_4

    :cond_0
    invoke-virtual {v2, v5}, Landroidx/compose/ui/f$c;->A1(Z)V

    goto :goto_4

    :cond_1
    invoke-virtual {v2}, Landroidx/compose/ui/f$c;->f1()I

    move-result v4

    and-int/2addr v4, v0

    if-eqz v4, :cond_7

    instance-of v4, v2, Landroidx/compose/ui/node/i;

    if-eqz v4, :cond_7

    move-object v4, v2

    check-cast v4, Landroidx/compose/ui/node/i;

    invoke-virtual {v4}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v4

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->f1()I

    move-result v8

    and-int/2addr v8, v0

    if-eqz v8, :cond_5

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v5, :cond_2

    move-object v2, v4

    goto :goto_3

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Landroidx/compose/runtime/collection/b;

    const/16 v8, 0x10

    new-array v8, v8, [Landroidx/compose/ui/f$c;

    invoke-direct {v3, v8, v6}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v2, v1

    :cond_4
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v4

    goto :goto_2

    :cond_6
    if-ne v7, v5, :cond_7

    goto :goto_1

    :cond_7
    :goto_4
    invoke-static {v3}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v2

    goto :goto_1

    :cond_8
    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->a1()I

    move-result v1

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object p1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public final i0()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->d1()I

    move-result v0

    return v0
.end method

.method public final i1(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 8

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->R()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$e;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->T()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/node/LayoutNode;->d1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->S()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroidx/compose/ui/node/LayoutNode;->a1(Z)V

    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/node/LayoutNode;->h1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->Q()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroidx/compose/ui/node/LayoutNode;->e1(Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->R()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValidOwnerScope()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    move-result v0

    return v0
.end method

.method public j0()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->b:I

    return v0
.end method

.method public final k0()Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->B:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    return-object v0
.end method

.method public final k1()V
    .locals 6

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->p0()Landroidx/compose/runtime/collection/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    aget-object v3, v0, v2

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    iget-object v4, v3, Landroidx/compose/ui/node/LayoutNode;->x:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v4, v3, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v5, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->k1()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_0

    :cond_2
    return-void
.end method

.method public l0()Landroidx/compose/ui/platform/o2;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->u:Landroidx/compose/ui/platform/o2;

    return-object v0
.end method

.method public final l1(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->y:Z

    return-void
.end method

.method public m0()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->L()I

    move-result v0

    return v0
.end method

.method public final m1(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->D:Z

    return-void
.end method

.method public n()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->n()Z

    move-result v0

    return v0
.end method

.method public final n1(Landroidx/compose/ui/viewinterop/AndroidViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->l:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    return-void
.end method

.method public o()Landroidx/compose/ui/layout/l;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    return-object v0
.end method

.method public final o0()Landroidx/compose/runtime/collection/b;
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->p:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->h()V

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->p:Landroidx/compose/runtime/collection/b;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->p0()Landroidx/compose/runtime/collection/b;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/collection/b;->c(ILandroidx/compose/runtime/collection/b;)Z

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->p:Landroidx/compose/runtime/collection/b;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode;->P:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/b;->A(Ljava/util/Comparator;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->q:Z

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->p:Landroidx/compose/runtime/collection/b;

    return-object v0
.end method

.method public onDeactivate()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->l:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onDeactivate()V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->B:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->onDeactivate()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->J:Z

    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->j1()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->B0()V

    :cond_2
    return-void
.end method

.method public onRelease()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->l:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onRelease()V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->B:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->onRelease()V

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->f0()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->t2()V

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onReuse()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->D0()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onReuse is only expected on attached node"

    invoke-static {v0}, Lg0/a;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->l:Landroidx/compose/ui/viewinterop/AndroidViewHolder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onReuse()V

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->B:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;->onReuse()V

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->E0()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->J:Z

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->B0()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->j1()V

    :goto_0
    invoke-static {}, Landroidx/compose/ui/semantics/k;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/LayoutNode;->s1(I)V

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    invoke-virtual {v0}, Landroidx/compose/ui/node/q0;->s()V

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    invoke-virtual {v0}, Landroidx/compose/ui/node/q0;->y()V

    invoke-virtual {p0, p0}, Landroidx/compose/ui/node/LayoutNode;->i1(Landroidx/compose/ui/node/LayoutNode;)V

    return-void
.end method

.method public final p0()Landroidx/compose/runtime/collection/b;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->u1()V

    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->g:Landroidx/compose/ui/node/n0;

    invoke-virtual {v0}, Landroidx/compose/ui/node/n0;->f()Landroidx/compose/runtime/collection/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->h:Landroidx/compose/runtime/collection/b;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public final p1(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/LayoutNode;->I:Z

    return-void
.end method

.method public final q0(JLandroidx/compose/ui/node/q;ZZ)V
    .locals 13

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->f0()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->N1(Landroidx/compose/ui/node/NodeCoordinator;JZILjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->f0()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v6

    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->L:Landroidx/compose/ui/node/NodeCoordinator$c;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator$c;->a()Landroidx/compose/ui/node/NodeCoordinator$d;

    move-result-object v7

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/node/NodeCoordinator;->h2(Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZ)V

    return-void
.end method

.method public final q1(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->G:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final r(Landroidx/compose/ui/node/y0;)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot attach "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " as it already is attached.  Tree: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->v(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->j:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_4

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v2

    :goto_3
    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attaching to a different owner("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") than the parent\'s owner("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v4, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    goto :goto_4

    :cond_5
    move-object v4, v3

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "). This tree: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->v(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Parent tree: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->j:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v4, :cond_6

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/ui/node/LayoutNode;->v(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_6
    move-object v4, v3

    :goto_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->v1(Z)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->U()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4, v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->p1(Z)V

    :cond_8
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->f0()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v4

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v5

    goto :goto_6

    :cond_9
    move-object v5, v3

    :goto_6
    invoke-virtual {v4, v5}, Landroidx/compose/ui/node/NodeCoordinator;->E2(Landroidx/compose/ui/node/NodeCoordinator;)V

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    if-eqz v0, :cond_a

    iget v4, v0, Landroidx/compose/ui/node/LayoutNode;->m:I

    goto :goto_7

    :cond_a
    const/4 v4, -0x1

    :goto_7
    add-int/2addr v4, v2

    iput v4, p0, Landroidx/compose/ui/node/LayoutNode;->m:I

    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->F:Landroidx/compose/ui/f;

    if-eqz v4, :cond_b

    invoke-direct {p0, v4}, Landroidx/compose/ui/node/LayoutNode;->q(Landroidx/compose/ui/f;)V

    :cond_b
    iput-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->F:Landroidx/compose/ui/f;

    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    const/16 v4, 0x8

    invoke-static {v4}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/q0;->q(I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->B0()V

    :cond_c
    invoke-interface {p1, p0}, Landroidx/compose/ui/node/y0;->onAttach(Landroidx/compose/ui/node/LayoutNode;)V

    iget-boolean v3, p0, Landroidx/compose/ui/node/LayoutNode;->d:Z

    if-eqz v3, :cond_d

    invoke-direct {p0, p0}, Landroidx/compose/ui/node/LayoutNode;->o1(Landroidx/compose/ui/node/LayoutNode;)V

    goto :goto_8

    :cond_d
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->j:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v3, :cond_e

    iget-object v3, v3, Landroidx/compose/ui/node/LayoutNode;->e:Landroidx/compose/ui/node/LayoutNode;

    if-nez v3, :cond_f

    :cond_e
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->e:Landroidx/compose/ui/node/LayoutNode;

    :cond_f
    invoke-direct {p0, v3}, Landroidx/compose/ui/node/LayoutNode;->o1(Landroidx/compose/ui/node/LayoutNode;)V

    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->e:Landroidx/compose/ui/node/LayoutNode;

    if-nez v3, :cond_10

    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    const/16 v4, 0x200

    invoke-static {v4}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/node/q0;->q(I)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-direct {p0, p0}, Landroidx/compose/ui/node/LayoutNode;->o1(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_10
    :goto_8
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->E0()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    invoke-virtual {v3}, Landroidx/compose/ui/node/q0;->s()V

    :cond_11
    iget-object v3, p0, Landroidx/compose/ui/node/LayoutNode;->g:Landroidx/compose/ui/node/n0;

    invoke-virtual {v3}, Landroidx/compose/ui/node/n0;->f()Landroidx/compose/runtime/collection/b;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v4

    if-lez v4, :cond_13

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v3

    :cond_12
    aget-object v5, v3, v1

    check-cast v5, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v5, p1}, Landroidx/compose/ui/node/LayoutNode;->r(Landroidx/compose/ui/node/y0;)V

    add-int/2addr v1, v2

    if-lt v1, v4, :cond_12

    :cond_13
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->E0()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    invoke-virtual {v1}, Landroidx/compose/ui/node/q0;->y()V

    :cond_14
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->y0()V

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->y0()V

    :cond_15
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->f0()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    :goto_9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->p2()V

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    goto :goto_9

    :cond_16
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->G:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->c0()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->E0()Z

    move-result p1

    if-nez p1, :cond_18

    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->v0()V

    :cond_18
    return-void
.end method

.method public final r1(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->H:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final s()V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->x:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v0, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    iput-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->p0()Landroidx/compose/runtime/collection/b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    :cond_0
    aget-object v3, v0, v2

    check-cast v3, Landroidx/compose/ui/node/LayoutNode;

    iget-object v4, v3, Landroidx/compose/ui/node/LayoutNode;->w:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    sget-object v5, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    if-eq v4, v5, :cond_1

    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->s()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v1, :cond_0

    :cond_2
    return-void
.end method

.method public final s0(JLandroidx/compose/ui/node/q;ZZ)V
    .locals 13

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->f0()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-wide v1, p1

    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/node/NodeCoordinator;->N1(Landroidx/compose/ui/node/NodeCoordinator;JZILjava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->f0()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v6

    sget-object v0, Landroidx/compose/ui/node/NodeCoordinator;->L:Landroidx/compose/ui/node/NodeCoordinator$c;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator$c;->b()Landroidx/compose/ui/node/NodeCoordinator$d;

    move-result-object v7

    const/4 v11, 0x1

    move-object/from16 v10, p3

    move/from16 v12, p5

    invoke-virtual/range {v6 .. v12}, Landroidx/compose/ui/node/NodeCoordinator;->h2(Landroidx/compose/ui/node/NodeCoordinator$d;JLandroidx/compose/ui/node/q;ZZ)V

    return-void
.end method

.method public s1(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->b:I

    return-void
.end method

.method public final t1(Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->B:Landroidx/compose/ui/layout/LayoutNodeSubcompositionsState;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroidx/compose/ui/platform/c1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->E()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " measurePolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->Z()Landroidx/compose/ui/layout/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u0(ILandroidx/compose/ui/node/LayoutNode;)V
    .locals 7

    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->j:Landroidx/compose/ui/node/LayoutNode;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, " Other tree: "

    const-string v4, "Cannot insert "

    const/4 v5, 0x0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " because it already has a parent. This tree: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1, v2, v5}, Landroidx/compose/ui/node/LayoutNode;->v(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Landroidx/compose/ui/node/LayoutNode;->j:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v6, :cond_1

    invoke-static {v6, v1, v2, v5}, Landroidx/compose/ui/node/LayoutNode;->v(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_1
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p2, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " because it already has an owner. This tree: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, v1, v2, v5}, Landroidx/compose/ui/node/LayoutNode;->v(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, v1, v2, v5}, Landroidx/compose/ui/node/LayoutNode;->v(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_4
    iput-object p0, p2, Landroidx/compose/ui/node/LayoutNode;->j:Landroidx/compose/ui/node/LayoutNode;

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->g:Landroidx/compose/ui/node/n0;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/n0;->a(ILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->S0()V

    iget-boolean p1, p2, Landroidx/compose/ui/node/LayoutNode;->a:Z

    if-eqz p1, :cond_5

    iget p1, p0, Landroidx/compose/ui/node/LayoutNode;->f:I

    add-int/2addr p1, v2

    iput p1, p0, Landroidx/compose/ui/node/LayoutNode;->f:I

    :cond_5
    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->C0()V

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    if-eqz p1, :cond_6

    invoke-virtual {p2, p1}, Landroidx/compose/ui/node/LayoutNode;->r(Landroidx/compose/ui/node/y0;)V

    :cond_6
    iget-object p1, p2, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->s()I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->s()I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->W(I)V

    :cond_7
    return-void
.end method

.method public final u1()V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/node/LayoutNode;->f:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->U0()V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot detach node that is already detached!  Tree: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4, v3, v1, v2}, Landroidx/compose/ui/node/LayoutNode;->v(Landroidx/compose/ui/node/LayoutNode;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->w0()V

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNode;->y0()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/node/LayoutNode$UsageByParent;->NotUsed:Landroidx/compose/ui/node/LayoutNode$UsageByParent;

    invoke-virtual {v4, v5}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->u1(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->U()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v5}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->n1(Landroidx/compose/ui/node/LayoutNode$UsageByParent;)V

    :cond_2
    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v4}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->V()V

    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->H:Lkotlin/jvm/functions/Function1;

    if-eqz v4, :cond_3

    invoke-interface {v4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    const/16 v5, 0x8

    invoke-static {v5}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/compose/ui/node/q0;->q(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->B0()V

    :cond_4
    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    invoke-virtual {v4}, Landroidx/compose/ui/node/q0;->z()V

    invoke-static {p0, v1}, Landroidx/compose/ui/node/LayoutNode;->p(Landroidx/compose/ui/node/LayoutNode;Z)V

    iget-object v4, p0, Landroidx/compose/ui/node/LayoutNode;->g:Landroidx/compose/ui/node/n0;

    invoke-virtual {v4}, Landroidx/compose/ui/node/n0;->f()Landroidx/compose/runtime/collection/b;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {v4}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v4

    move v6, v3

    :cond_5
    aget-object v7, v4, v6

    check-cast v7, Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v7}, Landroidx/compose/ui/node/LayoutNode;->w()V

    add-int/2addr v6, v1

    if-lt v6, v5, :cond_5

    :cond_6
    invoke-static {p0, v3}, Landroidx/compose/ui/node/LayoutNode;->p(Landroidx/compose/ui/node/LayoutNode;Z)V

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    invoke-virtual {v1}, Landroidx/compose/ui/node/q0;->t()V

    invoke-interface {v0, p0}, Landroidx/compose/ui/node/y0;->onDetach(Landroidx/compose/ui/node/LayoutNode;)V

    iput-object v2, p0, Landroidx/compose/ui/node/LayoutNode;->k:Landroidx/compose/ui/node/y0;

    invoke-direct {p0, v2}, Landroidx/compose/ui/node/LayoutNode;->o1(Landroidx/compose/ui/node/LayoutNode;)V

    iput v3, p0, Landroidx/compose/ui/node/LayoutNode;->m:I

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->n1()V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->U()Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$LookaheadPassDelegate;->h1()V

    :cond_7
    return-void
.end method

.method public final w0()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/node/LayoutNode;->N()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->j2()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->h0()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->w0()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final x()V
    .locals 11

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->R()Landroidx/compose/ui/node/LayoutNode$LayoutState;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->Idle:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v0, v1, :cond_a

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->Q()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->n()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->z:Landroidx/compose/ui/node/q0;

    const/16 v1, 0x100

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v2

    invoke-static {v0}, Landroidx/compose/ui/node/q0;->c(Landroidx/compose/ui/node/q0;)I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Landroidx/compose/ui/node/q0;->k()Landroidx/compose/ui/f$c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->f1()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    move-object v4, v0

    move-object v5, v3

    :goto_1
    if-eqz v4, :cond_9

    instance-of v6, v4, Landroidx/compose/ui/node/p;

    if-eqz v6, :cond_2

    check-cast v4, Landroidx/compose/ui/node/p;

    invoke-static {v1}, Landroidx/compose/ui/node/s0;->a(I)I

    move-result v6

    invoke-static {v4, v6}, Landroidx/compose/ui/node/g;->h(Landroidx/compose/ui/node/f;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v6

    invoke-interface {v4, v6}, Landroidx/compose/ui/node/p;->v(Landroidx/compose/ui/layout/l;)V

    goto :goto_4

    :cond_2
    invoke-virtual {v4}, Landroidx/compose/ui/f$c;->f1()I

    move-result v6

    and-int/2addr v6, v2

    if-eqz v6, :cond_8

    instance-of v6, v4, Landroidx/compose/ui/node/i;

    if-eqz v6, :cond_8

    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/node/i;

    invoke-virtual {v6}, Landroidx/compose/ui/node/i;->E1()Landroidx/compose/ui/f$c;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :goto_2
    const/4 v9, 0x1

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->f1()I

    move-result v10

    and-int/2addr v10, v2

    if-eqz v10, :cond_6

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v9, :cond_3

    move-object v4, v6

    goto :goto_3

    :cond_3
    if-nez v5, :cond_4

    new-instance v5, Landroidx/compose/runtime/collection/b;

    const/16 v9, 0x10

    new-array v9, v9, [Landroidx/compose/ui/f$c;

    invoke-direct {v5, v9, v7}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    move-object v4, v3

    :cond_5
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    invoke-virtual {v6}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v6

    goto :goto_2

    :cond_7
    if-ne v8, v9, :cond_8

    goto :goto_1

    :cond_8
    :goto_4
    invoke-static {v5}, Landroidx/compose/ui/node/g;->b(Landroidx/compose/runtime/collection/b;)Landroidx/compose/ui/f$c;

    move-result-object v4

    goto :goto_1

    :cond_9
    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->a1()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Landroidx/compose/ui/f$c;->b1()Landroidx/compose/ui/f$c;

    move-result-object v0

    goto :goto_0

    :cond_a
    :goto_5
    return-void
.end method

.method public final x0()V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->f0()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    :goto_0
    if-eq v0, v1, :cond_1

    const-string v2, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/node/y;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->T1()Landroidx/compose/ui/node/w0;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroidx/compose/ui/node/w0;->invalidate()V

    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->Z1()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->M()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->T1()Landroidx/compose/ui/node/w0;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroidx/compose/ui/node/w0;->invalidate()V

    :cond_2
    return-void
.end method

.method public final y(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->f0()Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->H1(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void
.end method

.method public final y0()V
    .locals 13

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->e:Landroidx/compose/ui/node/LayoutNode;

    if-eqz v0, :cond_0

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/node/LayoutNode;->d1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v11, 0x7

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Landroidx/compose/ui/node/LayoutNode;->h1(Landroidx/compose/ui/node/LayoutNode;ZZZILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final z()Z
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->A:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->r()Landroidx/compose/ui/node/a;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/node/a;->v()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/AlignmentLines;->k()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->C()Landroidx/compose/ui/node/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/a;->v()Landroidx/compose/ui/node/AlignmentLines;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/node/AlignmentLines;->k()Z

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public final z0()V
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->Q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->Y()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LayoutNode;->I:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/node/f0;->b(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/y0;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/compose/ui/node/y0;->requestOnPositionedCallback(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_1
    :goto_0
    return-void
.end method
