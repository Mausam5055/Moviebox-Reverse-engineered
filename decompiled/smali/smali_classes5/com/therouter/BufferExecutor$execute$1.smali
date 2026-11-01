.class final Lcom/therouter/BufferExecutor$execute$1;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/therouter/BufferExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $r:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/therouter/BufferExecutor;


# direct methods
.method constructor <init>(Lcom/therouter/BufferExecutor;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/therouter/BufferExecutor$execute$1;->this$0:Lcom/therouter/BufferExecutor;

    iput-object p2, p0, Lcom/therouter/BufferExecutor$execute$1;->$r:Ljava/lang/Runnable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/therouter/BufferExecutor$execute$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    invoke-static {}, Lcom/therouter/TheRouter;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/therouter/BufferExecutor$execute$1;->this$0:Lcom/therouter/BufferExecutor;

    invoke-virtual {v0}, Lcom/therouter/BufferExecutor;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/therouter/BufferExecutor$execute$1;->$r:Ljava/lang/Runnable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/therouter/BufferExecutor$execute$1;->this$0:Lcom/therouter/BufferExecutor;

    invoke-static {v0}, Lcom/therouter/BufferExecutor;->a(Lcom/therouter/BufferExecutor;)V

    return-void
.end method
