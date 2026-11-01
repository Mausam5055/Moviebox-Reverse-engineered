.class Lcom/mbridge/msdk/foundation/same/image/d$c$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/same/image/d$c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mbridge/msdk/foundation/same/image/d$c;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/image/d$c;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/image/d$c$b;->b:Lcom/mbridge/msdk/foundation/same/image/d$c;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/image/d$c$b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/image/d$c$b;->b:Lcom/mbridge/msdk/foundation/same/image/d$c;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/image/d$c;->c(Lcom/mbridge/msdk/foundation/same/image/d$c;)Lcom/mbridge/msdk/foundation/same/image/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/image/d$c$b;->b:Lcom/mbridge/msdk/foundation/same/image/d$c;

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/same/image/d$c;->b(Lcom/mbridge/msdk/foundation/same/image/d$c;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/image/d$c$b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/image/c;->onFailedLoad(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "CommonImageLoaderRefactor"

    const-string v2, "callbackForFailed error"

    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
