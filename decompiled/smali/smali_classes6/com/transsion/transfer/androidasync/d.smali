.class public final synthetic Lcom/transsion/transfer/androidasync/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Ljava/util/concurrent/Semaphore;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/d;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/d;->b:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/d;->a:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/d;->b:Ljava/util/concurrent/Semaphore;

    invoke-static {v0, v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    return-void
.end method
