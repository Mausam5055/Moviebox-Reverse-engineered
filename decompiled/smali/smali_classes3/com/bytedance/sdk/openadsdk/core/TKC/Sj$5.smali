.class Lcom/bytedance/sdk/openadsdk/core/TKC/Sj$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;->HiB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/view/View;I)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;->Fmk(Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;->Fmk(Lcom/bytedance/sdk/openadsdk/core/TKC/Sj;)Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerAdWrapperListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    :cond_0
    return-void
.end method
