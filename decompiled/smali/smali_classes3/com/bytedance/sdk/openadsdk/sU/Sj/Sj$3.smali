.class Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$3;
.super Lcom/bytedance/sdk/openadsdk/sU/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/sU/Sj;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/openadsdk/sU/EjP;
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/sP;->vS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "5g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "4g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "3g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_4
    const-string v2, "2g"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/sU/EjP;->Jcg:Lcom/bytedance/sdk/openadsdk/sU/EjP;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/sU/EjP;->HiB:Lcom/bytedance/sdk/openadsdk/sU/EjP;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/sU/EjP;->EjP:Lcom/bytedance/sdk/openadsdk/sU/EjP;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/sU/EjP;->TKC:Lcom/bytedance/sdk/openadsdk/sU/EjP;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/sU/EjP;->sP:Lcom/bytedance/sdk/openadsdk/sU/EjP;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/sU/EjP;->Sj:Lcom/bytedance/sdk/openadsdk/sU/EjP;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x675 -> :sswitch_4
        0x694 -> :sswitch_3
        0x6b3 -> :sswitch_2
        0x6d2 -> :sswitch_1
        0x37af15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;Z)Z

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-virtual {p2, v1, p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj(II)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj(II)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-virtual {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj(II)V

    return-void
.end method

.method public Sj(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "is_new_playable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->WO()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "is_pre_render"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "pag_json_data"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    const-string v1, "PlayableManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->EjP(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "playable_track"

    invoke-static {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public sP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->sP(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/aa/vS;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$3;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->sP(Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/aa/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/aa/vS;->Sj()V

    :cond_0
    return-void
.end method
