.class public final Landroidx/compose/foundation/layout/LayoutWeightElement;
.super Landroidx/compose/ui/node/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/l0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u000c\u0008\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0096\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/LayoutWeightElement;",
        "Landroidx/compose/ui/node/l0;",
        "Landroidx/compose/foundation/layout/s;",
        "",
        "weight",
        "",
        "fill",
        "<init>",
        "(FZ)V",
        "j",
        "()Landroidx/compose/foundation/layout/s;",
        "node",
        "",
        "k",
        "(Landroidx/compose/foundation/layout/s;)V",
        "",
        "hashCode",
        "()I",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "b",
        "F",
        "getWeight",
        "()F",
        "c",
        "Z",
        "getFill",
        "()Z",
        "foundation-layout_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final b:F

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/l0;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->b:F

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->c:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Landroidx/compose/ui/f$c;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/LayoutWeightElement;->j()Landroidx/compose/foundation/layout/s;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/LayoutWeightElement;

    if-eqz v1, :cond_1

    check-cast p1, Landroidx/compose/foundation/layout/LayoutWeightElement;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget v2, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->b:F

    iget v3, p1, Landroidx/compose/foundation/layout/LayoutWeightElement;->b:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->c:Z

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/LayoutWeightElement;->c:Z

    if-ne v2, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->b:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->c:Z

    invoke-static {v1}, Landroidx/compose/foundation/e;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic i(Landroidx/compose/ui/f$c;)V
    .locals 0

    check-cast p1, Landroidx/compose/foundation/layout/s;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/layout/LayoutWeightElement;->k(Landroidx/compose/foundation/layout/s;)V

    return-void
.end method

.method public j()Landroidx/compose/foundation/layout/s;
    .locals 3

    new-instance v0, Landroidx/compose/foundation/layout/s;

    iget v1, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->b:F

    iget-boolean v2, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->c:Z

    invoke-direct {v0, v1, v2}, Landroidx/compose/foundation/layout/s;-><init>(FZ)V

    return-object v0
.end method

.method public k(Landroidx/compose/foundation/layout/s;)V
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->b:F

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/s;->F1(F)V

    iget-boolean v0, p0, Landroidx/compose/foundation/layout/LayoutWeightElement;->c:Z

    invoke-virtual {p1, v0}, Landroidx/compose/foundation/layout/s;->E1(Z)V

    return-void
.end method
