.class Lcom/mbridge/msdk/video/dynview/ui/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/video/dynview/listener/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/ui/a;->a(Lcom/mbridge/msdk/video/dynview/c;Lcom/mbridge/msdk/video/dynview/listener/h;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/dynview/listener/h;

.field final synthetic b:Lcom/mbridge/msdk/video/dynview/ui/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/ui/a;Lcom/mbridge/msdk/video/dynview/listener/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/ui/a$a;->b:Lcom/mbridge/msdk/video/dynview/ui/a;

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/ui/a$a;->a:Lcom/mbridge/msdk/video/dynview/listener/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/mbridge/msdk/video/dynview/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/video/dynview/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/dynview/a;->a(Landroid/view/View;)V

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/video/dynview/a;->a(Ljava/util/List;)V

    invoke-static {}, Lcom/mbridge/msdk/video/dynview/ui/a;->a()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/video/dynview/a;->a(Z)V

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/ui/a$a;->a:Lcom/mbridge/msdk/video/dynview/listener/h;

    invoke-interface {p1, v0}, Lcom/mbridge/msdk/video/dynview/listener/h;->a(Lcom/mbridge/msdk/video/dynview/a;)V

    return-void
.end method

.method public a(Lcom/mbridge/msdk/video/dynview/error/a;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/ui/a$a;->a:Lcom/mbridge/msdk/video/dynview/listener/h;

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/video/dynview/listener/h;->a(Lcom/mbridge/msdk/video/dynview/error/a;)V

    return-void
.end method
