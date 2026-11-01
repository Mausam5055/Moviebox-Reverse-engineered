.class final Landroidx/compose/runtime/k2;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/tooling/b;
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field private final a:Landroidx/compose/runtime/j2;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/j2;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/k2;->a:Landroidx/compose/runtime/j2;

    iput p2, p0, Landroidx/compose/runtime/k2;->b:I

    iput p3, p0, Landroidx/compose/runtime/k2;->c:I

    return-void
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/k2;->a:Landroidx/compose/runtime/j2;

    invoke-virtual {v0}, Landroidx/compose/runtime/j2;->t()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/k2;->c:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 6

    invoke-direct {p0}, Landroidx/compose/runtime/k2;->a()V

    iget-object v0, p0, Landroidx/compose/runtime/k2;->a:Landroidx/compose/runtime/j2;

    iget v1, p0, Landroidx/compose/runtime/k2;->b:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/j2;->A(I)Landroidx/compose/runtime/l0;

    new-instance v0, Landroidx/compose/runtime/j0;

    iget-object v1, p0, Landroidx/compose/runtime/k2;->a:Landroidx/compose/runtime/j2;

    iget v2, p0, Landroidx/compose/runtime/k2;->b:I

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1}, Landroidx/compose/runtime/j2;->o()[I

    move-result-object v4

    iget v5, p0, Landroidx/compose/runtime/k2;->b:I

    invoke-static {v4, v5}, Landroidx/compose/runtime/l2;->h([II)I

    move-result v4

    add-int/2addr v2, v4

    invoke-direct {v0, v1, v3, v2}, Landroidx/compose/runtime/j0;-><init>(Landroidx/compose/runtime/j2;II)V

    return-object v0
.end method
