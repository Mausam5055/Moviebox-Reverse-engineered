.class public abstract Landroidx/compose/runtime/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/runtime/f;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/List;

.field private c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/a;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/a;->b:Ljava/util/List;

    iput-object p1, p0, Landroidx/compose/runtime/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract b()V
.end method

.method protected c(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/compose/runtime/a;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/a;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/a;->b()V

    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/a;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public synthetic h()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/e;->b(Landroidx/compose/runtime/f;)V

    return-void
.end method

.method public j(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/a;->b:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/compose/runtime/a;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/a;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic k()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/e;->a(Landroidx/compose/runtime/f;)V

    return-void
.end method

.method public l()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/a;->b:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "empty stack"

    invoke-static {v0}, Landroidx/compose/runtime/o1;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/a;->c(Ljava/lang/Object;)V

    return-void
.end method
