.class public Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;
.super Ljava/lang/Object;


# instance fields
.field private final Sj:I

.field private final TKC:F

.field private final sP:I


# direct methods
.method public constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;->Sj:I

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;->sP:I

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;->TKC:F

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;->Sj:I

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "height"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;->sP:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/kF/sP/Sj;->TKC:F

    float-to-double v1, p0

    const-string p0, "alpha"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-object v0
.end method
