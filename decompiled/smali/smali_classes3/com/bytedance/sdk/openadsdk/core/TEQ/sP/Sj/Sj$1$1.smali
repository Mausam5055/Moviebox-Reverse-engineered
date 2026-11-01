.class Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Sj$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;->Sj(Lcom/bytedance/adsdk/sP/TEQ;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/sP/TEQ;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;Lcom/bytedance/adsdk/sP/TEQ;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;->Sj:Lcom/bytedance/adsdk/sP/TEQ;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;->sP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;->Sj:Lcom/bytedance/adsdk/sP/TEQ;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/TEQ;->Sj()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;->Sj:Lcom/bytedance/adsdk/sP/TEQ;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/TEQ;->sP()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj;->AVc:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;->sP:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Sj/Sj$1$1;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
