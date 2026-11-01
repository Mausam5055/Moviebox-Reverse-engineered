.class Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/image/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 4

    const-string p2, "MBSplashNativeView"

    if-eqz p1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v0, v3}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->a(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;Z)Z

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->a(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->b(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->b(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->c(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->a(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v0

    invoke-static {p1, v3, v0}, Lcom/mbridge/msdk/foundation/tools/n0;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v1}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->d(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v1}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->d(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->d(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->e(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    iget-object v1, v1, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->N:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->f(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/n0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v1}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->b(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v1}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->b(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    :try_start_5
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->b(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_1

    :catchall_4
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->a(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->b(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->b(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_3
    :goto_1
    :try_start_7
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/n0;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v1}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->g(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    move-result-object v1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v1, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v1}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->g(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_3

    :catchall_5
    :try_start_8
    iget-object v0, p0, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView$a;->a:Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;

    invoke-static {v0}, Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;->b(Lcom/mbridge/msdk/splash/view/BaseMBSplashNativeView;)Lcom/mbridge/msdk/splash/view/nativeview/MBNoRecycledCrashImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return-void
.end method
