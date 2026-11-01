.class Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dx()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TEQ()V

    :cond_0
    return-void
.end method
