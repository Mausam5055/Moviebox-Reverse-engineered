.class Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;

    iget-object v1, v1, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->sP:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;Z)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;

    iget-object v3, v3, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->sP:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;

    iget-object v3, v3, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->sP:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-object v3, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;

    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->Sj(Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;Z)Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC$1;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/Sj/TKC;->EjP(Ljava/util/List;)V

    return-void

    :catch_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :goto_0
    monitor-exit v0

    throw v1
.end method
