.class public final Landroidx/navigation/NavGraph$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field final synthetic c:Landroidx/navigation/NavGraph;


# direct methods
.method constructor <init>(Landroidx/navigation/NavGraph;)V
    .locals 0

    iput-object p1, p0, Landroidx/navigation/NavGraph$a;->c:Landroidx/navigation/NavGraph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/navigation/NavGraph$a;->a:I

    return-void
.end method


# virtual methods
.method public a()Landroidx/navigation/NavDestination;
    .locals 3

    invoke-virtual {p0}, Landroidx/navigation/NavGraph$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/navigation/NavGraph$a;->b:Z

    iget-object v1, p0, Landroidx/navigation/NavGraph$a;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v1}, Landroidx/navigation/NavGraph;->E()Landroidx/collection/y0;

    move-result-object v1

    iget v2, p0, Landroidx/navigation/NavGraph$a;->a:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/navigation/NavGraph$a;->a:I

    invoke-virtual {v1, v2}, Landroidx/collection/y0;->q(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "nodes.valueAt(++index)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/navigation/NavDestination;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 3

    iget v0, p0, Landroidx/navigation/NavGraph$a;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/navigation/NavGraph$a;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v2}, Landroidx/navigation/NavGraph;->E()Landroidx/collection/y0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/collection/y0;->p()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/navigation/NavGraph$a;->a()Landroidx/navigation/NavDestination;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    iget-boolean v0, p0, Landroidx/navigation/NavGraph$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/navigation/NavGraph$a;->c:Landroidx/navigation/NavGraph;

    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->E()Landroidx/collection/y0;

    move-result-object v0

    iget v1, p0, Landroidx/navigation/NavGraph$a;->a:I

    invoke-virtual {v0, v1}, Landroidx/collection/y0;->q(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/navigation/NavDestination;->w(Landroidx/navigation/NavGraph;)V

    iget v1, p0, Landroidx/navigation/NavGraph$a;->a:I

    invoke-virtual {v0, v1}, Landroidx/collection/y0;->n(I)V

    iget v0, p0, Landroidx/navigation/NavGraph$a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/navigation/NavGraph$a;->a:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/navigation/NavGraph$a;->b:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call next() before you can remove an element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
