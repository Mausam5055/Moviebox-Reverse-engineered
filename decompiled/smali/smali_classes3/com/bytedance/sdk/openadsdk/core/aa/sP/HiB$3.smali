.class Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->aa()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB$3;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;->Sj(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
