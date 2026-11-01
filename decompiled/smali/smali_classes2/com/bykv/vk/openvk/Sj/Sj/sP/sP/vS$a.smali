.class Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;)V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->i(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->i(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->vS()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    monitor-exit v0

    throw p1
.end method

.method public b(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Jcg;)V
    .locals 3

    sget-boolean v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "afterExecute, ProxyTask: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->vS()I

    move-result v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->i(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS$a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;

    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;->i(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/vS;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    monitor-exit v1

    throw p1
.end method
