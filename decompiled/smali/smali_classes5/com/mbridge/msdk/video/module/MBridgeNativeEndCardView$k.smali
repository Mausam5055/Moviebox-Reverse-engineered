.class Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/image/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$k;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_2

    :try_start_0
    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$k;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {p2}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->p(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$k;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    iget-boolean v0, p2, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->h:Z

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->p(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/widget/ImageView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$k;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {p2}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->p(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$k;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {p2, p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$k;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->q(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$k;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {p1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->q(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
