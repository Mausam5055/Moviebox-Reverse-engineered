.class final Landroidx/compose/runtime/w2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field private final a:Landroidx/compose/runtime/j2;

.field private final b:I

.field private final c:Landroidx/compose/runtime/l0;

.field private final d:Landroidx/compose/runtime/x2;

.field private final e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/j2;ILandroidx/compose/runtime/l0;Landroidx/compose/runtime/x2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/w2;->a:Landroidx/compose/runtime/j2;

    iput p2, p0, Landroidx/compose/runtime/w2;->b:I

    iput-object p4, p0, Landroidx/compose/runtime/w2;->d:Landroidx/compose/runtime/x2;

    invoke-virtual {p1}, Landroidx/compose/runtime/j2;->t()I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/w2;->e:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/compose/runtime/tooling/b;
    .locals 7

    iget-object v0, p0, Landroidx/compose/runtime/w2;->c:Landroidx/compose/runtime/l0;

    invoke-virtual {v0}, Landroidx/compose/runtime/l0;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Landroidx/compose/runtime/w2;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/w2;->f:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Landroidx/compose/runtime/c;

    if-eqz v1, :cond_1

    new-instance v1, Landroidx/compose/runtime/k2;

    iget-object v2, p0, Landroidx/compose/runtime/w2;->a:Landroidx/compose/runtime/j2;

    check-cast v0, Landroidx/compose/runtime/c;

    invoke-virtual {v0}, Landroidx/compose/runtime/c;->a()I

    move-result v0

    iget v3, p0, Landroidx/compose/runtime/w2;->e:I

    invoke-direct {v1, v2, v0, v3}, Landroidx/compose/runtime/k2;-><init>(Landroidx/compose/runtime/j2;II)V

    goto :goto_1

    :cond_1
    instance-of v1, v0, Landroidx/compose/runtime/l0;

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/compose/runtime/y2;

    iget-object v2, p0, Landroidx/compose/runtime/w2;->a:Landroidx/compose/runtime/j2;

    iget v3, p0, Landroidx/compose/runtime/w2;->b:I

    check-cast v0, Landroidx/compose/runtime/l0;

    new-instance v4, Landroidx/compose/runtime/z1;

    iget-object v5, p0, Landroidx/compose/runtime/w2;->d:Landroidx/compose/runtime/x2;

    iget v6, p0, Landroidx/compose/runtime/w2;->f:I

    add-int/lit8 v6, v6, -0x1

    invoke-direct {v4, v5, v6}, Landroidx/compose/runtime/z1;-><init>(Landroidx/compose/runtime/x2;I)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/compose/runtime/y2;-><init>(Landroidx/compose/runtime/j2;ILandroidx/compose/runtime/l0;Landroidx/compose/runtime/x2;)V

    :goto_1
    return-object v1

    :cond_2
    const-string v0, "Unexpected group information structure"

    invoke-static {v0}, Landroidx/compose/runtime/k;->s(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/w2;->c:Landroidx/compose/runtime/l0;

    invoke-virtual {v0}, Landroidx/compose/runtime/l0;->b()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Landroidx/compose/runtime/w2;->f:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/w2;->a()Landroidx/compose/runtime/tooling/b;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
