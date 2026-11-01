.class public final synthetic Lcom/cloud/tmc/miniutils/util/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic b:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cloud/tmc/miniutils/util/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/cloud/tmc/miniutils/util/n;->b:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/cloud/tmc/miniutils/util/n;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/cloud/tmc/miniutils/util/n;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/UtilsBridge;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
