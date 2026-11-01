.class abstract synthetic Landroidx/room/util/i;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/collection/a;ZLkotlin/jvm/functions/Function1;)V
    .locals 8

    const-string v0, "map"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fetchBlock"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/collection/a;

    const/16 v1, 0x3e7

    invoke-direct {v0, v1}, Landroidx/collection/a;-><init>(I)V

    invoke-virtual {p0}, Landroidx/collection/x0;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_3

    if-eqz p1, :cond_1

    invoke-virtual {p0, v4}, Landroidx/collection/x0;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v4}, Landroidx/collection/x0;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Landroidx/collection/x0;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v1, :cond_0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, Landroidx/collection/a;->putAll(Ljava/util/Map;)V

    :cond_2
    invoke-virtual {v0}, Landroidx/collection/x0;->clear()V

    move v5, v3

    goto :goto_0

    :cond_3
    if-lez v5, :cond_4

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_4

    invoke-virtual {p0, v0}, Landroidx/collection/a;->putAll(Ljava/util/Map;)V

    :cond_4
    return-void
.end method
