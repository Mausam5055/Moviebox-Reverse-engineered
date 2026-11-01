.class Lcom/mbridge/msdk/foundation/same/image/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/same/image/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/g;Lcom/mbridge/msdk/foundation/same/image/c;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mbridge/msdk/foundation/same/image/c;

.field final synthetic c:Lcom/mbridge/msdk/foundation/same/image/d;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/image/d;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/g;Lcom/mbridge/msdk/foundation/same/image/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/image/d$a;->c:Lcom/mbridge/msdk/foundation/same/image/d;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/image/d$a;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/foundation/same/image/d$a;->b:Lcom/mbridge/msdk/foundation/same/image/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/image/d$a;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/m0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/image/d$a;->c:Lcom/mbridge/msdk/foundation/same/image/d;

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/image/d$a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/image/d$a;->b:Lcom/mbridge/msdk/foundation/same/image/c;

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v4, v3}, Lcom/mbridge/msdk/foundation/same/image/d;->a(Lcom/mbridge/msdk/foundation/same/image/d;Ljava/lang/String;Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/g;Lcom/mbridge/msdk/foundation/same/image/c;)Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;

    move-result-object v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CommonImageLoaderRefactor"

    const-string v1, "createDownloadRequest error"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/image/d$a;->b:Lcom/mbridge/msdk/foundation/same/image/c;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/mbridge/msdk/foundation/same/image/d$a$a;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/same/image/d$a$a;-><init>(Lcom/mbridge/msdk/foundation/same/image/d$a;)V

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/image/d$a;->c:Lcom/mbridge/msdk/foundation/same/image/d;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/image/d;->a(Lcom/mbridge/msdk/foundation/same/image/d;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/download/core/DownloadRequest;->start()Ljava/lang/String;

    :goto_0
    return-void
.end method
