.class public abstract Landroidx/datastore/core/okio/c;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lokio/Path;)Landroidx/datastore/core/k;
    .locals 1

    const-string v0, "path"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->normalized()Lokio/Path;

    move-result-object p0

    invoke-virtual {p0}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/datastore/core/l;->a(Ljava/lang/String;)Landroidx/datastore/core/k;

    move-result-object p0

    return-object p0
.end method
