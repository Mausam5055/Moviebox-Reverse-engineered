.class public final Landroidx/collection/a1$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/collection/a1;->a(Landroidx/collection/y0;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Landroidx/collection/y0;


# direct methods
.method constructor <init>(Landroidx/collection/y0;)V
    .locals 0

    iput-object p1, p0, Landroidx/collection/a1$a;->b:Landroidx/collection/y0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Landroidx/collection/a1$a;->a:I

    iget-object v1, p0, Landroidx/collection/a1$a;->b:Landroidx/collection/y0;

    invoke-virtual {v1}, Landroidx/collection/y0;->p()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/collection/a1$a;->b:Landroidx/collection/y0;

    iget v1, p0, Landroidx/collection/a1$a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/collection/a1$a;->a:I

    invoke-virtual {v0, v1}, Landroidx/collection/y0;->q(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
