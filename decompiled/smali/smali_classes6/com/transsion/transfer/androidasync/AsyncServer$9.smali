.class Lcom/transsion/transfer/androidasync/AsyncServer$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/AsyncServer;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$9;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$9;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->e(Lcom/transsion/transfer/androidasync/AsyncServer;)Lcom/transsion/transfer/androidasync/x;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$9;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    invoke-static {v1}, Lcom/transsion/transfer/androidasync/AsyncServer;->e(Lcom/transsion/transfer/androidasync/AsyncServer;)Lcom/transsion/transfer/androidasync/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/transfer/androidasync/x;->h()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$9;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/AsyncServer;->e(Lcom/transsion/transfer/androidasync/AsyncServer;)Lcom/transsion/transfer/androidasync/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/transfer/androidasync/x;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void
.end method
