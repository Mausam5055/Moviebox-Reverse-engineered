.class Lcom/mbridge/msdk/video/dynview/util/draw/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/util/draw/a;->a(IFFLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:I

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:Lcom/mbridge/msdk/video/dynview/util/draw/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/util/draw/a;Landroid/graphics/Bitmap;IFF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->e:Lcom/mbridge/msdk/video/dynview/util/draw/a;

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->a:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->b:I

    iput p4, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->c:F

    iput p5, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->a:Landroid/graphics/Bitmap;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/y;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->a:Landroid/graphics/Bitmap;

    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/y;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {}, Lcom/mbridge/msdk/video/dynview/shape/a;->a()Lcom/mbridge/msdk/video/dynview/shape/a$b;

    move-result-object v2

    iget v3, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->b:I

    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/video/dynview/shape/a$b;->a(I)Lcom/mbridge/msdk/video/dynview/shape/a$c;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/mbridge/msdk/video/dynview/shape/a$c;->b(Landroid/graphics/Bitmap;)Lcom/mbridge/msdk/video/dynview/shape/a$c;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/dynview/shape/a$c;->a(Landroid/graphics/Bitmap;)Lcom/mbridge/msdk/video/dynview/shape/a$c;

    iget v0, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->c:F

    iget v1, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->d:F

    cmpl-float v3, v0, v1

    if-lez v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/video/dynview/shape/a$b;->b(F)Lcom/mbridge/msdk/video/dynview/shape/a$c;

    move-result-object v0

    iget v1, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->d:F

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/dynview/shape/a$c;->a(F)Lcom/mbridge/msdk/video/dynview/shape/a$c;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/video/dynview/shape/a$b;->b(F)Lcom/mbridge/msdk/video/dynview/shape/a$c;

    move-result-object v0

    iget v1, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->c:F

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/dynview/shape/a$c;->a(F)Lcom/mbridge/msdk/video/dynview/shape/a$c;

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->c:F

    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/video/dynview/shape/a$b;->b(F)Lcom/mbridge/msdk/video/dynview/shape/a$c;

    move-result-object v0

    iget v1, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->d:F

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/video/dynview/shape/a$c;->a(F)Lcom/mbridge/msdk/video/dynview/shape/a$c;

    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->e:Lcom/mbridge/msdk/video/dynview/util/draw/a;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/util/draw/a;->a(Lcom/mbridge/msdk/video/dynview/util/draw/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->e:Lcom/mbridge/msdk/video/dynview/util/draw/a;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/util/draw/a;->a(Lcom/mbridge/msdk/video/dynview/util/draw/a;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/mbridge/msdk/video/dynview/util/draw/a$a$a;

    invoke-direct {v1, p0, v2}, Lcom/mbridge/msdk/video/dynview/util/draw/a$a$a;-><init>(Lcom/mbridge/msdk/video/dynview/util/draw/a$a;Lcom/mbridge/msdk/video/dynview/shape/a$b;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChoiceOneDrawBitBg"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method
