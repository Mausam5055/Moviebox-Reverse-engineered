.class Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1$1;->sP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1$1;->Sj:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1$1;->sP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1;->Sj:Lcom/bytedance/sdk/openadsdk/Sj/sP/vS;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/vS;->Sj()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1$1;->Sj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/uA;->vS(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1$1;->sP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq$1;->sP:Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Dq;->Dq()Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Sj/sP/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGMediaView;->close()V

    :cond_0
    return-void
.end method
