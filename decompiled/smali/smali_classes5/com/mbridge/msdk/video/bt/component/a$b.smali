.class Lcom/mbridge/msdk/video/bt/component/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/bt/component/a;->j(Ljava/lang/Object;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Landroid/graphics/Rect;

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:Lcom/mbridge/msdk/video/bt/component/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/bt/component/a;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->i:Lcom/mbridge/msdk/video/bt/component/a;

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->f:Landroid/graphics/Rect;

    iput p8, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->g:I

    iput p9, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;

    iget-object v0, v0, Lcom/mbridge/msdk/mbsignalcommon/windvane/a;->b:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->getRid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->i:Lcom/mbridge/msdk/video/bt/component/a;

    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->i:Lcom/mbridge/msdk/video/bt/component/a;

    invoke-virtual {v3}, Lcom/mbridge/msdk/video/bt/component/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/a;->a()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v3}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setInstanceId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setUnitId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->c:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setFileURL(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->d:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setFilePath(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->e:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setHtml(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->f:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setRect(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setWebViewRid(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->setCreateWebView(Landroid/webkit/WebView;)V

    iget v0, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->g:I

    if-gtz v0, :cond_1

    iget v1, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->h:I

    if-lez v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->h:I

    invoke-virtual {v4, v0, v1}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setLayout(II)V

    :cond_2
    invoke-virtual {v4}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTWebView;->preload()V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->i:Lcom/mbridge/msdk/video/bt/component/a;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/component/a$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createWebview instanceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperateViews"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
