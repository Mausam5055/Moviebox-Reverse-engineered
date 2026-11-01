.class Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->onSuccessLoad(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/mbridge/msdk/video/dynview/wrapper/a$i;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/wrapper/a$i;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a;->b:Lcom/mbridge/msdk/video/dynview/wrapper/a$i;

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a;->a:Landroid/graphics/Bitmap;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/y;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a;->b:Lcom/mbridge/msdk/video/dynview/wrapper/a$i;

    iget-object v1, v1, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->b:Landroid/widget/ImageView;

    new-instance v2, Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a$a;

    invoke-direct {v2, p0, v0}, Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a$a;-><init>(Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataEnergizeWrapper"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
