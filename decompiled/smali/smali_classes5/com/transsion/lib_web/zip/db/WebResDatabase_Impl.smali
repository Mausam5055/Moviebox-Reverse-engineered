.class public final Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;
.super Lcom/transsion/lib_web/zip/db/WebResDatabase;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ)\u0010\r\u001a\u001c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b0\u000c0\nH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\u0011\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00100\u000b0\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J1\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u000c2\u001a\u0010\u0013\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00100\u000b\u0012\u0004\u0012\u00020\u00100\nH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;",
        "Lcom/transsion/lib_web/zip/db/WebResDatabase;",
        "<init>",
        "()V",
        "Landroidx/room/d0;",
        "j0",
        "()Landroidx/room/d0;",
        "Landroidx/room/InvalidationTracker;",
        "q",
        "()Landroidx/room/InvalidationTracker;",
        "",
        "Lkotlin/reflect/KClass;",
        "",
        "D",
        "()Ljava/util/Map;",
        "",
        "Ly3/b;",
        "B",
        "()Ljava/util/Set;",
        "autoMigrationSpecs",
        "Ly3/c;",
        "n",
        "(Ljava/util/Map;)Ljava/util/List;",
        "Lkotlin/Lazy;",
        "Lpm/a;",
        "r",
        "Lkotlin/Lazy;",
        "_webResDao",
        "lib_web_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final r:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/lib_web/zip/db/WebResDatabase;-><init>()V

    new-instance v0, Lpm/b;

    invoke-direct {v0, p0}, Lpm/b;-><init>(Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;->r:Lkotlin/Lazy;

    return-void
.end method

.method public static synthetic g0(Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;)Lcom/transsion/lib_web/zip/db/a;
    .locals 0

    invoke-static {p0}, Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;->h0(Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;)Lcom/transsion/lib_web/zip/db/a;

    move-result-object p0

    return-object p0
.end method

.method private static final h0(Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;)Lcom/transsion/lib_web/zip/db/a;
    .locals 1

    new-instance v0, Lcom/transsion/lib_web/zip/db/a;

    invoke-direct {v0, p0}, Lcom/transsion/lib_web/zip/db/a;-><init>(Landroidx/room/RoomDatabase;)V

    return-object v0
.end method

.method public static final synthetic i0(Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;Lz3/b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->Q(Lz3/b;)V

    return-void
.end method


# virtual methods
.method public B()Ljava/util/Set;
    .locals 1

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method protected D()Ljava/util/Map;
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-class v1, Lpm/a;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    sget-object v2, Lcom/transsion/lib_web/zip/db/a;->e:Lcom/transsion/lib_web/zip/db/a$d;

    invoke-virtual {v2}, Lcom/transsion/lib_web/zip/db/a$d;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected j0()Landroidx/room/d0;
    .locals 1

    new-instance v0, Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl$a;

    invoke-direct {v0, p0}, Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl$a;-><init>(Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;)V

    return-object v0
.end method

.method public n(Ljava/util/Map;)Ljava/util/List;
    .locals 1

    const-string v0, "autoMigrationSpecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method protected q()Landroidx/room/InvalidationTracker;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Landroidx/room/InvalidationTracker;

    const-string v3, "mb_web_res_db"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic r()Landroidx/room/e0;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/lib_web/zip/db/WebResDatabase_Impl;->j0()Landroidx/room/d0;

    move-result-object v0

    return-object v0
.end method
