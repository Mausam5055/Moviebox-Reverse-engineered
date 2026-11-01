.class public final Lcom/transsion/moviedetail/preload/d;
.super Ljava/lang/Object;

# interfaces
.implements Lqm/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/os/Bundle;)Ljava/util/List;
    .locals 7

    const-string v0, "/movie/detail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_0

    const-string p1, "season"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    move-object v3, p1

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    if-eqz p2, :cond_1

    const-string p1, "id"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lcom/transsion/moviedetail/preload/b;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/moviedetail/preload/b;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lcom/transsion/moviedetail/preload/MovieDetailDownloadListLoader;

    invoke-direct {v1, p1}, Lcom/transsion/moviedetail/preload/MovieDetailDownloadListLoader;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;

    invoke-direct {v2, p1}, Lcom/transsion/moviedetail/preload/MovieDetailResourcesSeasonLoader;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array p1, p1, [Lqm/b;

    const/4 v3, 0x0

    aput-object p2, p1, v3

    const/4 p2, 0x1

    aput-object v1, p1, p2

    const/4 p2, 0x2

    aput-object v2, p1, p2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->h([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    const-string p2, "emptyList(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    if-nez p1, :cond_3

    const-string p1, "iPreloadList"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->z(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v0, p1

    :goto_2
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/movie/detail"

    return-object v0
.end method
