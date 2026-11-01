.class Lcom/mbridge/msdk/video/dynview/wrapper/a$i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/image/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/wrapper/a;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/mbridge/msdk/video/dynview/wrapper/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/wrapper/a;ILandroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->c:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    iput p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->a:I

    iput-object p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "mbridge_icon_play_bg"

    const-string v0, "drawable"

    invoke-static {p1, p2, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->c:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->g(Lcom/mbridge/msdk/video/dynview/wrapper/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->b:Landroid/widget/ImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataEnergizeWrapper"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_1

    iget p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->a:I

    const/16 v0, 0x1f5

    if-eq p2, v0, :cond_0

    const/16 v0, 0x322

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a;

    invoke-direct {p2, p0, p1}, Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a;-><init>(Lcom/mbridge/msdk/video/dynview/wrapper/a$i;Landroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/threadpool/a;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "mbridge_icon_play_bg"

    const-string v0, "drawable"

    invoke-static {p1, p2, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->c:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->g(Lcom/mbridge/msdk/video/dynview/wrapper/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->b:Landroid/widget/ImageView;

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_0
    return-void
.end method
