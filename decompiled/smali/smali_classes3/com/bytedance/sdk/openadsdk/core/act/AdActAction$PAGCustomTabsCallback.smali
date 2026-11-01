.class public Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;
.super Landroidx/browser/customtabs/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PAGCustomTabsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-direct {p0}, Landroidx/browser/customtabs/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 12
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    const-string p2, "AdActAction"

    const/4 v2, 0x0

    const-string v3, "render_type_2"

    const-string v4, "h5"

    const-string v5, "render_type"

    const/4 v6, 0x1

    if-eq p1, v6, :cond_3

    const/4 v7, 0x2

    const-string v8, "preload_h5_type"

    const-string v9, "url"

    if-eq p1, v7, :cond_2

    const/4 v7, 0x3

    if-eq p1, v7, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TEQ(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Ym(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->uA(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Jcg(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Dq(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Dq(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;JII)V

    goto/16 :goto_0

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->uA(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    if-eqz p1, :cond_4

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->rd()I

    move-result v2

    invoke-virtual {p1, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    const-string v3, "load_fail"

    invoke-static {v2, v3, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Ljava/lang/String;Lorg/json/JSONObject;J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1, v6}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->EjP(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Jcg(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Dq(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Dq(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v0, v10

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v7, "first_page"

    invoke-virtual {p1, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->rd()I

    move-result v2

    invoke-virtual {p1, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    const-string v3, "load_finish"

    invoke-static {v2, v3, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Ljava/lang/String;Lorg/json/JSONObject;J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1, v6}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Ljava/lang/Long;)Ljava/lang/Long;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->vS(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    const-string v3, "load_start"

    invoke-static {v2, v3, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Ljava/lang/String;Lorg/json/JSONObject;J)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGCustomTabsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1, v6}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sP(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
