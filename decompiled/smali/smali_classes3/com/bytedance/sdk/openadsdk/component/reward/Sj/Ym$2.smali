.class Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->Sj(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/util/Map;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

.field final synthetic sP:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;Ljava/util/Map;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->Sj:Ljava/util/Map;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->sP:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sef:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->Sj:Ljava/util/Map;

    if-eqz v4, :cond_1

    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->Sj:Ljava/util/Map;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :goto_0
    move-object v3, v4

    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :goto_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "width"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->sP:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "height"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->sP:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "alpha"

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->sP:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v5, "root_view"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    const-string v5, "TTAD.RFReportManager"

    const-string v6, "run: "

    invoke-static {v5, v6, v4}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v4

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    invoke-static {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->vS()V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v3

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->Sj:Ljava/util/Map;

    if-eqz v3, :cond_2

    const-string v4, "dynamic_show_type"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    new-instance v2, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v1

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->wE:Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/Dq;->uA()I

    move-result v1

    goto :goto_4

    :cond_3
    const/4 v1, -0x1

    :goto_4
    invoke-direct {v2, v1}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;-><init>(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym$2;->TKC:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Ym;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    move-result-object v1

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-void
.end method
