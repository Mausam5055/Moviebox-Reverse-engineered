.class public final Landroidx/compose/foundation/lazy/layout/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/e$a;
    }
.end annotation


# static fields
.field public static final b:I


# instance fields
.field private final a:Landroidx/compose/runtime/collection/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/runtime/collection/b;->d:I

    sput v0, Landroidx/compose/foundation/lazy/layout/e;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/runtime/collection/b;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/foundation/lazy/layout/e$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/b;-><init>([Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/compose/foundation/lazy/layout/e;->a:Landroidx/compose/runtime/collection/b;

    return-void
.end method


# virtual methods
.method public final a(II)Landroidx/compose/foundation/lazy/layout/e$a;
    .locals 1

    new-instance v0, Landroidx/compose/foundation/lazy/layout/e$a;

    invoke-direct {v0, p1, p2}, Landroidx/compose/foundation/lazy/layout/e$a;-><init>(II)V

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/e;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/collection/b;->b(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final b()I
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/e;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/e$a;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/e$a;->a()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/e;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    :cond_0
    aget-object v4, v1, v3

    check-cast v4, Landroidx/compose/foundation/lazy/layout/e$a;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/e$a;->a()I

    move-result v5

    if-le v5, v0, :cond_1

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/e$a;->a()I

    move-result v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_0

    :cond_2
    return v0
.end method

.method public final c()I
    .locals 6

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/e;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->l()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/lazy/layout/e$a;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/e$a;->b()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/e;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->n()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/b;->m()[Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x0

    :cond_0
    aget-object v4, v1, v3

    check-cast v4, Landroidx/compose/foundation/lazy/layout/e$a;

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/e$a;->b()I

    move-result v5

    if-ge v5, v0, :cond_1

    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/layout/e$a;->b()I

    move-result v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_0

    :cond_2
    if-ltz v0, :cond_3

    return v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative minIndex"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/e;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/b;->q()Z

    move-result v0

    return v0
.end method

.method public final e(Landroidx/compose/foundation/lazy/layout/e$a;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/e;->a:Landroidx/compose/runtime/collection/b;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/b;->t(Ljava/lang/Object;)Z

    return-void
.end method
