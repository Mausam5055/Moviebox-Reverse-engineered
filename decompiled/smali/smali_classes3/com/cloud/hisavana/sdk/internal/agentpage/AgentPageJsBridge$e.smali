.class public final Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cloud/hisavana/sdk/internal/agentpage/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->p(Lcom/cloud/hisavana/sdk/internal/agentpage/b;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$e;->a:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;

    iput-object p2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$e;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 4

    const-string v0, "ads"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/gsonutil/GsonUtil;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$e;->a:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$e;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->access$getCallbackJson(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$e;->a:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->access$getWebviewRefer$p(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$e;->a:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "javascript:window.HisavanaAdJsBridgeCallback("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->executeJavascript(Landroid/webkit/WebView;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/cloud/hisavana/sdk/e4;->b()Lcom/cloud/hisavana/sdk/e4;

    move-result-object v0

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$e;->a:Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;

    invoke-static {v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->access$getTAG$p(Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
