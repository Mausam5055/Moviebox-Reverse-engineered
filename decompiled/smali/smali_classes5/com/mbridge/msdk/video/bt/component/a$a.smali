.class Lcom/mbridge/msdk/video/bt/component/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/bt/component/a;->i(Ljava/lang/Object;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/graphics/Rect;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/mbridge/msdk/video/bt/component/a;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/bt/component/a;Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Rect;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->f:Lcom/mbridge/msdk/video/bt/component/a;

    iput-object p2, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->c:Landroid/graphics/Rect;

    iput p5, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->d:I

    iput p6, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->a:Ljava/lang/Object;

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
    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->f:Lcom/mbridge/msdk/video/bt/component/a;

    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->f:Lcom/mbridge/msdk/video/bt/component/a;

    invoke-virtual {v3}, Lcom/mbridge/msdk/video/bt/component/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/mbridge/msdk/video/bt/component/a;->a()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setInstanceId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setUnitId(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/video/bt/module/MBridgeBTLayout;->setWebView(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setRect(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->d:I

    if-gtz v0, :cond_1

    iget v2, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->e:I

    if-lez v2, :cond_2

    :cond_1
    iget v2, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->e:I

    invoke-virtual {v1, v0, v2}, Lcom/mbridge/msdk/video/bt/module/BTBaseView;->setLayout(II)V

    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->f:Lcom/mbridge/msdk/video/bt/component/a;

    iget-object v1, p0, Lcom/mbridge/msdk/video/bt/component/a$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/mbridge/msdk/video/bt/component/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create view instanceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OperateViews"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
