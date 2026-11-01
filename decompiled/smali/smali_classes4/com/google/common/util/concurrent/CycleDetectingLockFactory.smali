.class public abstract Lcom/google/common/util/concurrent/CycleDetectingLockFactory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$Policies;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$b;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$PotentialDeadlockException;,
        Lcom/google/common/util/concurrent/CycleDetectingLockFactory$ExampleStackTrace;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentMap;

.field private static final b:Lcom/google/common/util/concurrent/q;

.field private static final c:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->l()Lcom/google/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->i()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/common/util/concurrent/q;

    const-class v1, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/q;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b:Lcom/google/common/util/concurrent/q;

    new-instance v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/CycleDetectingLockFactory$a;-><init>()V

    sput-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static synthetic a()Lcom/google/common/util/concurrent/q;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/CycleDetectingLockFactory;->b:Lcom/google/common/util/concurrent/q;

    return-object v0
.end method
