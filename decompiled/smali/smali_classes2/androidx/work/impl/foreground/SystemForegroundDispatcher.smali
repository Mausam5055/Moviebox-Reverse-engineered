.class public Landroidx/work/impl/foreground/SystemForegroundDispatcher;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/work/impl/constraints/h;
.implements Landroidx/work/impl/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;
    }
.end annotation


# static fields
.field static final k:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroidx/work/impl/f1;

.field private final c:Lj4/c;

.field final d:Ljava/lang/Object;

.field e:Landroidx/work/impl/model/x;

.field final f:Ljava/util/Map;

.field final g:Ljava/util/Map;

.field final h:Ljava/util/Map;

.field final i:Landroidx/work/impl/constraints/WorkConstraintsTracker;

.field private j:Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemFgDispatcher"

    invoke-static {v0}, Landroidx/work/t;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->k:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->a:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->d:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/work/impl/f1;->o(Landroid/content/Context;)Landroidx/work/impl/f1;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->b:Landroidx/work/impl/f1;

    invoke-virtual {p1}, Landroidx/work/impl/f1;->u()Lj4/c;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->c:Lj4/c;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->e:Landroidx/work/impl/model/x;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->f:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->h:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->g:Ljava/util/Map;

    new-instance p1, Landroidx/work/impl/constraints/WorkConstraintsTracker;

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->b:Landroidx/work/impl/f1;

    invoke-virtual {v0}, Landroidx/work/impl/f1;->s()Li4/n;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Li4/n;)V

    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->i:Landroidx/work/impl/constraints/WorkConstraintsTracker;

    iget-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->b:Landroidx/work/impl/f1;

    invoke-virtual {p1}, Landroidx/work/impl/f1;->q()Landroidx/work/impl/s;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/work/impl/s;->e(Landroidx/work/impl/e;)V

    return-void
.end method

.method static synthetic a(Landroidx/work/impl/foreground/SystemForegroundDispatcher;)Landroidx/work/impl/f1;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->b:Landroidx/work/impl/f1;

    return-object p0
.end method

.method static synthetic b(Landroidx/work/impl/foreground/SystemForegroundDispatcher;)Lj4/c;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->c:Lj4/c;

    return-object p0
.end method

