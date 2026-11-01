.class Lcom/google/firebase/heartbeatinfo/f;
.super Ljava/lang/Object;


# static fields
.field private static final b:Landroidx/datastore/preferences/core/c$a;

.field private static final c:Landroidx/datastore/preferences/core/c$a;

.field private static final d:Landroidx/datastore/preferences/core/c$a;


# instance fields
.field private final a:Lcom/google/firebase/datastorage/JavaDataStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "fire-global"

    invoke-static {v0}, Landroidx/datastore/preferences/core/e;->f(Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/heartbeatinfo/f;->b:Landroidx/datastore/preferences/core/c$a;

    const-string v0, "fire-count"

    invoke-static {v0}, Landroidx/datastore/preferences/core/e;->f(Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/heartbeatinfo/f;->c:Landroidx/datastore/preferences/core/c$a;

    const-string v0, "last-used-date"

    invoke-static {v0}, Landroidx/datastore/preferences/core/e;->g(Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/heartbeatinfo/f;->d:Landroidx/datastore/preferences/core/c$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/firebase/datastorage/JavaDataStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirebaseHeartBeat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/datastorage/JavaDataStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/firebase/heartbeatinfo/f;->a:Lcom/google/firebase/datastorage/JavaDataStorage;

    return-void
.end method

.method public static synthetic a(JLandroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/heartbeatinfo/f;->n(JLandroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/heartbeatinfo/f;Ljava/lang/String;Ljava/lang/String;Landroidx/datastore/preferences/core/c$a;Landroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/heartbeatinfo/f;->m(Ljava/lang/String;Ljava/lang/String;Landroidx/datastore/preferences/core/c$a;Landroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/firebase/heartbeatinfo/f;Landroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/heartbeatinfo/f;->k(Landroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/firebase/heartbeatinfo/f;Ljava/lang/String;Landroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/heartbeatinfo/f;->l(Ljava/lang/String;Landroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized e(Landroidx/datastore/preferences/core/MutablePreferences;)J
    .locals 11

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/firebase/heartbeatinfo/f;->c:Landroidx/datastore/preferences/core/c$a;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/firebase/datastorage/c;->a(Landroidx/datastore/preferences/core/c;Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, ""

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Landroidx/datastore/preferences/core/MutablePreferences;->a()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/util/Set;

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/datastore/preferences/core/c$a;

    invoke-virtual {v2}, Landroidx/datastore/preferences/core/c$a;->a()Ljava/lang/String;

    move-result-object v2

    move-object v3, v7

    move-object v5, v9

    goto :goto_0

    :cond_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {v2}, Landroidx/datastore/preferences/core/e;->h(Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object v2

    invoke-virtual {p1, v2, v4}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V

    sget-object v2, Lcom/google/firebase/heartbeatinfo/f;->c:Landroidx/datastore/preferences/core/c$a;

    const-wide/16 v3, 0x1

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized h(J)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lz4/e0;->a(Ljava/util/Date;)Ljava/time/Instant;

    move-result-object p1

    invoke-static {}, Lgc/i;->a()Ljava/time/ZoneOffset;

    move-result-object p2

    invoke-static {p1, p2}, Lgc/j;->a(Ljava/time/Instant;Ljava/time/ZoneOffset;)Ljava/time/OffsetDateTime;

    move-result-object p1

    invoke-static {p1}, Lgc/k;->a(Ljava/time/OffsetDateTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-static {}, Lgc/l;->a()Ljava/time/format/DateTimeFormatter;

    move-result-object p2

    invoke-static {p1, p2}, Lgc/m;->a(Ljava/time/LocalDateTime;Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized i(Landroidx/datastore/preferences/core/MutablePreferences;Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroidx/datastore/preferences/core/MutablePreferences;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/datastore/preferences/core/c$a;

    invoke-virtual {p1}, Landroidx/datastore/preferences/core/c$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/datastore/preferences/core/e;->h(Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_2
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private synthetic k(Landroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;
    .locals 9

    invoke-virtual {p1}, Landroidx/datastore/preferences/core/MutablePreferences;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/util/Set;

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/datastore/preferences/core/c$a;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/google/firebase/heartbeatinfo/f;->h(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v7}, Lgc/n;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v6}, Landroidx/datastore/preferences/core/MutablePreferences;->h(Landroidx/datastore/preferences/core/c$a;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    sget-object v0, Lcom/google/firebase/heartbeatinfo/f;->c:Landroidx/datastore/preferences/core/c$a;

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->h(Landroidx/datastore/preferences/core/c$a;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/google/firebase/heartbeatinfo/f;->c:Landroidx/datastore/preferences/core/c$a;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V

    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic l(Ljava/lang/String;Landroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;
    .locals 1

    sget-object v0, Lcom/google/firebase/heartbeatinfo/f;->d:Landroidx/datastore/preferences/core/c$a;

    invoke-virtual {p2, v0, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V

    invoke-direct {p0, p2, p1}, Lcom/google/firebase/heartbeatinfo/f;->p(Landroidx/datastore/preferences/core/MutablePreferences;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic m(Ljava/lang/String;Ljava/lang/String;Landroidx/datastore/preferences/core/c$a;Landroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;
    .locals 11

    sget-object v0, Lcom/google/firebase/heartbeatinfo/f;->d:Landroidx/datastore/preferences/core/c$a;

    const-string v1, ""

    invoke-static {p4, v0, v1}, Lcom/google/firebase/datastorage/c;->a(Landroidx/datastore/preferences/core/c;Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0, p4, p1}, Lcom/google/firebase/heartbeatinfo/f;->i(Landroidx/datastore/preferences/core/MutablePreferences;Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroidx/datastore/preferences/core/c$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object v2

    :cond_1
    invoke-direct {p0, p4, p3, p1}, Lcom/google/firebase/heartbeatinfo/f;->u(Landroidx/datastore/preferences/core/MutablePreferences;Landroidx/datastore/preferences/core/c$a;Ljava/lang/String;)V

    return-object v2

    :cond_2
    sget-object p2, Lcom/google/firebase/heartbeatinfo/f;->c:Landroidx/datastore/preferences/core/c$a;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p4, p2, v1}, Lcom/google/firebase/datastorage/c;->a(Landroidx/datastore/preferences/core/c;Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long v7, v3, v5

    const-wide/16 v9, 0x1e

    cmp-long v1, v7, v9

    if-nez v1, :cond_3

    invoke-direct {p0, p4}, Lcom/google/firebase/heartbeatinfo/f;->e(Landroidx/datastore/preferences/core/MutablePreferences;)J

    move-result-wide v3

    :cond_3
    new-instance v1, Ljava/util/HashSet;

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-static {p4, p3, v7}, Lcom/google/firebase/datastorage/c;->a(Landroidx/datastore/preferences/core/c;Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v1, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-long/2addr v3, v5

    invoke-virtual {p4, p3, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V

    invoke-virtual {p4, v0, p1}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V

    return-object v2
.end method

.method private static synthetic n(JLandroidx/datastore/preferences/core/MutablePreferences;)Lkotlin/Unit;
    .locals 1

    sget-object v0, Lcom/google/firebase/heartbeatinfo/f;->b:Landroidx/datastore/preferences/core/c$a;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private declared-synchronized p(Landroidx/datastore/preferences/core/MutablePreferences;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/heartbeatinfo/f;->i(Landroidx/datastore/preferences/core/MutablePreferences;Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1, v0, v2}, Lcom/google/firebase/datastorage/c;->a(Landroidx/datastore/preferences/core/c;Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->h(Landroidx/datastore/preferences/core/c$a;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized u(Landroidx/datastore/preferences/core/MutablePreferences;Landroidx/datastore/preferences/core/c$a;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/google/firebase/heartbeatinfo/f;->p(Landroidx/datastore/preferences/core/MutablePreferences;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1, p2, v1}, Lcom/google/firebase/datastorage/c;->a(Landroidx/datastore/preferences/core/c;Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p2, v0}, Landroidx/datastore/preferences/core/MutablePreferences;->i(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/f;->a:Lcom/google/firebase/datastorage/JavaDataStorage;

    new-instance v1, Lcom/google/firebase/heartbeatinfo/d;

    invoke-direct {v1, p0}, Lcom/google/firebase/heartbeatinfo/d;-><init>(Lcom/google/firebase/heartbeatinfo/f;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/datastorage/JavaDataStorage;->g(Lkotlin/jvm/functions/Function1;)Landroidx/datastore/preferences/core/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized g()Ljava/util/List;
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/heartbeatinfo/f;->h(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/heartbeatinfo/f;->a:Lcom/google/firebase/datastorage/JavaDataStorage;

    invoke-virtual {v2}, Lcom/google/firebase/datastorage/JavaDataStorage;->h()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/util/Set;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/datastore/preferences/core/c$a;

    invoke-virtual {v3}, Landroidx/datastore/preferences/core/c$a;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3, v5}, Lgc/p;->a(Ljava/lang/String;Ljava/util/List;)Lgc/p;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/heartbeatinfo/f;->t(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized j(JJ)Z
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/heartbeatinfo/f;->h(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p4}, Lcom/google/firebase/heartbeatinfo/f;->h(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized o()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/heartbeatinfo/f;->h(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/heartbeatinfo/f;->a:Lcom/google/firebase/datastorage/JavaDataStorage;

    new-instance v2, Lcom/google/firebase/heartbeatinfo/e;

    invoke-direct {v2, p0, v0}, Lcom/google/firebase/heartbeatinfo/e;-><init>(Lcom/google/firebase/heartbeatinfo/f;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/firebase/datastorage/JavaDataStorage;->g(Lkotlin/jvm/functions/Function1;)Landroidx/datastore/preferences/core/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized q(J)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/firebase/heartbeatinfo/f;->b:Landroidx/datastore/preferences/core/c$a;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/heartbeatinfo/f;->r(Landroidx/datastore/preferences/core/c$a;J)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized r(Landroidx/datastore/preferences/core/c$a;J)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/f;->a:Lcom/google/firebase/datastorage/JavaDataStorage;

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/datastorage/JavaDataStorage;->j(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/google/firebase/heartbeatinfo/f;->j(JJ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/f;->a:Lcom/google/firebase/datastorage/JavaDataStorage;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/datastorage/JavaDataStorage;->k(Landroidx/datastore/preferences/core/c$a;Ljava/lang/Object;)Landroidx/datastore/preferences/core/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method declared-synchronized s(JLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/heartbeatinfo/f;->h(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Landroidx/datastore/preferences/core/e;->h(Ljava/lang/String;)Landroidx/datastore/preferences/core/c$a;

    move-result-object p2

    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/f;->a:Lcom/google/firebase/datastorage/JavaDataStorage;

    new-instance v1, Lcom/google/firebase/heartbeatinfo/c;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/google/firebase/heartbeatinfo/c;-><init>(Lcom/google/firebase/heartbeatinfo/f;Ljava/lang/String;Ljava/lang/String;Landroidx/datastore/preferences/core/c$a;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/datastorage/JavaDataStorage;->g(Lkotlin/jvm/functions/Function1;)Landroidx/datastore/preferences/core/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized t(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/heartbeatinfo/f;->a:Lcom/google/firebase/datastorage/JavaDataStorage;

    new-instance v1, Lcom/google/firebase/heartbeatinfo/b;

    invoke-direct {v1, p1, p2}, Lcom/google/firebase/heartbeatinfo/b;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/datastorage/JavaDataStorage;->g(Lkotlin/jvm/functions/Function1;)Landroidx/datastore/preferences/core/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
