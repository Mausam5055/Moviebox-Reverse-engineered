.class public final Landroidx/work/impl/model/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/work/impl/model/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/v$b;
    }
.end annotation


# static fields
.field public static final c:Landroidx/work/impl/model/v$b;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/impl/model/v$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/impl/model/v$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/impl/model/v;->c:Landroidx/work/impl/model/v$b;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/v;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Landroidx/work/impl/model/v$a;

    invoke-direct {p1}, Landroidx/work/impl/model/v$a;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/v;->b:Landroidx/room/g;

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/v;->m(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/model/v;->k(Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/String;Ljava/lang/String;ILz3/b;)Landroidx/work/impl/model/o;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/work/impl/model/v;->j(Ljava/lang/String;Ljava/lang/String;ILz3/b;)Landroidx/work/impl/model/o;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroidx/work/impl/model/v;Landroidx/work/impl/model/o;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/v;->l(Landroidx/work/impl/model/v;Landroidx/work/impl/model/o;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final j(Ljava/lang/String;Ljava/lang/String;ILz3/b;)Landroidx/work/impl/model/o;
    .locals 2

    const-string v0, "_connection"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 p3, 0x1

    :try_start_0
    invoke-interface {p0, p3, p1}, Lz3/e;->j(ILjava/lang/String;)V

    const/4 p1, 0x2

    int-to-long p2, p2

    invoke-interface {p0, p1, p2, p3}, Lz3/e;->c(IJ)V

    const-string p1, "work_spec_id"

    invoke-static {p0, p1}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result p1

    const-string p2, "generation"

    invoke-static {p0, p2}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result p2

    const-string p3, "system_id"

    invoke-static {p0, p3}, Landroidx/room/util/k;->d(Lz3/e;Ljava/lang/String;)I

    move-result p3

    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2}, Lz3/e;->getLong(I)J

    move-result-wide v0

    long-to-int p2, v0

    invoke-interface {p0, p3}, Lz3/e;->getLong(I)J

    move-result-wide v0

    long-to-int p3, v0

    new-instance v0, Landroidx/work/impl/model/o;

    invoke-direct {v0, p1, p2, p3}, Landroidx/work/impl/model/o;-><init>(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lz3/e;->close()V

    return-object v0

    :goto_1
    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method private static final k(Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Lz3/e;->close()V

    return-object p1

    :goto_1
    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method private static final l(Landroidx/work/impl/model/v;Landroidx/work/impl/model/o;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/model/v;->b:Landroidx/room/g;

    invoke-virtual {p0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final m(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, Lz3/e;->j(ILjava/lang/String;)V

    invoke-interface {p0}, Lz3/e;->A0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Lz3/e;->close()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method


# virtual methods
.method public synthetic a(Landroidx/work/impl/model/x;)Landroidx/work/impl/model/o;
    .locals 0

    invoke-static {p0, p1}, Landroidx/work/impl/model/p;->a(Landroidx/work/impl/model/q;Landroidx/work/impl/model/x;)Landroidx/work/impl/model/o;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;I)Landroidx/work/impl/model/o;
    .locals 3

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/v;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/t;

    const-string v2, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    invoke-direct {v1, v2, p1, p2}, Landroidx/work/impl/model/t;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/impl/model/o;

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 4

    iget-object v0, p0, Landroidx/work/impl/model/v;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/s;

    const-string v2, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    invoke-direct {v1, v2}, Landroidx/work/impl/model/s;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public d(Landroidx/work/impl/model/o;)V
    .locals 3

    const-string v0, "systemIdInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/v;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/r;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/model/r;-><init>(Landroidx/work/impl/model/v;Landroidx/work/impl/model/o;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 3

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/v;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/u;

    const-string v2, "DELETE FROM SystemIdInfo where work_spec_id=?"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method