.method public static d(Landroid/content/Context;Landroidx/work/impl/model/x;Landroidx/work/i;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_NOTIFY"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2}, Landroidx/work/i;->c()I

    move-result p0

    const-string v1, "KEY_NOTIFICATION_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_FOREGROUND_SERVICE_TYPE"

    invoke-virtual {p2}, Landroidx/work/i;->a()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_NOTIFICATION"

    invoke-virtual {p2}, Landroidx/work/i;->b()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/work/impl/model/x;->b()Ljava/lang/String;

    move-result-object p0

    const-string p2, "KEY_WORKSPEC_ID"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_GENERATION"

    invoke-virtual {p1}, Landroidx/work/impl/model/x;->a()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static f(Landroid/content/Context;Landroidx/work/impl/model/x;Landroidx/work/i;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_START_FOREGROUND"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroidx/work/impl/model/x;->b()Ljava/lang/String;

    move-result-object p0

    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "KEY_GENERATION"

    invoke-virtual {p1}, Landroidx/work/impl/model/x;->a()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p2}, Landroidx/work/i;->c()I

    move-result p0

    const-string p1, "KEY_NOTIFICATION_ID"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_FOREGROUND_SERVICE_TYPE"

    invoke-virtual {p2}, Landroidx/work/i;->a()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_NOTIFICATION"

    invoke-virtual {p2}, Landroidx/work/i;->b()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/foreground/SystemForegroundService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "ACTION_STOP_FOREGROUND"

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private h(Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping foreground work for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_WORKSPEC_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->b:Landroidx/work/impl/f1;

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/work/impl/f1;->j(Ljava/util/UUID;)Landroidx/work/w;

    :cond_0
    return-void
.end method

.method private i(Landroid/content/Intent;)V
    .locals 9

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->j:Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;

    if-eqz v0, :cond_4

    const-string v0, "KEY_NOTIFICATION_ID"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "KEY_FOREGROUND_SERVICE_TYPE"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "KEY_WORKSPEC_ID"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "KEY_GENERATION"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Landroidx/work/impl/model/x;

    invoke-direct {v5, v3, v4}, Landroidx/work/impl/model/x;-><init>(Ljava/lang/String;I)V

    const-string v4, "KEY_NOTIFICATION"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/Notification;

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v4

    sget-object v6, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->k:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notifying with (id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", workSpecId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", notificationType :"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v6, v3}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    new-instance v3, Landroidx/work/i;

    invoke-direct {v3, v0, p1, v2}, Landroidx/work/i;-><init>(ILandroid/app/Notification;I)V

    iget-object v2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->f:Ljava/util/Map;

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->f:Ljava/util/Map;

    iget-object v4, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->e:Landroidx/work/impl/model/x;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/i;

    if-nez v2, :cond_0

    iput-object v5, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->e:Landroidx/work/impl/model/x;

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->j:Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;

    invoke-interface {v3, v0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;->a(ILandroid/app/Notification;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/i;

    invoke-virtual {v0}, Landroidx/work/i;->a()I

    move-result v0

    or-int/2addr v1, v0

    goto :goto_0

    :cond_1
    new-instance v3, Landroidx/work/i;

    invoke-virtual {v2}, Landroidx/work/i;->c()I

    move-result p1

    invoke-virtual {v2}, Landroidx/work/i;->b()Landroid/app/Notification;

    move-result-object v0

    invoke-direct {v3, p1, v0, v1}, Landroidx/work/i;-><init>(ILandroid/app/Notification;I)V

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    iget-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->j:Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;

    invoke-virtual {v3}, Landroidx/work/i;->c()I

    move-result v0

    invoke-virtual {v3}, Landroidx/work/i;->a()I

    move-result v1

    invoke-virtual {v3}, Landroidx/work/i;->b()Landroid/app/Notification;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;->c(IILandroid/app/Notification;)V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Notification passed in the intent was null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "handleNotify was called on the destroyed dispatcher"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j(Landroid/content/Intent;)V
    .locals 4

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started foreground service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KEY_WORKSPEC_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->c:Lj4/c;

    new-instance v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;

    invoke-direct {v1, p0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$1;-><init>(Landroidx/work/impl/foreground/SystemForegroundDispatcher;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lj4/c;->d(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public c(Landroidx/work/impl/model/x;Z)V
    .locals 5

    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->d:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/model/j0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/t1;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/t1;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->f:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/work/i;

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->e:Landroidx/work/impl/model/x;

    invoke-virtual {p1, v0}, Landroidx/work/impl/model/x;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/impl/model/x;

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->e:Landroidx/work/impl/model/x;

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->j:Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/work/i;

    iget-object v1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->j:Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;

    invoke-virtual {v0}, Landroidx/work/i;->c()I

    move-result v2

    invoke-virtual {v0}, Landroidx/work/i;->a()I

    move-result v3

    invoke-virtual {v0}, Landroidx/work/i;->b()Landroid/app/Notification;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;->c(IILandroid/app/Notification;)V

    iget-object v1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->j:Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;

    invoke-virtual {v0}, Landroidx/work/i;->c()I

    move-result v0

    invoke-interface {v1, v0}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;->d(I)V

    goto :goto_2

    :cond_3
    iput-object v1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->e:Landroidx/work/impl/model/x;

    :cond_4
    :goto_2
    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->j:Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;

    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->k:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing Notification (id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/work/i;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", workSpecId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", notificationType: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/work/i;->a()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/work/i;->c()I

    move-result p1

    invoke-interface {v0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;->d(I)V

    :cond_5
    return-void

    :goto_3
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public e(Landroidx/work/impl/model/j0;Landroidx/work/impl/constraints/b;)V
    .locals 5

    instance-of v0, p2, Landroidx/work/impl/constraints/b$b;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/work/impl/model/j0;->a:Ljava/lang/String;

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->k:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Constraints unmet for WorkSpec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/work/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->b:Landroidx/work/impl/f1;

    invoke-static {p1}, Landroidx/work/impl/model/s1;->a(Landroidx/work/impl/model/j0;)Landroidx/work/impl/model/x;

    move-result-object p1

    check-cast p2, Landroidx/work/impl/constraints/b$b;

    invoke-virtual {p2}, Landroidx/work/impl/constraints/b$b;->a()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroidx/work/impl/f1;->z(Landroidx/work/impl/model/x;I)V

    :cond_0
    return-void
.end method

.method k(Landroid/content/Intent;I)V
    .locals 2

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->k:Ljava/lang/String;

    const-string v1, "Stopping foreground service"

    invoke-virtual {p1, v0, v1}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->j:Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;->b(I)V

    :cond_0
    return-void
.end method

.method l()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->j:Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;

    iget-object v1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/t1;

    invoke-interface {v3, v0}, Lkotlinx/coroutines/t1;->cancel(Ljava/util/concurrent/CancellationException;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->b:Landroidx/work/impl/f1;

    invoke-virtual {v0}, Landroidx/work/impl/f1;->q()Landroidx/work/impl/s;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/work/impl/s;->p(Landroidx/work/impl/e;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method m(Landroid/content/Intent;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION_START_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->j(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->i(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v1, "ACTION_NOTIFY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->i(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "ACTION_CANCEL_WORK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->h(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "ACTION_STOP_FOREGROUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2}, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->k(Landroid/content/Intent;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method n(II)V
    .locals 4

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Foreground service timed out, FGS type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/t;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/i;

    invoke-virtual {v2}, Landroidx/work/i;->a()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/work/impl/model/x;

    iget-object v2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->b:Landroidx/work/impl/f1;

    const/16 v3, -0x80

    invoke-virtual {v2, v1, v3}, Landroidx/work/impl/f1;->z(Landroidx/work/impl/model/x;I)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->j:Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;->b(I)V

    :cond_2
    return-void
.end method

.method o(Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;)V
    .locals 2

    iget-object v0, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->j:Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/work/t;->e()Landroidx/work/t;

    move-result-object p1

    sget-object v0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->k:Ljava/lang/String;

    const-string v1, "A callback already exists."

    invoke-virtual {p1, v0, v1}, Landroidx/work/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/work/impl/foreground/SystemForegroundDispatcher;->j:Landroidx/work/impl/foreground/SystemForegroundDispatcher$a;

    return-void
.end method
