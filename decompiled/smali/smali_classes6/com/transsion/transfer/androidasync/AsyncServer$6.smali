.class Lcom/transsion/transfer/androidasync/AsyncServer$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/transfer/androidasync/AsyncServer;->p(Ljava/lang/String;)Lcom/transsion/transfer/androidasync/future/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$ret:Lcom/transsion/transfer/androidasync/future/w;


# direct methods
.method constructor <init>(Lcom/transsion/transfer/androidasync/AsyncServer;Ljava/lang/String;Lcom/transsion/transfer/androidasync/future/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    iput-object p2, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6;->val$ret:Lcom/transsion/transfer/androidasync/future/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6;->val$host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {}, Lcom/transsion/transfer/androidasync/AsyncServer;->g()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    new-instance v2, Lcom/transsion/transfer/androidasync/AsyncServer$6$1;

    invoke-direct {v2, p0, v0}, Lcom/transsion/transfer/androidasync/AsyncServer$6$1;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer$6;[Ljava/net/InetAddress;)V

    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/transsion/transfer/androidasync/HostnameResolutionException;

    const-string v1, "no addresses for host"

    invoke-direct {v0, v1}, Lcom/transsion/transfer/androidasync/HostnameResolutionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lcom/transsion/transfer/androidasync/AsyncServer$6;->this$0:Lcom/transsion/transfer/androidasync/AsyncServer;

    new-instance v2, Lcom/transsion/transfer/androidasync/AsyncServer$6$2;

    invoke-direct {v2, p0, v0}, Lcom/transsion/transfer/androidasync/AsyncServer$6$2;-><init>(Lcom/transsion/transfer/androidasync/AsyncServer$6;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/AsyncServer;->D(Ljava/lang/Runnable;)Lcom/transsion/transfer/androidasync/future/a;

    :goto_1
    return-void
.end method
