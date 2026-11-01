.class public final Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;

    invoke-direct {v0}, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;->a:Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/datastore/core/s;Lj1/b;Ljava/util/List;Lkotlinx/coroutines/n0;)Landroidx/datastore/core/f;
    .locals 2

    const-string v0, "storage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "migrations"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/datastore/preferences/core/PreferenceDataStore;

    sget-object v1, Landroidx/datastore/core/g;->a:Landroidx/datastore/core/g;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroidx/datastore/core/g;->a(Landroidx/datastore/core/s;Lj1/b;Ljava/util/List;Lkotlinx/coroutines/n0;)Landroidx/datastore/core/f;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/datastore/preferences/core/PreferenceDataStore;-><init>(Landroidx/datastore/core/f;)V

    return-object v0
.end method

.method public final b(Lj1/b;Ljava/util/List;Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/f;
    .locals 8

    const-string v0, "migrations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "produceFile"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/datastore/core/okio/OkioStorage;

    sget-object v2, Lokio/FileSystem;->SYSTEM:Lokio/FileSystem;

    sget-object v3, Landroidx/datastore/preferences/core/f;->a:Landroidx/datastore/preferences/core/f;

    new-instance v5, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory$create$delegate$1;

    invoke-direct {v5, p4}, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory$create$delegate$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroidx/datastore/core/okio/OkioStorage;-><init>(Lokio/FileSystem;Landroidx/datastore/core/okio/b;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/datastore/preferences/core/PreferenceDataStoreFactory;->a(Landroidx/datastore/core/s;Lj1/b;Ljava/util/List;Lkotlinx/coroutines/n0;)Landroidx/datastore/core/f;

    move-result-object p1

    new-instance p2, Landroidx/datastore/preferences/core/PreferenceDataStore;

    invoke-direct {p2, p1}, Landroidx/datastore/preferences/core/PreferenceDataStore;-><init>(Landroidx/datastore/core/f;)V

    return-object p2
.end method
