.class public final Landroidx/compose/foundation/layout/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/layout/h0;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Landroidx/compose/runtime/i1;

.field private final d:Landroidx/compose/runtime/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/a;->a:I

    iput-object p2, p0, Landroidx/compose/foundation/layout/a;->b:Ljava/lang/String;

    sget-object p1, Lz0/c;->e:Lz0/c;

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/layout/a;->c:Landroidx/compose/runtime/i1;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, p2, v0, p2}, Landroidx/compose/runtime/r2;->f(Ljava/lang/Object;Landroidx/compose/runtime/q2;ILjava/lang/Object;)Landroidx/compose/runtime/i1;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/layout/a;->d:Landroidx/compose/runtime/i1;

    return-void
.end method

.method private final g(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/a;->d:Landroidx/compose/runtime/i1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lo0/e;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/a;->e()Lz0/c;

    move-result-object p1

    iget p1, p1, Lz0/c;->b:I

    return p1
.end method

.method public b(Lo0/e;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/a;->e()Lz0/c;

    move-result-object p1

    iget p1, p1, Lz0/c;->d:I

    return p1
.end method

.method public c(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/a;->e()Lz0/c;

    move-result-object p1

    iget p1, p1, Lz0/c;->a:I

    return p1
.end method

.method public d(Lo0/e;Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/a;->e()Lz0/c;

    move-result-object p1

    iget p1, p1, Lz0/c;->c:I

    return p1
.end method

.method public final e()Lz0/c;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/a;->c:Landroidx/compose/runtime/i1;

    invoke-interface {v0}, Landroidx/compose/runtime/a3;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz0/c;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v1, p0, Landroidx/compose/foundation/layout/a;->a:I

    check-cast p1, Landroidx/compose/foundation/layout/a;

    iget p1, p1, Landroidx/compose/foundation/layout/a;->a:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final f(Lz0/c;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/a;->c:Landroidx/compose/runtime/i1;

    invoke-interface {v0, p1}, Landroidx/compose/runtime/i1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final h(Landroidx/core/view/WindowInsetsCompat;I)V
    .locals 1

    if-eqz p2, :cond_0

    iget v0, p0, Landroidx/compose/foundation/layout/a;->a:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    :cond_0
    iget p2, p0, Landroidx/compose/foundation/layout/a;->a:I

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Lz0/c;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/compose/foundation/layout/a;->f(Lz0/c;)V

    iget p2, p0, Landroidx/compose/foundation/layout/a;->a:I

    invoke-virtual {p1, p2}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/a;->g(Z)V

    :cond_1
    return-void
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/foundation/layout/a;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/compose/foundation/layout/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/a;->e()Lz0/c;

    move-result-object v1

    iget v1, v1, Lz0/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/a;->e()Lz0/c;

    move-result-object v2

    iget v2, v2, Lz0/c;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/a;->e()Lz0/c;

    move-result-object v2

    iget v2, v2, Lz0/c;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/a;->e()Lz0/c;

    move-result-object v1

    iget v1, v1, Lz0/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
