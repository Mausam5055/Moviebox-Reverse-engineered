.class public final Lcom/tmc/network/strategy/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tmc/network/strategy/d$b;,
        Lcom/tmc/network/strategy/d$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/tmc/network/strategy/d$a;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tmc/network/strategy/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tmc/network/strategy/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/tmc/network/strategy/d;->b:Lcom/tmc/network/strategy/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/tmc/network/strategy/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/tmc/network/strategy/d;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lgg/b;->a:Lgg/b;

    const-string v1, "StrategyCenter"

    const-string v2, "StrategyCenter init"

    invoke-virtual {v0, v1, v2}, Lgg/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lfg/b;->a:Lfg/b;

    invoke-virtual {v0, p1}, Lfg/b;->g(Landroid/content/Context;)V

    sget-object v0, Lcom/tmc/network/strategy/LocalDnsStrategy;->c:Lcom/tmc/network/strategy/LocalDnsStrategy$a;

    invoke-virtual {v0}, Lcom/tmc/network/strategy/LocalDnsStrategy$a;->a()Lcom/tmc/network/strategy/LocalDnsStrategy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tmc/network/strategy/LocalDnsStrategy;->h(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
