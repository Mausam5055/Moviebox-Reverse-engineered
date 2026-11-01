.class public Lcom/mbridge/msdk/video/signal/impl/i;
.super Lcom/mbridge/msdk/video/signal/impl/b;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:I


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    invoke-direct {p0}, Lcom/mbridge/msdk/video/signal/impl/b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/i;->b:I

    iput-object p1, p0, Lcom/mbridge/msdk/video/signal/impl/i;->a:Landroid/webkit/WebView;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/mbridge/msdk/video/signal/impl/i;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/impl/b;->a(I)V

    iput p1, p0, Lcom/mbridge/msdk/video/signal/impl/i;->b:I

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/mbridge/msdk/video/signal/impl/b;->a(Landroid/content/res/Configuration;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    const-string v2, "orientation"

    if-ne p1, v1, :cond_0

    :try_start_1
    const-string p1, "landscape"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "portrait"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/impl/i;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public b()V
    .locals 4

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/impl/b;->b()V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/impl/i;->a:Landroid/webkit/WebView;

    const-string v2, "onSystemDestory"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 4

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/impl/b;->d()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/i;->b:I

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/impl/i;->a:Landroid/webkit/WebView;

    const-string v2, "onSystemResume"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e()V
    .locals 4

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/impl/b;->e()V

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/impl/i;->a:Landroid/webkit/WebView;

    const-string v2, "onSystemBackPressed"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g()V
    .locals 4

    invoke-super {p0}, Lcom/mbridge/msdk/video/signal/impl/b;->g()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/mbridge/msdk/video/signal/impl/i;->b:I

    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    move-result-object v0

    iget-object v1, p0, Lcom/mbridge/msdk/video/signal/impl/i;->a:Landroid/webkit/WebView;

    const-string v2, "onSystemPause"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
