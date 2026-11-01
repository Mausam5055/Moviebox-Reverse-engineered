.class Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$2;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->i(ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

.field final synthetic Sj:Z

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:Z


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$2;->EjP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    iput-boolean p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$2;->Sj:Z

    iput-boolean p4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$2;->sP:Z

    iput-object p5, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$2;->TKC:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$2;->EjP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    invoke-static {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->b(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$2;->EjP:Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;

    invoke-static {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;->b(Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP;)Landroid/util/SparseArray;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$2;->Sj:Z

    invoke-static {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP$f;->a(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$2;->sP:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$2;->TKC:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/EjP$2;->TKC:Ljava/lang/String;

    invoke-static {v2}, Lw5/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/sP;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/sP/Sj;->Sj()V

    :cond_2
    return-void

    :goto_2
    monitor-exit v0

    throw v1
.end method
