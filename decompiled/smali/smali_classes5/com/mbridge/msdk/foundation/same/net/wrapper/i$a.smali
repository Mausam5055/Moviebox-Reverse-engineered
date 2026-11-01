.class Lcom/mbridge/msdk/foundation/same/net/wrapper/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/same/net/wrapper/i;->a(Lcom/mbridge/msdk/tracker/network/h;Lcom/mbridge/msdk/tracker/network/v;Lcom/mbridge/msdk/tracker/network/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/tracker/network/v;

.field final synthetic b:Lcom/mbridge/msdk/tracker/network/q;

.field final synthetic c:Lcom/mbridge/msdk/foundation/same/net/wrapper/i;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/foundation/same/net/wrapper/i;Lcom/mbridge/msdk/tracker/network/v;Lcom/mbridge/msdk/tracker/network/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/i$a;->c:Lcom/mbridge/msdk/foundation/same/net/wrapper/i;

    iput-object p2, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/i$a;->a:Lcom/mbridge/msdk/tracker/network/v;

    iput-object p3, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/i$a;->b:Lcom/mbridge/msdk/tracker/network/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/i$a;->c:Lcom/mbridge/msdk/foundation/same/net/wrapper/i;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/i;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/i;)Lcom/mbridge/msdk/foundation/same/net/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/i$a;->c:Lcom/mbridge/msdk/foundation/same/net/wrapper/i;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/net/wrapper/i;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/i;)Lcom/mbridge/msdk/foundation/same/net/b;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/i$a;->c:Lcom/mbridge/msdk/foundation/same/net/wrapper/i;

    iget-object v2, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/i$a;->a:Lcom/mbridge/msdk/tracker/network/v;

    iget-object v3, p0, Lcom/mbridge/msdk/foundation/same/net/wrapper/i$a;->b:Lcom/mbridge/msdk/tracker/network/q;

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/net/wrapper/i;->a(Lcom/mbridge/msdk/foundation/same/net/wrapper/i;Lcom/mbridge/msdk/tracker/network/v;Lcom/mbridge/msdk/tracker/network/q;)Lcom/mbridge/msdk/foundation/same/net/e;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/foundation/same/net/b;->onSuccess(Lcom/mbridge/msdk/foundation/same/net/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MBridgeRequestListenerWrapper"

    const-string v2, "onResponseSuccess error"

    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
