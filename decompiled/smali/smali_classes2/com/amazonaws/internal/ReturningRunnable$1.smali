.class Lcom/amazonaws/internal/ReturningRunnable$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazonaws/internal/ReturningRunnable;

.field final synthetic val$callback:Lcom/amazonaws/async/Callback;


# direct methods
.method constructor <init>(Lcom/amazonaws/internal/ReturningRunnable;Lcom/amazonaws/async/Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/internal/ReturningRunnable$1;->this$0:Lcom/amazonaws/internal/ReturningRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/internal/ReturningRunnable$1;->this$0:Lcom/amazonaws/internal/ReturningRunnable;

    invoke-virtual {v1}, Lcom/amazonaws/internal/ReturningRunnable;->b()Ljava/lang/Object;

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/amazonaws/internal/ReturningRunnable$1;->this$0:Lcom/amazonaws/internal/ReturningRunnable;

    invoke-static {v2}, Lcom/amazonaws/internal/ReturningRunnable;->a(Lcom/amazonaws/internal/ReturningRunnable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/Exception;

    iget-object v3, p0, Lcom/amazonaws/internal/ReturningRunnable$1;->this$0:Lcom/amazonaws/internal/ReturningRunnable;

    invoke-static {v3}, Lcom/amazonaws/internal/ReturningRunnable;->a(Lcom/amazonaws/internal/ReturningRunnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
