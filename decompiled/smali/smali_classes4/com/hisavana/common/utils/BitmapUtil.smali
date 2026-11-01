.class public Lcom/hisavana/common/utils/BitmapUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recycle(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/hisavana/common/constant/ComConstants;->LITE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
