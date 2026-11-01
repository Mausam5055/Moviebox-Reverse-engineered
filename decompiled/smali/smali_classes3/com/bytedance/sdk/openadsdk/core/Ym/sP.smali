.class public Lcom/bytedance/sdk/openadsdk/core/Ym/sP;
.super Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;


# instance fields
.field private TEQ:J

.field private Ym:J


# direct methods
.method public constructor <init>(IIJJLcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v9, p0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;-><init>(IILcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    move-wide v0, p3

    iput-wide v0, v9, Lcom/bytedance/sdk/openadsdk/core/Ym/sP;->TEQ:J

    move-wide v0, p5

    iput-wide v0, v9, Lcom/bytedance/sdk/openadsdk/core/Ym/sP;->Ym:J

    const-string v0, "icon_click"

    iput-object v0, v9, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->uA:Ljava/lang/String;

    return-void
.end method

.method public static Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/Ym/sP;
    .locals 18

    move-object/from16 v0, p0

    invoke-static/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->sP(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v2, "offset"

    const-wide/16 v3, -0x1

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v2, "duration"

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    iget v6, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj:I

    iget v7, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->sP:I

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->EjP:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;

    iget-object v14, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->HiB:Ljava/lang/String;

    iget-object v15, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->vS:Ljava/util/List;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Jcg:Ljava/util/List;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Dq:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v1

    invoke-direct/range {v5 .. v17}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP;-><init>(IIJJLcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$Sj;Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/Sj$sP;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public Sj()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "offset"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP;->TEQ:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "duration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP;->Ym:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method
