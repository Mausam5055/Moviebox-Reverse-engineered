.class Lcom/mbridge/msdk/tracker/m$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/tracker/m;->d(Lcom/mbridge/msdk/tracker/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/tracker/e;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/mbridge/msdk/tracker/m;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/tracker/m;Lcom/mbridge/msdk/tracker/e;Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/m$b;->c:Lcom/mbridge/msdk/tracker/m;

    iput-object p2, p0, Lcom/mbridge/msdk/tracker/m$b;->a:Lcom/mbridge/msdk/tracker/e;

    iput-object p3, p0, Lcom/mbridge/msdk/tracker/m$b;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/m$b;->c:Lcom/mbridge/msdk/tracker/m;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/m;->a(Lcom/mbridge/msdk/tracker/m;)Lcom/mbridge/msdk/tracker/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/k;->g()Lcom/mbridge/msdk/tracker/l;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/tracker/m$b;->a:Lcom/mbridge/msdk/tracker/e;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/tracker/l;->a(Lcom/mbridge/msdk/tracker/e;)V

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/m$b;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "session_id"

    iget-object v2, p0, Lcom/mbridge/msdk/tracker/m$b;->c:Lcom/mbridge/msdk/tracker/m;

    invoke-virtual {v2}, Lcom/mbridge/msdk/tracker/m;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/m$b;->c:Lcom/mbridge/msdk/tracker/m;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/m;->e()[J

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/tracker/m$b;->b:Lorg/json/JSONObject;

    const-string v2, "track_time"

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/mbridge/msdk/tracker/m$b;->b:Lorg/json/JSONObject;

    const-string v2, "track_count"

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/m$b;->a:Lcom/mbridge/msdk/tracker/e;

    iget-object v1, p0, Lcom/mbridge/msdk/tracker/m$b;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/tracker/e;->a(Lorg/json/JSONObject;)V

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/m$b;->a:Lcom/mbridge/msdk/tracker/e;

    iget-object v1, p0, Lcom/mbridge/msdk/tracker/m$b;->c:Lcom/mbridge/msdk/tracker/m;

    invoke-static {v1}, Lcom/mbridge/msdk/tracker/m;->a(Lcom/mbridge/msdk/tracker/m;)Lcom/mbridge/msdk/tracker/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/tracker/k;->b()Lcom/mbridge/msdk/tracker/x;

    move-result-object v1

    iget v1, v1, Lcom/mbridge/msdk/tracker/x;->f:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/tracker/e;->b(J)V

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/m$b;->c:Lcom/mbridge/msdk/tracker/m;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/m;->a(Lcom/mbridge/msdk/tracker/m;)Lcom/mbridge/msdk/tracker/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/k;->g()Lcom/mbridge/msdk/tracker/l;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/tracker/m$b;->a:Lcom/mbridge/msdk/tracker/e;

    invoke-interface {v0, v1}, Lcom/mbridge/msdk/tracker/l;->b(Lcom/mbridge/msdk/tracker/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
