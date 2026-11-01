.class public abstract Lcom/google/common/collect/Multimaps;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$CustomListMultimap;,
        Lcom/google/common/collect/Multimaps$CustomSetMultimap;,
        Lcom/google/common/collect/Multimaps$a;,
        Lcom/google/common/collect/Multimaps$b;,
        Lcom/google/common/collect/Multimaps$c;
    }
.end annotation


# direct methods
.method static a(Lcom/google/common/collect/j3;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/j3;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/common/collect/j3;

    invoke-interface {p0}, Lcom/google/common/collect/j3;->asMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Lcom/google/common/collect/j3;->asMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/util/Map;Lcom/google/common/base/q;)Lcom/google/common/collect/i3;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Multimaps$CustomListMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$CustomListMultimap;-><init>(Ljava/util/Map;Lcom/google/common/base/q;)V

    return-object v0
.end method

.method public static c(Ljava/util/Map;Lcom/google/common/base/q;)Lcom/google/common/collect/x3;
    .locals 1

    new-instance v0, Lcom/google/common/collect/Multimaps$CustomSetMultimap;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$CustomSetMultimap;-><init>(Ljava/util/Map;Lcom/google/common/base/q;)V

    return-object v0
.end method
