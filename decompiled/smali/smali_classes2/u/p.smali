.class public final Lu/p;
.super Lkotlin/collections/AbstractSet;

# interfaces
.implements Lt/e;


# instance fields
.field private final b:Lu/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lu/d;)V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/AbstractSet;-><init>()V

    iput-object p1, p0, Lu/p;->b:Lu/d;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lu/p;->b:Lu/d;

    invoke-virtual {v0, p1}, Lu/d;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lu/p;->b:Lu/d;

    invoke-virtual {v0}, Lkotlin/collections/AbstractMap;->size()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lu/q;

    iget-object v1, p0, Lu/p;->b:Lu/d;

    invoke-virtual {v1}, Lu/d;->u()Lu/t;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/q;-><init>(Lu/t;)V

    return-object v0
.end method
