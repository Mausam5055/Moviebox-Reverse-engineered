.class public final Lu/l;
.super Lkotlin/collections/AbstractMutableCollection;

# interfaces
.implements Ljava/util/Collection;
.implements Lkotlin/jvm/internal/markers/KMutableCollection;


# instance fields
.field private final a:Lu/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lu/f;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/AbstractMutableCollection;-><init>()V

    iput-object p1, p0, Lu/l;->a:Lu/f;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lu/l;->a:Lu/f;

    invoke-virtual {v0}, Lkotlin/collections/AbstractMutableMap;->size()I

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lu/l;->a:Lu/f;

    invoke-virtual {v0}, Lu/f;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lu/l;->a:Lu/f;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lu/m;

    iget-object v1, p0, Lu/l;->a:Lu/f;

    invoke-direct {v0, v1}, Lu/m;-><init>(Lu/f;)V

    return-object v0
.end method
