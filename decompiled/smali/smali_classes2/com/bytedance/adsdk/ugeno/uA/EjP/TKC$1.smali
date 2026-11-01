.class Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Sj$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->uA()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;->Sj:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;->Sj:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;->Sj:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->sP(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1$1;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1$1;-><init>(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;->Sj:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    iget-boolean v1, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->RrR:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->EjP(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;->Sj:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->HiB(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;->Sj:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->EjP(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;->Sj:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->EjP(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    :goto_0
    invoke-static {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;->Sj:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->vS(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance p1, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1$2;

    invoke-direct {p1, p0, v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1$2;-><init>(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
