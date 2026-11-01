.class Lcom/bytedance/sdk/openadsdk/sU/vS$53;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/sU/vS$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/sU/vS;->TKC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/sU/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/vS$53;->Sj:Lcom/bytedance/sdk/openadsdk/sU/vS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/vS$53;->Sj:Lcom/bytedance/sdk/openadsdk/sU/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/vS;->Sj(Lcom/bytedance/sdk/openadsdk/sU/vS;)Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "code"

    if-nez v0, :cond_0

    const/4 p1, -0x1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/sU/Dq;->Jcg(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object p1
.end method
