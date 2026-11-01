.class public final Landroidx/work/impl/model/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/work/impl/model/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/model/l$b;
    }
.end annotation


# static fields
.field public static final c:Landroidx/work/impl/model/l$b;


# instance fields
.field private final a:Landroidx/room/RoomDatabase;

.field private final b:Landroidx/room/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/work/impl/model/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/work/impl/model/l$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/work/impl/model/l;->c:Landroidx/work/impl/model/l$b;

    return-void
.end method

.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "__db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/l;->a:Landroidx/room/RoomDatabase;

    new-instance p1, Landroidx/work/impl/model/l$a;

    invoke-direct {p1}, Landroidx/work/impl/model/l$a;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/l;->b:Landroidx/room/g;

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Ljava/lang/Long;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/l;->d(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Landroidx/work/impl/model/l;Landroidx/work/impl/model/h;Lz3/b;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/work/impl/model/l;->e(Landroidx/work/impl/model/l;Landroidx/work/impl/model/h;Lz3/b;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Ljava/lang/String;Ljava/lang/String;Lz3/b;)Ljava/lang/Long;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, Lz3/e;->j(ILjava/lang/String;)V

    invoke-interface {p0}, Lz3/e;->A0()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lz3/e;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lz3/e;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Lz3/e;->close()V

    return-object p2

    :goto_1
    invoke-interface {p0}, Lz3/e;->close()V

    throw p1
.end method

.method private static final e(Landroidx/work/impl/model/l;Landroidx/work/impl/model/h;Lz3/b;)Lkotlin/Unit;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/model/l;->b:Landroidx/room/g;

    invoke-virtual {p0, p2, p1}, Landroidx/room/g;->d(Lz3/b;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/work/impl/model/h;)V
    .locals 3

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/l;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/j;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/model/j;-><init>(Landroidx/work/impl/model/l;Landroidx/work/impl/model/h;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    return-void
.end method

.method public getLongValue(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/model/l;->a:Landroidx/room/RoomDatabase;

    new-instance v1, Landroidx/work/impl/model/k;

    const-string v2, "SELECT long_value FROM Preference where `key`=?"

    invoke-direct {v1, v2, p1}, Landroidx/work/impl/model/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroidx/room/util/b;->d(Landroidx/room/RoomDatabase;ZZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method
