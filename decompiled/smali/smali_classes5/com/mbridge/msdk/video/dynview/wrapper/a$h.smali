.class Lcom/mbridge/msdk/video/dynview/wrapper/a$h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/dynview/wrapper/a;->c(Lcom/mbridge/msdk/video/dynview/c;Landroid/view/View;Ljava/util/Map;Lcom/mbridge/msdk/video/dynview/listener/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/mbridge/msdk/video/dynview/wrapper/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/dynview/wrapper/a;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$h;->b:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    iput-object p2, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$h;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$h;->b:Lcom/mbridge/msdk/video/dynview/wrapper/a;

    iget-object v0, p0, Lcom/mbridge/msdk/video/dynview/wrapper/a$h;->a:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/mbridge/msdk/video/dynview/wrapper/a;->b(Lcom/mbridge/msdk/video/dynview/wrapper/a;Ljava/util/Map;)V

    return-void
.end method
