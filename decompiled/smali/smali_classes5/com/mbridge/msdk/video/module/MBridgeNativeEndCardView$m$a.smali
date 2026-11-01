.class Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m$a;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m$a;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m;

    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m;->b:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    iget-boolean v1, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->h:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->q(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const-string v0, "async"

    const-string v1, "\u6267\u884c\u5f02\u6b65\u52a0\u8f7d\u56fe"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m$a;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m;

    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m;->b:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->q(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m$a;->a:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m;

    iget-object v1, v1, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView$m;->b:Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->c(Lcom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
