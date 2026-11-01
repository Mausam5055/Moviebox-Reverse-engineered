.class public final Landroidx/work/impl/model/z1;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/work/impl/model/v1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/z1$b;
    }
.end annotation


# static fields
.field public static final c:Landroidx/work/impl/model/z1$b;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/impl/model/z1$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/impl/model/z1$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/impl/model/z1;->c:Landroidx/work/impl/model/z1$b;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/z1;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Landroidx/work/impl/model/z1$a;

    invoke-direct {p1}, Landroidx/work/impl/model/z1$a;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/z1;->b:Landroidx/room/g;

    return-void
.end method

.method public static synthetic e(Landroidx/work/impl/model/z1;Landroidx/work/impl/model/t1;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/z1;->j(Landroidx/work/impl/model/z1;Landroidx/work/impl/model/t1;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/z1;->i(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/z1;->h(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final h(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;
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

.method private static final i(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Ljava/util/List;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, Lz3/e;->j(ILjava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

.method private static final j(Landroidx/work/impl/model/z1;Landroidx/work/impl/model/t1;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/model/z1;->b:Landroidx/room/g;

    invoke-virtual {p0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/z1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/w1;

    const-string v2, "SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/w1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/z1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/y1;

    const-string v2, "DELETE FROM worktag WHERE work_spec_id=?"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/y1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public c(Landroidx/work/impl/model/t1;)V
    .locals 3

    const-string v0, "workTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/z1;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/x1;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/model/x1;-><init>(Landroidx/work/impl/model/z1;Landroidx/work/impl/model/t1;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public synthetic d(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/u1;->a(Landroidx/work/impl/model/v1;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
