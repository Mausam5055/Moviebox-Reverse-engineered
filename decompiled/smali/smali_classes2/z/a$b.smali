.class public final Lz/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lz/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:Lz/j;

.field private b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field final synthetic c:Lz/a;


# direct methods
.method constructor <init>(Lz/a;)V
    .locals 0

    iput-object p1, p0, Lz/a$b;->c:Lz/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lz/b;->a(Lz/d;)Lz/j;

    move-result-object p1

    iput-object p1, p0, Lz/a$b;->a:Lz/j;

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 1

    iget-object v0, p0, Lz/a$b;->c:Lz/a;

    invoke-virtual {v0}, Lz/a;->F()Lz/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz/a$a;->k(Landroidx/compose/ui/unit/LayoutDirection;)V

    return-void
.end method

.method public b(Lo0/e;)V
    .locals 1

    iget-object v0, p0, Lz/a$b;->c:Lz/a;

    invoke-virtual {v0}, Lz/a;->F()Lz/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz/a$a;->j(Lo0/e;)V

    return-void
.end method

.method public c()Lz/j;
    .locals 1

    iget-object v0, p0, Lz/a$b;->a:Lz/j;

    return-object v0
.end method

.method public d(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 0

    iput-object p1, p0, Lz/a$b;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-void
.end method

.method public e()Landroidx/compose/ui/graphics/m1;
    .locals 1

    iget-object v0, p0, Lz/a$b;->c:Lz/a;

    invoke-virtual {v0}, Lz/a;->F()Lz/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lz/a$a;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v0

    return-object v0
.end method

.method public f(J)V
    .locals 1

    iget-object v0, p0, Lz/a$b;->c:Lz/a;

    invoke-virtual {v0}, Lz/a;->F()Lz/a$a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lz/a$a;->l(J)V

    return-void
.end method

.method public g()Landroidx/compose/ui/graphics/layer/GraphicsLayer;
    .locals 1

    iget-object v0, p0, Lz/a$b;->b:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    return-object v0
.end method

.method public getDensity()Lo0/e;
    .locals 1

    iget-object v0, p0, Lz/a$b;->c:Lz/a;

    invoke-virtual {v0}, Lz/a;->F()Lz/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lz/a$a;->f()Lo0/e;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1

    iget-object v0, p0, Lz/a$b;->c:Lz/a;

    invoke-virtual {v0}, Lz/a;->F()Lz/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lz/a$a;->g()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v0

    return-object v0
.end method

.method public h(Landroidx/compose/ui/graphics/m1;)V
    .locals 1

    iget-object v0, p0, Lz/a$b;->c:Lz/a;

    invoke-virtual {v0}, Lz/a;->F()Lz/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lz/a$a;->i(Landroidx/compose/ui/graphics/m1;)V

    return-void
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lz/a$b;->c:Lz/a;

    invoke-virtual {v0}, Lz/a;->F()Lz/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lz/a$a;->h()J

    move-result-wide v0

    return-wide v0
.end method
