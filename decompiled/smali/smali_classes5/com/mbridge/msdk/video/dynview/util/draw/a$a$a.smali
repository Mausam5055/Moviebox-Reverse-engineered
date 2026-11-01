.class Lcom/mbridge/msdk/video/dynview/util/draw/a$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/dynview/shape/a$b;

.field final synthetic b:Lcom/mbridge/msdk/video/dynview/util/draw/a$a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/util/draw/a$a;Lcom/mbridge/msdk/video/dynview/shape/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a$a;->b:Lcom/mbridge/msdk/video/dynview/util/draw/a$a;

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a$a;->a:Lcom/mbridge/msdk/video/dynview/shape/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a$a;->b:Lcom/mbridge/msdk/video/dynview/util/draw/a$a;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->e:Lcom/mbridge/msdk/video/dynview/util/draw/a;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/util/draw/a;->a(Lcom/mbridge/msdk/video/dynview/util/draw/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a$a;->a:Lcom/mbridge/msdk/video/dynview/shape/a$b;

    invoke-virtual {v0}, Lcom/mbridge/msdk/video/dynview/shape/a$b;->a()Lcom/mbridge/msdk/video/dynview/shape/a;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a$a;->b:Lcom/mbridge/msdk/video/dynview/util/draw/a$a;

    iget-object v0, v0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a;->e:Lcom/mbridge/msdk/video/dynview/util/draw/a;

    invoke-static {v0}, Lcom/mbridge/msdk/video/dynview/util/draw/a;->a(Lcom/mbridge/msdk/video/dynview/util/draw/a;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/util/draw/a$a$a;->a:Lcom/mbridge/msdk/video/dynview/shape/a$b;

    invoke-virtual {v1}, Lcom/mbridge/msdk/video/dynview/shape/a$b;->a()Lcom/mbridge/msdk/video/dynview/shape/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method
