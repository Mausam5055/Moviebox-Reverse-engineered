.class Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2;->Sj(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/graphics/Bitmap;

.field final synthetic sP:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2$1;->sP:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2;

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2$1;->Sj:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2$1;->Sj:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2$1;->sP:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2;

    iget-object v1, v1, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2;->Sj:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->uA(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2$1;->Sj:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2$1;->sP:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2;

    iget-object v1, v1, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2;->Sj:Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    invoke-static {v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->TEQ(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
