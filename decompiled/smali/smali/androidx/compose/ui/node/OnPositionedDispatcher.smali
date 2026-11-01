.class public final Landroidx/compose/ui/node/OnPositionedDispatcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;
    }
.end annotation


# static fields
.field public static final c:Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;

.field public static final d:I


# instance fields
.field private final a:Landroidx/compose/runtime/collection/b;

.field private b:[Landroidx/compose/ui/node/LayoutNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/OnPositionedDispatcher;->c:Landroidx/compose/ui/node/OnPositionedDispatcher$Companion;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/node/OnPositionedDispatcher;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/runtime/collection/b;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/ui/node/LayoutNode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/b;

    return-void
.end method

.method private final b(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 3

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->x()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/LayoutNode;->p1(Z)V

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->p0()Landroidx/compose/runtime/collection/b;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object p1

    :cond_0
    aget-object v2, p1, v0

    check-cast v2, Landroidx/compose/ui/node/LayoutNode;

    invoke-direct {p0, v2}, Landroidx/compose/ui/node/OnPositionedDispatcher;->b(Landroidx/compose/ui/node/LayoutNode;)V

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/b;

    sget-object v1, Landroidx/compose/ui/node/OnPositionedDispatcher$Companion$DepthComparator;->INSTANCE:Landroidx/compose/ui/node/OnPositionedDispatcher$Companion$DepthComparator;

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/b;->A(Ljava/util/Comparator;)V

    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->b:[Landroidx/compose/ui/node/LayoutNode;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v2, v0, :cond_1

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Landroidx/compose/ui/node/LayoutNode;

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->b:[Landroidx/compose/ui/node/LayoutNode;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v3}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v3

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v2}, Landroidx/compose/runtime/collection/b;->h()V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/4 v2, -0x1

    if-ge v2, v0, :cond_4

    aget-object v2, v1, v0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->d0()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Landroidx/compose/ui/node/OnPositionedDispatcher;->b(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    iput-object v1, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->b:[Landroidx/compose/ui/node/LayoutNode;

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->q()Z

    move-result v0

    return v0
.end method

.method public final d(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/LayoutNode;->p1(Z)V

    return-void
.end method

.method public final e(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->h()V

    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/LayoutNode;->p1(Z)V

    return-void
.end method

.method public final f(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/OnPositionedDispatcher;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/b;->t(Ljava/lang/Object;)Z

    return-void
.end method
