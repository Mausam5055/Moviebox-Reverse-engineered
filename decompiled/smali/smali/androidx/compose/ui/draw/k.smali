.class final Landroidx/compose/ui/draw/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/graphics/a4;


# instance fields
.field private a:Landroidx/collection/l0;

.field private b:Landroidx/compose/ui/graphics/a4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/draw/k;->b:Landroidx/compose/ui/graphics/a4;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "GraphicsContext not provided"

    invoke-static {v1}, Lg0/a;->b(Ljava/lang/String;)V

    :cond_1
    invoke-interface {v0}, Landroidx/compose/ui/graphics/a4;->a()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v0

    iget-object v1, p0, Landroidx/compose/ui/draw/k;->a:Landroidx/collection/l0;

    if-nez v1, :cond_2

    invoke-static {v0}, Landroidx/collection/r0;->b(Ljava/lang/Object;)Landroidx/collection/l0;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/ui/draw/k;->a:Landroidx/collection/l0;

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Landroidx/collection/l0;->e(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method public b(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draw/k;->b:Landroidx/compose/ui/graphics/a4;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroidx/compose/ui/graphics/a4;->b(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    :cond_0
    return-void
.end method

.method public final c()Landroidx/compose/ui/graphics/a4;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/draw/k;->b:Landroidx/compose/ui/graphics/a4;

    return-object v0
.end method

.method public final d()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/draw/k;->a:Landroidx/collection/l0;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    iget v2, v0, Landroidx/collection/ObjectList;->b:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    check-cast v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p0, v4}, Landroidx/compose/ui/draw/k;->b(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/collection/l0;->f()V

    :cond_1
    return-void
.end method

.method public final e(Landroidx/compose/ui/graphics/a4;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/draw/k;->d()V

    iput-object p1, p0, Landroidx/compose/ui/draw/k;->b:Landroidx/compose/ui/graphics/a4;

    return-void
.end method
