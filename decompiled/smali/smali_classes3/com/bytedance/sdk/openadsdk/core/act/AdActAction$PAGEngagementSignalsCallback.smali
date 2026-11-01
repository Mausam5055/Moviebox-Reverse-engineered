.class public Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/browser/customtabs/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PAGEngagementSignalsCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGreatestScrollPercentageIncreased(ILandroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onSessionEnded(ZLandroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onVerticalScrollEvent(ZLandroid/os/Bundle;)V
    .locals 7
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;J)J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->sP(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "url"

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->TKC(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "down_time"

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->EjP(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)J

    move-result-wide v0

    invoke-virtual {v3, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v0, "up_time"

    invoke-virtual {v3, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "in_web_click"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->EjP(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)J

    move-result-wide v4

    sub-long v4, p1, v4

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "AdActAction"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->HiB(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->EjP(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP(J)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(J)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p2

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->HiB(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->uA(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->TKC(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->HiB(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Jcg(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->HiB(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Dq(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    move-result-object v2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x2

    const-string v0, "click"

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/lang/String;ZLjava/util/Map;I)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$PAGEngagementSignalsCallback;->this$0:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Z)Z

    :cond_2
    return-void
.end method
