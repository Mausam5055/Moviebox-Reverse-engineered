.class abstract Lcom/google/common/util/concurrent/d;
.super Lcom/google/common/util/concurrent/AbstractFuture$h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/d$b;,
        Lcom/google/common/util/concurrent/d$c;,
        Lcom/google/common/util/concurrent/d$d;
    }
.end annotation


# static fields
.field private static final c:Lcom/google/common/util/concurrent/d$b;

.field private static final d:Lcom/google/common/util/concurrent/q;


# instance fields
.field private volatile a:Ljava/util/Set;

.field private volatile b:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/common/util/concurrent/q;

    const-class v1, Lcom/google/common/util/concurrent/d;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/q;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/common/util/concurrent/d;->d:Lcom/google/common/util/concurrent/q;

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Lcom/google/common/util/concurrent/d$c;

    const-class v3, Ljava/util/Set;

    const-string v4, "a"

    invoke-static {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v3

    const-string v4, "b"

    invoke-static {v1, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/google/common/util/concurrent/d$c;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    new-instance v2, Lcom/google/common/util/concurrent/d$d;

    invoke-direct {v2, v0}, Lcom/google/common/util/concurrent/d$d;-><init>(Lcom/google/common/util/concurrent/d$a;)V

    move-object v0, v1

    :goto_0
    sput-object v2, Lcom/google/common/util/concurrent/d;->c:Lcom/google/common/util/concurrent/d$b;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/common/util/concurrent/d;->d:Lcom/google/common/util/concurrent/q;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/q;->a()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
