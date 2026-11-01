.class public Lcom/google/firebase/remoteconfig/internal/m;
.super Ljava/lang/Object;


# static fields
.field public static final e:Ljava/nio/charset/Charset;

.field static final f:Ljava/util/regex/Pattern;

.field static final g:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/firebase/remoteconfig/internal/e;

.field private final d:Lcom/google/firebase/remoteconfig/internal/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/m;->e:Ljava/nio/charset/Charset;

    const-string v0, "^(1|true|t|yes|y|on)$"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/m;->f:Ljava/util/regex/Pattern;

    const-string v0, "^(0|false|f|no|n|off|)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/m;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/remoteconfig/internal/e;Lcom/google/firebase/remoteconfig/internal/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->a:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/m;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/m;->d:Lcom/google/firebase/remoteconfig/internal/e;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/remoteconfig/internal/m;->n(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->a:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/util/BiConsumer;

    iget-object v3, p0, Lcom/google/firebase/remoteconfig/internal/m;->b:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/firebase/remoteconfig/internal/l;

    invoke-direct {v4, v2, p1, p2}, Lcom/google/firebase/remoteconfig/internal/l;-><init>(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/e;->f()Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object p0

    return-object p0
.end method

.method private static f(Lcom/google/firebase/remoteconfig/internal/e;)Ljava/util/Set;
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Lcom/google/firebase/remoteconfig/internal/m;->e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/f;->g()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static h(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)Ljava/util/TreeSet;
    .locals 3

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/f;->g()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static j(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    invoke-static {p0}, Lcom/google/firebase/remoteconfig/internal/m;->e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/f;->g()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static l(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/firebase/remoteconfig/internal/m;->e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/f;->g()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method private static synthetic n(Lcom/google/android/gms/common/util/BiConsumer;Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/common/util/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "No value of type \'%s\' exists for parameter key \'%s\'."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FirebaseRemoteConfig"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/common/util/BiConsumer;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->a:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d()Ljava/util/Map;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/m;->f(Lcom/google/firebase/remoteconfig/internal/e;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->d:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/m;->f(Lcom/google/firebase/remoteconfig/internal/e;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/google/firebase/remoteconfig/internal/m;->m(Ljava/lang/String;)Lyc/k;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public g(Ljava/lang/String;)Ljava/util/Set;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/m;->e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1, v1}, Lcom/google/firebase/remoteconfig/internal/m;->h(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->d:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/m;->e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p1, v1}, Lcom/google/firebase/remoteconfig/internal/m;->h(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)Ljava/util/TreeSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-object v0
.end method

.method public i(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/m;->j(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/m;->e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/remoteconfig/internal/m;->c(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->d:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/m;->j(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    const-string v0, "Long"

    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/m;->o(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/m;->l(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/m;->e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/remoteconfig/internal/m;->c(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->d:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/m;->l(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    const-string v0, "String"

    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/m;->o(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    return-object p1
.end method

.method public m(Ljava/lang/String;)Lyc/k;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/m;->l(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/m;->c:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-static {v1}, Lcom/google/firebase/remoteconfig/internal/m;->e(Lcom/google/firebase/remoteconfig/internal/e;)Lcom/google/firebase/remoteconfig/internal/f;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/remoteconfig/internal/m;->c(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/f;)V

    new-instance p1, Lcom/google/firebase/remoteconfig/internal/t;

    const/4 v1, 0x2

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/remoteconfig/internal/t;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/m;->d:Lcom/google/firebase/remoteconfig/internal/e;

    invoke-static {v0, p1}, Lcom/google/firebase/remoteconfig/internal/m;->l(Lcom/google/firebase/remoteconfig/internal/e;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/google/firebase/remoteconfig/internal/t;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/remoteconfig/internal/t;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_1
    const-string v0, "FirebaseRemoteConfigValue"

    invoke-static {p1, v0}, Lcom/google/firebase/remoteconfig/internal/m;->o(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/firebase/remoteconfig/internal/t;

    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/firebase/remoteconfig/internal/t;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method
