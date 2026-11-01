.class final Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$2;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lv5/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

.field final synthetic sP:Lv5/a$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lv5/a$a;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$2;->sP:Lv5/a$a;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj:Lv5/a;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$2;->Sj:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj$2;->sP:Lv5/a$a;

    invoke-interface {v0, v1, v2, v3}, Lv5/a;->a(Landroid/content/Context;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lv5/a$a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method
