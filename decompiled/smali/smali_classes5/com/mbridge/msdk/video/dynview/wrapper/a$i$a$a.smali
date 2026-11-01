.class Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a$a;->b:Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a;

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a$a;->b:Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a;->b:Lcom/mbridge/msdk/video/dynview/wrapper/a$i;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$i$a$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
