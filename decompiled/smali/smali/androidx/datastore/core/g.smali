.class public final Landroidx/datastore/core/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/datastore/core/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/datastore/core/g;

    invoke-direct {v0}, Landroidx/datastore/core/g;-><init>()V

    sput-object v0, Landroidx/datastore/core/g;->a:Landroidx/datastore/core/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/datastore/core/s;Lj1/b;Ljava/util/List;Lkotlinx/coroutines/n0;)Landroidx/datastore/core/f;
    .locals 1

    const-string v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "migrations"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lj1/a;

    invoke-direct {p2}, Lj1/a;-><init>()V

    :goto_0
    sget-object v0, Landroidx/datastore/core/DataMigrationInitializer;->a:Landroidx/datastore/core/DataMigrationInitializer$Companion;

    invoke-virtual {v0, p3}, Landroidx/datastore/core/DataMigrationInitializer$Companion;->b(Ljava/util/List;)Lkotlin/jvm/functions/Function2;

    move-result-object p3

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    new-instance v0, Landroidx/datastore/core/DataStoreImpl;

    invoke-direct {v0, p1, p3, p2, p4}, Landroidx/datastore/core/DataStoreImpl;-><init>(Landroidx/datastore/core/s;Ljava/util/List;Landroidx/datastore/core/c;Lkotlinx/coroutines/n0;)V

    return-object v0
.end method
