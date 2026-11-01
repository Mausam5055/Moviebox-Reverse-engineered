.class Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$2;->sP:Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$2;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;->Sj(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
