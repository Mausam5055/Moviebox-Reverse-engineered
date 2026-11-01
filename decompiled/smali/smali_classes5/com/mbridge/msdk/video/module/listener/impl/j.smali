.class public Lcom/mbridge/msdk/video/module/listener/impl/j;
.super Lcom/mbridge/msdk/video/module/listener/impl/e;


# instance fields
.field private d:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/video/module/listener/impl/e;-><init>(Landroid/widget/ImageView;)V

    iput p2, p0, Lcom/mbridge/msdk/video/module/listener/impl/j;->d:I

    return-void
.end method


# virtual methods
.method public onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/mbridge/msdk/video/module/listener/impl/e;->a:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lcom/mbridge/msdk/video/module/listener/impl/j;->d:I

    const/4 v0, 0x1

    invoke-static {p1, v0, p2}, Lcom/mbridge/msdk/foundation/tools/n0;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/video/module/listener/impl/e;->a:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
