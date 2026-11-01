.class public final Lu/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# instance fields
.field private final a:Lu/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lu/f;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [Lu/u;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v3, Lu/y;

    invoke-direct {v3, p0}, Lu/y;-><init>(Lu/i;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lu/g;

    invoke-direct {v0, p1, v1}, Lu/g;-><init>(Lu/f;[Lu/u;)V

    iput-object v0, p0, Lu/i;->a:Lu/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1

    iget-object v0, p0, Lu/i;->a:Lu/g;

    invoke-virtual {v0}, Lu/g;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lu/i;->a:Lu/g;

    invoke-virtual {v0, p1, p2}, Lu/g;->n(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lu/i;->a:Lu/g;

    invoke-virtual {v0}, Lu/e;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lu/i;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lu/i;->a:Lu/g;

    invoke-virtual {v0}, Lu/g;->remove()V

    return-void
.end method
