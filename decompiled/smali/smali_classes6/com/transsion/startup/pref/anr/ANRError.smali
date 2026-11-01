.class public Lcom/transsion/startup/pref/anr/ANRError;
.super Ljava/lang/Error;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/startup/pref/anr/ANRError$$;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final duration:J


# direct methods
.method private constructor <init>(Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application Not Responding for at least "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-wide p2, p0, Lcom/transsion/startup/pref/anr/ANRError;->duration:J

    return-void
.end method

.method static New(JLjava/lang/String;Z)Lcom/transsion/startup/pref/anr/ANRError;
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lcom/transsion/startup/pref/anr/ANRError$1;

    invoke-direct {v2, v0}, Lcom/transsion/startup/pref/anr/ANRError$1;-><init>(Ljava/lang/Thread;)V

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v0, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p3, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    array-length v4, v4

    if-lez v4, :cond_0

    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/StackTraceElement;

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    move-object v0, p3

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;

    new-instance v3, Lcom/transsion/startup/pref/anr/ANRError$$;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Thread;

    invoke-static {v4}, Lcom/transsion/startup/pref/anr/ANRError;->getThreadTitle(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/StackTraceElement;

    invoke-direct {v3, v4, v1, p3}, Lcom/transsion/startup/pref/anr/ANRError$$;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/transsion/startup/pref/anr/b;)V

    invoke-direct {v2, v3, v0, p3}, Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;-><init>(Lcom/transsion/startup/pref/anr/ANRError$$;Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;Lcom/transsion/startup/pref/anr/b;)V

    move-object v0, v2

    goto :goto_1

    :cond_4
    new-instance p2, Lcom/transsion/startup/pref/anr/ANRError;

    invoke-direct {p2, v0, p0, p1}, Lcom/transsion/startup/pref/anr/ANRError;-><init>(Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;J)V

    return-object p2
.end method

.method static NewMainOnly(J)Lcom/transsion/startup/pref/anr/ANRError;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    new-instance v2, Lcom/transsion/startup/pref/anr/ANRError;

    new-instance v3, Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;

    new-instance v4, Lcom/transsion/startup/pref/anr/ANRError$$;

    invoke-static {v0}, Lcom/transsion/startup/pref/anr/ANRError;->getThreadTitle(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-direct {v4, v0, v1, v5}, Lcom/transsion/startup/pref/anr/ANRError$$;-><init>(Ljava/lang/String;[Ljava/lang/StackTraceElement;Lcom/transsion/startup/pref/anr/b;)V

    invoke-direct {v3, v4, v5, v5}, Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;-><init>(Lcom/transsion/startup/pref/anr/ANRError$$;Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;Lcom/transsion/startup/pref/anr/b;)V

    invoke-direct {v2, v3, p0, p1}, Lcom/transsion/startup/pref/anr/ANRError;-><init>(Lcom/transsion/startup/pref/anr/ANRError$$$_Thread;J)V

    return-object v2
.end method

.method private static getThreadTitle(Ljava/lang/Thread;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public fillInStackTrace()Ljava/lang/Throwable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-object p0
.end method
