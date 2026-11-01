.class public abstract Landroidx/room/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/a$a;,
        Landroidx/room/a$b;,
        Landroidx/room/a$c;
    }
.end annotation


# static fields
.field public static final c:Landroidx/room/a$a;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/room/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/room/a;->c:Landroidx/room/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final B(Lz3/b;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/room/a;->l(Lz3/b;)V

    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/d0;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/room/c0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Landroidx/room/a;Lz3/b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/room/a;->g(Lz3/b;)V

    return-void
.end method

.method public static final synthetic b(Landroidx/room/a;Lz3/b;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/room/a;->i(Lz3/b;)V

    return-void
.end method

.method public static final synthetic c(Landroidx/room/a;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/room/a;->a:Z

    return p0
.end method

.method public static final synthetic d(Landroidx/room/a;)Z
    .locals 0

    iget-boolean p0, p0, Landroidx/room/a;->b:Z

    return p0
.end method

.method public static final synthetic e(Landroidx/room/a;Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/room/a;->b:Z

    return-void
.end method

.method private final f(Lz3/b;)V
    .locals 4

    invoke-direct {p0, p1}, Landroidx/room/a;->t(Lz3/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"

    invoke-interface {p1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lz3/e;->A0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {p1, v1}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/room/d0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/room/d0;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Room cannot verify the data integrity. Looks like you\'ve changed schema but forgot to update the version number. You can simply fix this by increasing the version number. Expected identity hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/d0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const-string v0, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    :try_start_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/d0;->j(Lz3/b;)Landroidx/room/d0$a;

    move-result-object v0

    iget-boolean v1, v0, Landroidx/room/d0$a;->a:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/d0;->h(Lz3/b;)V

    invoke-direct {p0, p1}, Landroidx/room/a;->B(Lz3/b;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pre-packaged database has an invalid schema: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/room/d0$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_2
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lkotlin/Unit;

    const-string v1, "END TRANSACTION"

    invoke-static {p1, v1}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    :cond_4
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_5
    :goto_4
    return-void

    :cond_6
    const-string v0, "ROLLBACK TRANSACTION"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    throw v1
.end method

.method private final g(Lz3/b;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/room/a;->k(Lz3/b;)V

    invoke-direct {p0, p1}, Landroidx/room/a;->h(Lz3/b;)V

    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/d0;->g(Lz3/b;)V

    return-void
.end method

.method private final h(Lz3/b;)V
    .locals 5

    const-string v0, "PRAGMA busy_timeout"

    invoke-interface {p1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lz3/e;->A0()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lz3/e;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    const-wide/16 v3, 0xbb8

    cmp-long v0, v1, v3

    if-gez v0, :cond_0

    const-string v0, "PRAGMA busy_timeout = 3000"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final i(Lz3/b;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/room/a;->j(Lz3/b;)V

    invoke-direct {p0, p1}, Landroidx/room/a;->k(Lz3/b;)V

    invoke-direct {p0, p1}, Landroidx/room/a;->h(Lz3/b;)V

    const-string v0, "PRAGMA user_version"

    invoke-interface {p1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lz3/e;->A0()Z

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lz3/e;->getLong(I)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    long-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/d0;->e()I

    move-result v0

    if-eq v1, v0, :cond_3

    const-string v0, "BEGIN EXCLUSIVE TRANSACTION"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    :try_start_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/room/a;->x(Lz3/b;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/d0;->e()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Landroidx/room/a;->y(Lz3/b;II)V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRAGMA user_version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/d0;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlin/Unit;

    const-string v1, "END TRANSACTION"

    invoke-static {p1, v1}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    :cond_1
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    const-string v1, "ROLLBACK TRANSACTION"

    invoke-static {p1, v1}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_3
    invoke-virtual {p0, p1}, Landroidx/room/a;->z(Lz3/b;)V

    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final j(Lz3/b;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/room/a;->o()Landroidx/room/c;

    move-result-object v0

    iget-object v0, v0, Landroidx/room/c;->g:Landroidx/room/RoomDatabase$JournalMode;

    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v0, v1, :cond_0

    const-string v0, "PRAGMA journal_mode = WAL"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "PRAGMA journal_mode = TRUNCATE"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final k(Lz3/b;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/room/a;->o()Landroidx/room/c;

    move-result-object v0

    iget-object v0, v0, Landroidx/room/c;->g:Landroidx/room/RoomDatabase$JournalMode;

    sget-object v1, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v0, v1, :cond_0

    const-string v0, "PRAGMA synchronous = NORMAL"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "PRAGMA synchronous = FULL"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final l(Lz3/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-static {p1, v0}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    return-void
.end method

.method private final m(Lz3/b;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/room/a;->o()Landroidx/room/c;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/room/c;->t:Z

    if-eqz v0, :cond_4

    const-string v0, "SELECT name, type FROM sqlite_master WHERE type = \'table\' OR type = \'view\'"

    invoke-interface {p1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->c()Ljava/util/List;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Lz3/e;->A0()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sqlite_"

    const/4 v6, 0x2

    invoke-static {v4, v5, v2, v6, v3}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android_metadata"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lz3/e;->n0(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "view"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v3}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP VIEW IF EXISTS "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lz3/a;->a(Lz3/b;Ljava/lang/String;)V

    goto :goto_1

    :goto_2
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/d0;->b(Lz3/b;)V

    :cond_5
    return-void
.end method

.method private final s(Lz3/b;)Z
    .locals 6

    const-string v0, "SELECT count(*) FROM sqlite_master WHERE name != \'android_metadata\'"

    invoke-interface {p1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lz3/e;->A0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return v1

    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final t(Lz3/b;)Z
    .locals 6

    const-string v0, "SELECT 1 FROM sqlite_master WHERE type = \'table\' AND name = \'room_master_table\'"

    invoke-interface {p1, v0}, Lz3/b;->D0(Ljava/lang/String;)Lz3/e;

    move-result-object p1

    :try_start_0
    invoke-interface {p1}, Lz3/e;->A0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Lz3/e;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return v1

    :goto_1
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/jdk7/AutoCloseableKt;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final u(Lz3/b;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/room/a;->n()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/RoomDatabase$b;

    invoke-virtual {v1, p1}, Landroidx/room/RoomDatabase$b;->b(Lz3/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final v(Lz3/b;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/room/a;->n()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/RoomDatabase$b;

    invoke-virtual {v1, p1}, Landroidx/room/RoomDatabase$b;->d(Lz3/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final w(Lz3/b;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/room/a;->n()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/RoomDatabase$b;

    invoke-virtual {v1, p1}, Landroidx/room/RoomDatabase$b;->f(Lz3/b;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected abstract n()Ljava/util/List;
.end method

.method protected abstract o()Landroidx/room/c;
.end method

.method protected final p(Landroidx/room/RoomDatabase$JournalMode;)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/room/a$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get max number of reader for journal mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return v1
.end method

.method protected final q(Landroidx/room/RoomDatabase$JournalMode;)I
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/room/a$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t get max number of writers for journal mode \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return v1
.end method

.method protected abstract r()Landroidx/room/d0;
.end method

.method protected final x(Lz3/b;)V
    .locals 3

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/room/a;->s(Lz3/b;)Z

    move-result v0

    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/room/d0;->a(Lz3/b;)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/d0;->j(Lz3/b;)Landroidx/room/d0$a;

    move-result-object v0

    iget-boolean v1, v0, Landroidx/room/d0$a;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pre-packaged database has an invalid schema: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroidx/room/d0$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroidx/room/a;->B(Lz3/b;)V

    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/d0;->f(Lz3/b;)V

    invoke-direct {p0, p1}, Landroidx/room/a;->u(Lz3/b;)V

    return-void
.end method

.method protected final y(Lz3/b;II)V
    .locals 2

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/room/a;->o()Landroidx/room/c;

    move-result-object v0

    iget-object v0, v0, Landroidx/room/c;->d:Landroidx/room/RoomDatabase$d;

    invoke-static {v0, p2, p3}, Landroidx/room/util/g;->b(Landroidx/room/RoomDatabase$d;II)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/room/d0;->i(Lz3/b;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ly3/c;

    invoke-virtual {p3, p1}, Ly3/c;->b(Lz3/b;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/room/d0;->j(Lz3/b;)Landroidx/room/d0$a;

    move-result-object p2

    iget-boolean p3, p2, Landroidx/room/d0$a;->a:Z

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/room/d0;->h(Lz3/b;)V

    invoke-direct {p0, p1}, Landroidx/room/a;->B(Lz3/b;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Migration didn\'t properly handle: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroidx/room/d0$a;->b:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p0}, Landroidx/room/a;->o()Landroidx/room/c;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroidx/room/util/g;->d(Landroidx/room/c;II)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Landroidx/room/a;->m(Lz3/b;)V

    invoke-direct {p0, p1}, Landroidx/room/a;->v(Lz3/b;)V

    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/room/d0;->a(Lz3/b;)V

    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A migration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* functions."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final z(Lz3/b;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/room/a;->f(Lz3/b;)V

    invoke-virtual {p0}, Landroidx/room/a;->r()Landroidx/room/d0;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/room/d0;->g(Lz3/b;)V

    invoke-direct {p0, p1}, Landroidx/room/a;->w(Lz3/b;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/room/a;->a:Z

    return-void
.end method
