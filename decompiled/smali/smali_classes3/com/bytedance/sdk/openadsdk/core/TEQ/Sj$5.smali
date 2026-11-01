.class Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/uvD;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;->sP(Lcom/bytedance/adsdk/ugeno/core/Dq;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/Sj$Sj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/ugeno/Sj$Sj;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;Lcom/bytedance/adsdk/ugeno/Sj$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$5;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$5;->Sj:Lcom/bytedance/adsdk/ugeno/Sj$Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$5;->Sj:Lcom/bytedance/adsdk/ugeno/Sj$Sj;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/bytedance/adsdk/ugeno/Sj$Sj;->Sj(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/Ym;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$5;->Sj:Lcom/bytedance/adsdk/ugeno/Sj$Sj;

    invoke-interface {p1, v0}, Lcom/bytedance/adsdk/ugeno/Sj$Sj;->Sj(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$5;->Sj:Lcom/bytedance/adsdk/ugeno/Sj$Sj;

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->sP()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$5;->Sj:Lcom/bytedance/adsdk/ugeno/Sj$Sj;

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {p1, v1}, Lcom/bytedance/adsdk/ugeno/Sj$Sj;->Sj(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->sP()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, [B

    if-eqz v1, :cond_2

    :try_start_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->sP()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/Ym;->sP()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    array-length p1, p1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$5;->Sj:Lcom/bytedance/adsdk/ugeno/Sj$Sj;

    invoke-interface {v1, p1}, Lcom/bytedance/adsdk/ugeno/Sj$Sj;->Sj(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj$5;->Sj:Lcom/bytedance/adsdk/ugeno/Sj$Sj;

    invoke-interface {p1, v0}, Lcom/bytedance/adsdk/ugeno/Sj$Sj;->Sj(Landroid/graphics/Bitmap;)V

    :cond_3
    return-void
.end method
