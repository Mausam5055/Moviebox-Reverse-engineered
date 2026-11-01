.class Lcom/mbridge/msdk/tracker/m$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/tracker/m;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/tracker/m;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/tracker/m;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/m$a;->a:Lcom/mbridge/msdk/tracker/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/tracker/u;->a()Lcom/mbridge/msdk/tracker/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/u;->b()V

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/m$a;->a:Lcom/mbridge/msdk/tracker/m;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/m;->a(Lcom/mbridge/msdk/tracker/m;)Lcom/mbridge/msdk/tracker/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/k;->p()Lcom/mbridge/msdk/tracker/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/s;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "TrackManager"

    const-string v2, "flush error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
