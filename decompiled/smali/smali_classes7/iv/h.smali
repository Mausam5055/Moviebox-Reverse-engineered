.class public final Liv/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/impl/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liv/h$a;
    }
.end annotation


# static fields
.field public static final s:Liv/h$a;

.field private static final t:Ljava/lang/String;

.field private static volatile u:Lcom/transsion/transfer/impl/h;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Lcom/transsion/transfer/impl/g;

.field private e:Z

.field private final f:Landroid/os/Handler;

.field private g:Liv/h$d;

.field private final h:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

.field private final i:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final j:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final k:Lkotlin/Lazy;

.field private final l:Lcom/transsion/transfer/impl/PingPongHelper$a;

.field private final m:Ljava/lang/Runnable;

.field private final n:Ljava/util/concurrent/ConcurrentHashMap;

.field private final o:Ljava/util/concurrent/ConcurrentHashMap;

.field private final p:Ljava/util/concurrent/ConcurrentHashMap;

.field private final q:Ljava/util/concurrent/ConcurrentHashMap;

.field private final r:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Liv/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Liv/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Liv/h;->s:Liv/h$a;

    const-class v0, Liv/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liv/h;->t:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liv/h;->a:Landroid/content/Context;

    const-string p1, ""

    iput-object p1, p0, Liv/h;->c:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Liv/h;->f:Landroid/os/Handler;

    new-instance p1, Liv/h$d;

    invoke-direct {p1, p0}, Liv/h$d;-><init>(Liv/h;)V

    iput-object p1, p0, Liv/h;->g:Liv/h$d;

    new-instance p1, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;-><init>()V

    new-instance v0, Liv/d;

    invoke-direct {v0, p0}, Liv/d;-><init>(Liv/h;)V

    const-string v1, "/pingpong*"

    const-string v2, "socket_connect"

    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/transfer/androidasync/http/server/n;->j(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer$a;)V

    iput-object p1, p0, Liv/h;->h:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Liv/h;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Liv/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Liv/e;

    invoke-direct {p1, p0}, Liv/e;-><init>(Liv/h;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Liv/h;->k:Lkotlin/Lazy;

    new-instance p1, Liv/h$c;

    invoke-direct {p1, p0}, Liv/h$c;-><init>(Liv/h;)V

    iput-object p1, p0, Liv/h;->l:Lcom/transsion/transfer/impl/PingPongHelper$a;

    new-instance p1, Liv/f;

    invoke-direct {p1, p0}, Liv/f;-><init>(Liv/h;)V

    iput-object p1, p0, Liv/h;->m:Ljava/lang/Runnable;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Liv/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Liv/h;->o:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Liv/h;->p:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Liv/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Liv/h;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Liv/h;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private final A()Liv/c;
    .locals 1

    iget-object v0, p0, Liv/h;->k:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liv/c;

    return-object v0
.end method

.method private final B(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Liv/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/androidasync/http/b0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClientCMD: clientIp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , socket:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    iget-object p1, p0, Liv/h;->g:Liv/h$d;

    invoke-virtual {p1}, Liv/h$d;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljv/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmd=-2?deviceName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/http/b0;->send(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static final C(Liv/h;Lcom/transsion/transfer/androidasync/http/b0;Lcom/transsion/transfer/androidasync/http/server/b;)V
    .locals 8

    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/http/server/b;->h()Lcom/transsion/transfer/androidasync/http/Multimap;

    move-result-object v0

    const-string v1, "clientIp"

    invoke-virtual {v0, v1}, Lcom/transsion/transfer/androidasync/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/http/server/b;->h()Lcom/transsion/transfer/androidasync/http/Multimap;

    move-result-object v1

    const-string v2, "transferId"

    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iput-object v1, p0, Liv/h;->c:Ljava/lang/String;

    invoke-interface {p2}, Lcom/transsion/transfer/androidasync/http/server/b;->h()Lcom/transsion/transfer/androidasync/http/Multimap;

    move-result-object p2

    const-string v2, "deviceName"

    invoke-virtual {p2, v2}, Lcom/transsion/transfer/androidasync/http/Multimap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "getString(...)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljv/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find client connect, clientIp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", clientDeviceName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", transferId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Liv/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    iget-object v3, p0, Liv/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find client connect, clientSocketMap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Liv/h;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Liv/h;->e:Z

    iget-object v4, p0, Liv/h;->f:Landroid/os/Handler;

    iget-object v5, p0, Liv/h;->m:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Liv/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Liv/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/transsion/transfer/androidasync/http/b0;

    if-eqz v4, :cond_1

    iget-object v5, p0, Liv/h;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/transfer/impl/PingPongHelper$a;

    if-eqz v5, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v5, v0, v4}, Lcom/transsion/transfer/impl/PingPongHelper$a;->a(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/b0;)V

    :cond_0
    invoke-interface {v4}, Lcom/transsion/transfer/androidasync/p;->close()V

    :cond_1
    iget-object v4, p0, Liv/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    iget-object v5, p0, Liv/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find client connect, clientConnectListeners:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Liv/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function4;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x0

    invoke-interface {v4, v0, v1, v5, v6}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Liv/h;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Liv/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Liv/h;->g:Liv/h$d;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find client connect, proxyFileHandler:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Liv/h;->g:Liv/h$d;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-virtual {v2, v0, p2}, Liv/h$d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Liv/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lcom/transsion/transfer/impl/PingPongHelper;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v4, p0, Liv/h;->l:Lcom/transsion/transfer/impl/PingPongHelper$a;

    invoke-direct {v2, v0, v3, p1, v4}, Lcom/transsion/transfer/impl/PingPongHelper;-><init>(Ljava/lang/String;ZLcom/transsion/transfer/androidasync/http/b0;Lcom/transsion/transfer/impl/PingPongHelper$a;)V

    invoke-virtual {v2}, Lcom/transsion/transfer/impl/PingPongHelper;->n()V

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Liv/g;

    invoke-direct {p2, v0, p0, p1, v1}, Liv/g;-><init>(Ljava/lang/String;Liv/h;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    invoke-direct {p0, v0}, Liv/h;->B(Ljava/lang/String;)V

    iput-boolean v3, p0, Liv/h;->b:Z

    return-void
.end method

.method private static final D(Ljava/lang/String;Liv/h;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "server socket close callback ip: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p1, Liv/h;->l:Lcom/transsion/transfer/impl/PingPongHelper$a;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p4, p0, p2}, Lcom/transsion/transfer/impl/PingPongHelper$a;->a(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/b0;)V

    iget-object p1, p1, Liv/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/jvm/functions/Function4;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "normal"

    invoke-interface {p2, p0, p3, p4, v0}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic k(Liv/h;)V
    .locals 0

    invoke-static {p0}, Liv/h;->y(Liv/h;)V

    return-void
.end method

.method public static synthetic l(Liv/h;Lcom/transsion/transfer/androidasync/http/b0;Lcom/transsion/transfer/androidasync/http/server/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Liv/h;->C(Liv/h;Lcom/transsion/transfer/androidasync/http/b0;Lcom/transsion/transfer/androidasync/http/server/b;)V

    return-void
.end method

.method public static synthetic m(Ljava/lang/String;Liv/h;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Liv/h;->D(Ljava/lang/String;Liv/h;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic n(Liv/h;)Liv/c;
    .locals 0

    invoke-static {p0}, Liv/h;->z(Liv/h;)Liv/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic o(Liv/h;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Liv/h;->m:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic p(Liv/h;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Liv/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static final synthetic q(Liv/h;)Z
    .locals 0

    iget-boolean p0, p0, Liv/h;->e:Z

    return p0
.end method

.method public static final synthetic r(Liv/h;)Lcom/transsion/transfer/impl/g;
    .locals 0

    iget-object p0, p0, Liv/h;->d:Lcom/transsion/transfer/impl/g;

    return-object p0
.end method

.method public static final synthetic s(Liv/h;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Liv/h;->f:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic t()Lcom/transsion/transfer/impl/h;
    .locals 1

    sget-object v0, Liv/h;->u:Lcom/transsion/transfer/impl/h;

    return-object v0
.end method

.method public static final synthetic u(Liv/h;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Liv/h;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic v()Ljava/lang/String;
    .locals 1

    sget-object v0, Liv/h;->t:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic w(Liv/h;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Liv/h;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic x(Lcom/transsion/transfer/impl/h;)V
    .locals 0

    sput-object p0, Liv/h;->u:Lcom/transsion/transfer/impl/h;

    return-void
.end method

.method private static final y(Liv/h;)V
    .locals 3

    iget-object v0, p0, Liv/h;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Liv/h;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/transfer/impl/i;

    iget-object v2, p0, Liv/h;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->i0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    :cond_0
    invoke-interface {v1, v2}, Lcom/transsion/transfer/impl/i;->p(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Liv/h;->s:Liv/h$a;

    invoke-virtual {v0}, Liv/h$a;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Liv/h;->e:Z

    :cond_2
    return-void
.end method

.method private static final z(Liv/h;)Liv/c;
    .locals 3

    new-instance v0, Liv/c;

    iget-object v1, p0, Liv/h;->g:Liv/h$d;

    new-instance v2, Liv/h$b;

    invoke-direct {v2, p0}, Liv/h$b;-><init>(Liv/h;)V

    invoke-direct {v0, v1, v2}, Liv/c;-><init>(Lcom/transsion/transfer/impl/g;Lcom/transsion/transfer/impl/i;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/transsion/transfer/impl/i;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Liv/h;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Liv/h;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lkotlin/jvm/functions/Function4;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Liv/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Liv/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Liv/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "<get-keys>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Liv/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/transfer/androidasync/http/b0;

    const-string v3, "cmd=-1"

    invoke-interface {v2, v3}, Lcom/transsion/transfer/androidasync/http/b0;->send(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/transfer/androidasync/http/b0;

    invoke-interface {v1}, Lcom/transsion/transfer/androidasync/p;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Liv/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Liv/h;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Liv/h;->p:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Liv/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/transsion/transfer/androidasync/http/b0;

    invoke-interface {v2}, Lcom/transsion/transfer/androidasync/p;->close()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/transfer/impl/PingPongHelper;

    invoke-virtual {v1}, Lcom/transsion/transfer/impl/PingPongHelper;->o()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Liv/h;->q:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Liv/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-static {}, Lcom/transsion/transfer/androidasync/AsyncServer;->r()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->L()V

    iget-object v0, p0, Liv/h;->h:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->u()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Liv/h;->b:Z

    return-void
.end method

.method public e(Lcom/transsion/transfer/impl/g;)V
    .locals 0

    iput-object p1, p0, Liv/h;->d:Lcom/transsion/transfer/impl/g;

    return-void
.end method

.method public f(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "clientIp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Liv/h;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/androidasync/http/b0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClientCMD: clientIp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , socket:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", cmd:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/transsion/transfer/androidasync/http/b0;->send(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public g(Lcom/transsion/transfer/impl/i;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Liv/h;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public h(Lkotlin/jvm/functions/Function4;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Liv/h;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public i()Ljava/util/List;
    .locals 2

    iget-object v0, p0, Liv/h;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "<get-values>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Liv/h;->b:Z

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Liv/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public open()V
    .locals 6

    iget-boolean v0, p0, Liv/h;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Liv/h;->A()Liv/c;

    move-result-object v0

    invoke-virtual {v0}, Liv/c;->e()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liv/c$b;

    invoke-virtual {v1}, Liv/c$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Liv/c$b;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "open: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Liv/c$b;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "get"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Liv/h;->h:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    invoke-virtual {v1}, Liv/c$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Liv/c$b;->c()Lcom/transsion/transfer/androidasync/http/server/q;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/transsion/transfer/androidasync/http/server/n;->f(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Liv/c$b;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "post"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Liv/h;->h:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    invoke-virtual {v1}, Liv/c$b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Liv/c$b;->c()Lcom/transsion/transfer/androidasync/http/server/q;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/transsion/transfer/androidasync/http/server/n;->i(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/server/q;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Liv/h;->h:Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;

    invoke-static {}, Lcom/transsion/transfer/androidasync/AsyncServer;->r()Lcom/transsion/transfer/androidasync/AsyncServer;

    move-result-object v1

    const/16 v2, 0x26a2

    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/server/AsyncHttpServer;->o(Lcom/transsion/transfer/androidasync/AsyncServer;I)Lcom/transsion/transfer/androidasync/i;

    return-void
.end method
