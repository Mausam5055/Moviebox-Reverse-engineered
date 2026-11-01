.class public final Landroidx/compose/runtime/k1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/f;


# instance fields
.field private final a:Landroidx/compose/runtime/f;

.field private final b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/f;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/k1;->a:Landroidx/compose/runtime/f;

    iput p2, p0, Landroidx/compose/runtime/k1;->b:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const-string v0, "Clear is not valid on OffsetApplier"

    invoke-static {v0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/k1;->a:Landroidx/compose/runtime/f;

    invoke-interface {v0}, Landroidx/compose/runtime/f;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e(II)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/k1;->a:Landroidx/compose/runtime/f;

    iget v1, p0, Landroidx/compose/runtime/k1;->c:I

    if-nez v1, :cond_0

    iget v1, p0, Landroidx/compose/runtime/k1;->b:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/f;->e(II)V

    return-void
.end method

.method public f(III)V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/k1;->c:I

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/k1;->b:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/compose/runtime/k1;->a:Landroidx/compose/runtime/f;

    add-int/2addr p1, v0

    add-int/2addr p2, v0

    invoke-interface {v1, p1, p2, p3}, Landroidx/compose/runtime/f;->f(III)V

    return-void
.end method

.method public g(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/k1;->a:Landroidx/compose/runtime/f;

    iget v1, p0, Landroidx/compose/runtime/k1;->c:I

    if-nez v1, :cond_0

    iget v1, p0, Landroidx/compose/runtime/k1;->b:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/f;->g(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic h()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/e;->b(Landroidx/compose/runtime/f;)V

    return-void
.end method

.method public i(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/k1;->a:Landroidx/compose/runtime/f;

    iget v1, p0, Landroidx/compose/runtime/k1;->c:I

    if-nez v1, :cond_0

    iget v1, p0, Landroidx/compose/runtime/k1;->b:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr p1, v1

    invoke-interface {v0, p1, p2}, Landroidx/compose/runtime/f;->i(ILjava/lang/Object;)V

    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/k1;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/k1;->c:I

    iget-object v0, p0, Landroidx/compose/runtime/k1;->a:Landroidx/compose/runtime/f;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/f;->j(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic k()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/e;->a(Landroidx/compose/runtime/f;)V

    return-void
.end method

.method public l()V
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/k1;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "OffsetApplier up called with no corresponding down"

    invoke-static {v0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Landroidx/compose/runtime/k1;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/k1;->c:I

    iget-object v0, p0, Landroidx/compose/runtime/k1;->a:Landroidx/compose/runtime/f;

    invoke-interface {v0}, Landroidx/compose/runtime/f;->l()V

    return-void
.end method
