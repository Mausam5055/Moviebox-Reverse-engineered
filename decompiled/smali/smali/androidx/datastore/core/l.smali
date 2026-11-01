.class public abstract Landroidx/datastore/core/l;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/String;)Landroidx/datastore/core/k;
    .locals 1

    const-string v0, "filePath"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/datastore/core/SingleProcessCoordinator;

    invoke-direct {v0, p0}, Landroidx/datastore/core/SingleProcessCoordinator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
