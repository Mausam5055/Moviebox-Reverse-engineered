.class public abstract Lcom/google/common/util/concurrent/ClosingFuture;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ClosingFuture$b;,
        Lcom/google/common/util/concurrent/ClosingFuture$State;,
        Lcom/google/common/util/concurrent/ClosingFuture$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/util/concurrent/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/util/concurrent/q;

    const-class v1, Lcom/google/common/util/concurrent/ClosingFuture;

    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/q;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/common/util/concurrent/ClosingFuture;->a:Lcom/google/common/util/concurrent/q;

    return-void
.end method

.method static synthetic a(Lcom/google/common/util/concurrent/ClosingFuture;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic b(Lcom/google/common/util/concurrent/ClosingFuture;Lcom/google/common/util/concurrent/ClosingFuture$State;Lcom/google/common/util/concurrent/ClosingFuture$State;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static synthetic c(Lcom/google/common/util/concurrent/ClosingFuture$b;Lcom/google/common/util/concurrent/ClosingFuture;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/util/concurrent/ClosingFuture;->d(Lcom/google/common/util/concurrent/ClosingFuture$b;Lcom/google/common/util/concurrent/ClosingFuture;)V

    return-void
.end method

.method private static d(Lcom/google/common/util/concurrent/ClosingFuture$b;Lcom/google/common/util/concurrent/ClosingFuture;)V
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/ClosingFuture$a;

    invoke-direct {v0, p1}, Lcom/google/common/util/concurrent/ClosingFuture$a;-><init>(Lcom/google/common/util/concurrent/ClosingFuture;)V

    invoke-interface {p0, v0}, Lcom/google/common/util/concurrent/ClosingFuture$b;->a(Lcom/google/common/util/concurrent/ClosingFuture$a;)V

    return-void
.end method
