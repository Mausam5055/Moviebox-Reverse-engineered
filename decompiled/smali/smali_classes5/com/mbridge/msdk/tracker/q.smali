.class Lcom/mbridge/msdk/tracker/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/tracker/l;


# instance fields
.field private final a:Lcom/mbridge/msdk/tracker/g;


# direct methods
.method public constructor <init>(Lcom/mbridge/msdk/tracker/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/tracker/q;->a:Lcom/mbridge/msdk/tracker/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/tracker/e;)V
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/q;->a:Lcom/mbridge/msdk/tracker/g;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/q;->a:Lcom/mbridge/msdk/tracker/g;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/tracker/g;->a(Lcom/mbridge/msdk/tracker/e;)V

    return-void
.end method

.method public a()[J
    .locals 1

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/q;->a:Lcom/mbridge/msdk/tracker/g;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/q;->a:Lcom/mbridge/msdk/tracker/g;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/g;->a()[J

    move-result-object v0

    return-object v0

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public b(Lcom/mbridge/msdk/tracker/e;)V
    .locals 2

    iget-object v0, p0, Lcom/mbridge/msdk/tracker/q;->a:Lcom/mbridge/msdk/tracker/g;

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/e;->e()Lcom/mbridge/msdk/tracker/h;

    move-result-object v0

    invoke-static {v0}, Lcom/mbridge/msdk/tracker/y;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Lcom/mbridge/msdk/tracker/h;->a(Lcom/mbridge/msdk/tracker/e;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/tracker/e;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/tracker/q;->a:Lcom/mbridge/msdk/tracker/g;

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/tracker/g;->b(Lcom/mbridge/msdk/tracker/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget-boolean v0, Lcom/mbridge/msdk/tracker/a;->a:Z

    if-eqz v0, :cond_2

    const-string v0, "TrackManager"

    const-string v1, "process event error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method
