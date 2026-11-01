.class Lcom/mbridge/msdk/mbbanner/common/manager/d$i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbbanner/common/manager/d;->q()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/mbbanner/common/manager/d;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbbanner/common/manager/d;)V
    .locals 0

    iput-object p1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$i;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$i;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c(Lcom/mbridge/msdk/mbbanner/common/manager/d;)Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$i;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {v0}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->d(Lcom/mbridge/msdk/mbbanner/common/manager/d;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "false"

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v0, "true"

    :goto_0
    iget-object v1, p0, Lcom/mbridge/msdk/mbbanner/common/manager/d$i;->a:Lcom/mbridge/msdk/mbbanner/common/manager/d;

    invoke-static {v1}, Lcom/mbridge/msdk/mbbanner/common/manager/d;->c(Lcom/mbridge/msdk/mbbanner/common/manager/d;)Lcom/mbridge/msdk/mbbanner/view/MBBannerWebView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(function() {\n    var videos = document.getElementsByTagName(\'video\');\n    for (var i = 0; i < videos.length; i++) {\n    videos[i].muted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";\n    }\n    var audios = document.getElementsByTagName(\'audio\');\n    for (var i = 0; i < audios.length; i++) {\n    audios[i].muted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";\n    }\n    })()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method
