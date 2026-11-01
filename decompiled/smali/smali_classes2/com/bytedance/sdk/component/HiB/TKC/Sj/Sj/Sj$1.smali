.class Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->sP(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TKC(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->EjP(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;I)I

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :goto_0
    monitor-exit v0

    throw v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;->Sj()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
