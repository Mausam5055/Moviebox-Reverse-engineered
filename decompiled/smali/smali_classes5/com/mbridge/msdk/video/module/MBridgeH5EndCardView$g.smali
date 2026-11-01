.class Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

.field final synthetic b:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$g;->b:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$g;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$g;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->e(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$g;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->c(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;Z)Z

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$g;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->t:Z

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$g;->b:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    const-string v1, "timeout"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->reportRenderResult(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$g;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    iget-object v0, v0, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    const/16 v1, 0x7f

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    const-string v0, "MBridgeBaseView"

    const-string v1, "notify TYPE_NOTIFY_SHOW_NATIVE_ENDCARD"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
