.class Lcom/bytedance/sdk/openadsdk/common/Zq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/Zq;->vS()Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/Zq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Zq$2;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq$2;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public Sj(ILcom/bytedance/sdk/openadsdk/FilterWord;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Zq$2;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/common/Zq;->Sj(Lcom/bytedance/sdk/openadsdk/common/Zq;)Lcom/bytedance/sdk/openadsdk/TKC/TEQ;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/TKC/TEQ;->TKC(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/Zq$2;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public TKC()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq$2;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/Zq$2;->Sj:Lcom/bytedance/sdk/openadsdk/common/Zq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
