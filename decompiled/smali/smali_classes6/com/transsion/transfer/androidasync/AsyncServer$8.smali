.class Lcom/transsion/transfer/androidasync/AsyncServer$8;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncServer;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

.field final synthetic val$queue:Ljava/util/PriorityQueue;

.field final synthetic val$selector:Lcom/transsion/transfer/androidasync/x;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/String;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$8;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/AsyncServer$8;->val$selector:Lcom/transsion/transfer/androidasync/x;

    iput-object p4, p0, Lcom/transsion/transfer/androidasync/AsyncServer$8;->val$queue:Ljava/util/PriorityQueue;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/transsion/transfer/androidasync/AsyncServer;->h()Ljava/lang/ThreadLocal;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$8;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$8;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$8;->val$selector:Lcom/transsion/transfer/androidasync/x;

    iget-object v2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$8;->val$queue:Ljava/util/PriorityQueue;

    invoke-static {v0, v1, v2}, Lcom/transsion/transfer/androidasync/AsyncServer;->i(Lcom/transsion/transfer/androidasync/AsyncServer;Lcom/transsion/transfer/androidasync/x;Ljava/util/PriorityQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/transsion/transfer/androidasync/AsyncServer;->h()Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/transsion/transfer/androidasync/AsyncServer;->h()Ljava/lang/ThreadLocal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    throw v0
.end method
