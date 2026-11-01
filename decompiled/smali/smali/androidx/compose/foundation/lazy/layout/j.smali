.class public abstract Landroidx/compose/foundation/lazy/layout/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/j$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/j;->c()Landroidx/compose/foundation/lazy/layout/b;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/b;->get(I)Landroidx/compose/foundation/lazy/layout/b$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/b$a;->b()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/b$a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/j$a;

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/j$a;->getType()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract c()Landroidx/compose/foundation/lazy/layout/b;
.end method

.method public final d()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/j;->c()Landroidx/compose/foundation/lazy/layout/b;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/b;->getSize()I

    move-result v0

    return v0
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/j;->c()Landroidx/compose/foundation/lazy/layout/b;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/b;->get(I)Landroidx/compose/foundation/lazy/layout/b$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/b$a;->b()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/b$a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/j$a;

    invoke-interface {v0}, Landroidx/compose/foundation/lazy/layout/j$a;->getKey()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p1}, Landroidx/compose/foundation/lazy/layout/b0;->a(I)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method
