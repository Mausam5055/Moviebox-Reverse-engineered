.class public final Landroidx/compose/runtime/m0;
.super Ljava/lang/Object;


# instance fields
.field private a:[I

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/compose/runtime/m0;->a:[I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/m0;->b:I

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/m0;->b:I

    return v0
.end method

.method public final c(I)I
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/m0;->b:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/m0;->a:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/m0;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/m0;->a:[I

    iget v1, p0, Landroidx/compose/runtime/m0;->b:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public final f(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/m0;->a:[I

    aget p1, v0, p1

    return p1
.end method

.method public final g()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/m0;->a:[I

    iget v1, p0, Landroidx/compose/runtime/m0;->b:I

    add-int/lit8 v1, v1, -0x2

    aget v0, v0, v1

    return v0
.end method

.method public final h(I)I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/m0;->b:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/m0;->e()I

    move-result p1

    :cond_0
    return p1
.end method

.method public final i()I
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/m0;->a:[I

    iget v1, p0, Landroidx/compose/runtime/m0;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/runtime/m0;->b:I

    aget v0, v0, v1

    return v0
.end method

.method public final j(I)V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/m0;->b:I

    iget-object v1, p0, Landroidx/compose/runtime/m0;->a:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const-string v1, "copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/runtime/m0;->a:[I

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/m0;->a:[I

    iget v1, p0, Landroidx/compose/runtime/m0;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/runtime/m0;->b:I

    aput p1, v0, v1

    return-void
.end method
