.class Lcom/mbridge/msdk/tracker/network/u$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/tracker/network/u;->a(Lcom/mbridge/msdk/tracker/network/t;)Lcom/mbridge/msdk/tracker/network/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/tracker/network/u;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/tracker/network/u;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/network/u$b;->a:Lcom/mbridge/msdk/tracker/network/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/mbridge/msdk/tracker/network/n;

    iget-object v1, p0, Lcom/mbridge/msdk/tracker/network/u$b;->a:Lcom/mbridge/msdk/tracker/network/u;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/network/u;->a(Lcom/mbridge/msdk/tracker/network/u;)Ljava/util/concurrent/PriorityBlockingQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/tracker/network/u$b;->a:Lcom/mbridge/msdk/tracker/network/u;

    invoke-static {v2}, Lcom/mbridge/msdk/tracker/network/u;->b(Lcom/mbridge/msdk/tracker/network/u;)Lcom/mbridge/msdk/tracker/network/m;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/tracker/network/u$b;->a:Lcom/mbridge/msdk/tracker/network/u;

    invoke-static {v3}, Lcom/mbridge/msdk/tracker/network/u;->c(Lcom/mbridge/msdk/tracker/network/u;)Lcom/mbridge/msdk/tracker/network/b;

    move-result-object v3

    iget-object v4, p0, Lcom/mbridge/msdk/tracker/network/u$b;->a:Lcom/mbridge/msdk/tracker/network/u;

    invoke-static {v4}, Lcom/mbridge/msdk/tracker/network/u;->d(Lcom/mbridge/msdk/tracker/network/u;)Lcom/mbridge/msdk/tracker/network/w;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mbridge/msdk/tracker/network/n;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/mbridge/msdk/tracker/network/m;Lcom/mbridge/msdk/tracker/network/b;Lcom/mbridge/msdk/tracker/network/w;)V

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/network/n;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
