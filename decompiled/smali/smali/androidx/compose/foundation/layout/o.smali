.class final Landroidx/compose/foundation/layout/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/layout/h0;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/o;->a:I

    iput p2, p0, Landroidx/compose/foundation/layout/o;->b:I

    iput p3, p0, Landroidx/compose/foundation/layout/o;->c:I

    iput p4, p0, Landroidx/compose/foundation/layout/o;->d:I

    return-void
.end method


# virtual methods
.method public a(Lo0/e;)I
    .locals 0

    iget p1, p0, Landroidx/compose/foundation/layout/o;->b:I

    return p1
.end method

.method public b(Lo0/e;)I
    .locals 0

    iget p1, p0, Landroidx/compose/foundation/layout/o;->d:I

    return p1
.end method

.method public c(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    iget p1, p0, Landroidx/compose/foundation/layout/o;->a:I

    return p1
.end method

.method public d(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    iget p1, p0, Landroidx/compose/foundation/layout/o;->c:I

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/o;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/compose/foundation/layout/o;->a:I

    check-cast p1, Landroidx/compose/foundation/layout/o;

    iget v3, p1, Landroidx/compose/foundation/layout/o;->a:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/compose/foundation/layout/o;->b:I

    iget v3, p1, Landroidx/compose/foundation/layout/o;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/compose/foundation/layout/o;->c:I

    iget v3, p1, Landroidx/compose/foundation/layout/o;->c:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/compose/foundation/layout/o;->d:I

    iget p1, p1, Landroidx/compose/foundation/layout/o;->d:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/layout/o;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/foundation/layout/o;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/foundation/layout/o;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/foundation/layout/o;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insets(left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/o;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/o;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/o;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/o;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
