.class Lcom/mbridge/msdk/dycreator/binding/b$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/image/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/dycreator/binding/b;->a(Landroid/view/View;Ljava/lang/Object;Lcom/mbridge/msdk/dycreator/viewdata/base/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/mbridge/msdk/dycreator/binding/b;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/dycreator/binding/b;Lcom/mbridge/msdk/dycreator/viewdata/base/a;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->c:Lcom/mbridge/msdk/dycreator/binding/b;

    iput-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    iput-object p3, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    const p2, -0x777778

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_e

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_e

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    invoke-interface {v0}, Lcom/mbridge/msdk/dycreator/viewdata/base/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->getOrientation()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->a:Lcom/mbridge/msdk/dycreator/viewdata/base/a;

    invoke-interface {v0}, Lcom/mbridge/msdk/dycreator/viewdata/base/a;->getEffectData()Lcom/mbridge/msdk/dycreator/wrapper/DyOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/dycreator/wrapper/DyOption;->getOrientation()I

    move-result v0

    :goto_1
    const/16 v3, 0x8

    if-ne v0, v1, :cond_7

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    instance-of v0, p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashPortView;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    instance-of v0, p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashImageBgView;

    if-eqz v0, :cond_d

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/n0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    check-cast p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashImageBgView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    check-cast p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashImageBgView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    instance-of v0, p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashPortView;

    if-eqz v0, :cond_5

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    check-cast p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashPortView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    check-cast p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashPortView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_5
    instance-of v0, p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashImageBgView;

    if-eqz v0, :cond_6

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_6
    instance-of v0, p2, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;

    if-eqz v0, :cond_d

    check-cast p2, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;

    invoke-interface {p2}, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;->getEffectDes()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    invoke-static {p2, v0, v1}, Lcom/mbridge/msdk/dycreator/utils/d;->a(Ljava/lang/String;Landroid/view/View;Z)V

    goto/16 :goto_2

    :cond_7
    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    instance-of v0, p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashPortView;

    if-eqz v0, :cond_8

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    check-cast p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashPortView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_8
    instance-of v0, p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashImageBgView;

    if-eqz v0, :cond_9

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/n0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    check-cast p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashImageBgView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_9
    instance-of v0, p2, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;

    if-eqz v0, :cond_d

    check-cast p2, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;

    invoke-interface {p2}, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;->getEffectDes()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    invoke-static {p2, v0, v1}, Lcom/mbridge/msdk/dycreator/utils/d;->a(Ljava/lang/String;Landroid/view/View;Z)V

    goto :goto_2

    :cond_a
    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    instance-of v0, p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashPortView;

    if-eqz v0, :cond_b

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    check-cast p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashPortView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_b
    instance-of v0, p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashImageBgView;

    if-eqz v0, :cond_c

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/n0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    check-cast p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashImageBgView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    check-cast p2, Lcom/mbridge/msdk/dycreator/baseview/MBSplashImageBgView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_c
    instance-of v0, p2, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;

    if-eqz v0, :cond_d

    check-cast p2, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;

    invoke-interface {p2}, Lcom/mbridge/msdk/dycreator/baseview/inter/InterBase;->getEffectDes()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_d

    invoke-static {p2, v0, v1}, Lcom/mbridge/msdk/dycreator/utils/d;->a(Ljava/lang/String;Landroid/view/View;Z)V

    :cond_d
    :goto_2
    iget-object p2, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_e
    iget-object p1, p0, Lcom/mbridge/msdk/dycreator/binding/b$f;->b:Landroid/view/View;

    check-cast p1, Landroid/widget/ImageView;

    const p2, -0x777778

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MBDataBinding"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method
