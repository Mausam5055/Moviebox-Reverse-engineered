.class Lcom/bytedance/adsdk/ugeno/sP/TKC$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Sj$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/sP/TKC;->wE()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC$4;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC$4;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iget-boolean v1, v0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ei:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    iget v0, v0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->jb:F

    float-to-int v0, v0

    invoke-static {v1, p1, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/bytedance/adsdk/ugeno/sP/TKC$4$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC$4$1;-><init>(Lcom/bytedance/adsdk/ugeno/sP/TKC$4;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/sP/TKC$4$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC$4$2;-><init>(Lcom/bytedance/adsdk/ugeno/sP/TKC$4;Landroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
