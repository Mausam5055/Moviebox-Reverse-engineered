.class Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/ref/WeakReference;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;Lcom/bytedance/sdk/openadsdk/core/Ym/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$6;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$6;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk:Lcom/bytedance/sdk/openadsdk/core/widget/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$6;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$6;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->getVideoProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->sP(J)V

    :cond_0
    return-void
.end method
