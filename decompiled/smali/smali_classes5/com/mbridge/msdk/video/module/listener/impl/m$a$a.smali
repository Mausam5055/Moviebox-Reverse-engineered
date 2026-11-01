.class Lcom/mbridge/msdk/video/module/listener/impl/m$a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/listener/impl/m$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/module/listener/impl/m$a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/listener/impl/m$a;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/video/module/listener/impl/m$a$a;->a:Lcom/mbridge/msdk/video/module/listener/impl/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/listener/impl/m$a$a;->a:Lcom/mbridge/msdk/video/module/listener/impl/m$a;

    iget-object v0, v0, Lcom/mbridge/msdk/video/module/listener/impl/m$a;->a:Lcom/mbridge/msdk/video/module/listener/impl/m;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/listener/impl/m;->a(Lcom/mbridge/msdk/video/module/listener/impl/m;)Lcom/mbridge/msdk/video/module/MBridgeContainerView;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/video/module/MBridgeContainerView;->showVideoClickView(I)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/module/listener/impl/m$a$a;->a:Lcom/mbridge/msdk/video/module/listener/impl/m$a;

    iget-object v0, v0, Lcom/mbridge/msdk/video/module/listener/impl/m$a;->a:Lcom/mbridge/msdk/video/module/listener/impl/m;

    invoke-static {v0}, Lcom/mbridge/msdk/video/module/listener/impl/m;->b(Lcom/mbridge/msdk/video/module/listener/impl/m;)Lcom/mbridge/msdk/video/module/MBridgeVideoView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/video/module/MBridgeVideoView;->soundOperate(II)V

    return-void
.end method
