.class Lcom/bytedance/sdk/openadsdk/common/TKC$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/TKC;->Sj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/common/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/common/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/TKC$1;->Sj:Lcom/bytedance/sdk/openadsdk/common/TKC;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/common/aa;->Sj:Lcom/bytedance/sdk/openadsdk/common/Ym;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
