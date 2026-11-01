.class Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V

    :cond_0
    return-void
.end method
