.class public abstract Lf00/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lf00/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lf00/b;

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v2

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v4

    invoke-static {}, Lkotlin/collections/MapsKt;->h()Ljava/util/Map;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lf00/b;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    sput-object v6, Lf00/f;->a:Lf00/c;

    return-void
.end method

.method public static final a()Lf00/c;
    .locals 1

    sget-object v0, Lf00/f;->a:Lf00/c;

    return-object v0
.end method
