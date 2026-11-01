.class final Landroidx/compose/ui/node/q$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/ListIterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private final b:I

.field private final c:I

.field final synthetic d:Landroidx/compose/ui/node/q;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/q;III)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/node/q$a;->d:Landroidx/compose/ui/node/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/compose/ui/node/q$a;->a:I

    iput p3, p0, Landroidx/compose/ui/node/q$a;->b:I

    iput p4, p0, Landroidx/compose/ui/node/q$a;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/node/q;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/node/q;->size()I

    move-result p4

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/node/q$a;-><init>(Landroidx/compose/ui/node/q;III)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/compose/ui/f$c;
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/q$a;->d:Landroidx/compose/ui/node/q;

    invoke-static {v0}, Landroidx/compose/ui/node/q;->e(Landroidx/compose/ui/node/q;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/node/q$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/compose/ui/node/q$a;->a:I

    aget-object v0, v0, v1

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/f$c;

    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Landroidx/compose/ui/f$c;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/q$a;->d:Landroidx/compose/ui/node/q;

    invoke-static {v0}, Landroidx/compose/ui/node/q;->e(Landroidx/compose/ui/node/q;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/node/q$a;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/ui/node/q$a;->a:I

    aget-object v0, v0, v1

    const-string v1, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/f$c;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Landroidx/compose/ui/node/q$a;->a:I

    iget v1, p0, Landroidx/compose/ui/node/q$a;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    iget v0, p0, Landroidx/compose/ui/node/q$a;->a:I

    iget v1, p0, Landroidx/compose/ui/node/q$a;->b:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/q$a;->a()Landroidx/compose/ui/f$c;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 2

    iget v0, p0, Landroidx/compose/ui/node/q$a;->a:I

    iget v1, p0, Landroidx/compose/ui/node/q$a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/q$a;->c()Landroidx/compose/ui/f$c;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    iget v0, p0, Landroidx/compose/ui/node/q$a;->a:I

    iget v1, p0, Landroidx/compose/ui/node/q$a;->b:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
