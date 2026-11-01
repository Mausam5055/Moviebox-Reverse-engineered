.class Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;->Sj(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/graphics/Bitmap;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1$1;->Sj:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;->vS(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;->Sj:Lcom/bytedance/adsdk/sP/TEQ;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/TEQ;->Dq()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1$1;->Sj:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/adsdk/sP/vS;->Sj(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method
