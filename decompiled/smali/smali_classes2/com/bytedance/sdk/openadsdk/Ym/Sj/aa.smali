.class public Lcom/bytedance/sdk/openadsdk/Ym/Sj/aa;
.super Lcom/bytedance/sdk/component/Sj/HiB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/Sj/HiB<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Yf;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj/HiB;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/aa;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/openadsdk/core/Yf;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/aa;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/aa;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;)V

    const-string p1, "commonConvert"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/HiB;)Lcom/bytedance/sdk/component/Sj/dNu;

    return-void
.end method


# virtual methods
.method public bridge synthetic Sj(Ljava/lang/Object;Lcom/bytedance/sdk/component/Sj/vS;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/aa;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Sj/vS;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Sj/vS;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/aa;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->vS(Lorg/json/JSONObject;)V

    const/4 p1, 0x0

    return-object p1
.end method
