.class Lcom/mbridge/msdk/video/dynview/wrapper/a$e;
.super Lcom/mbridge/msdk/widget/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/wrapper/a;->a(Lcom/mbridge/msdk/video/dynview/c;Landroid/view/View;Ljava/util/Map;Lcom/mbridge/msdk/video/dynview/listener/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/mbridge/msdk/video/dynview/wrapper/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/wrapper/a;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$e;->d:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$e;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$e;->c:Ljava/util/List;

    invoke-direct {p0}, Lcom/mbridge/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$e;->d:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    invoke-static {p1}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->f(Lcom/mbridge/msdk/video/dynview/wrapper/a;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$e;->d:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->b(Lcom/mbridge/msdk/video/dynview/wrapper/a;Z)Z

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$e;->d:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    iget-object v1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$e;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$e;->c:Ljava/util/List;

    invoke-static {p1, v1, v2, v0}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->a(Lcom/mbridge/msdk/video/dynview/wrapper/a;Ljava/util/Map;Ljava/util/List;I)V

    :cond_0
    return-void
.end method
