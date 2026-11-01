.class Lcom/bytedance/sdk/openadsdk/core/Yf$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/aa/EjP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf$sP;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lorg/json/JSONObject;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/Yf;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/Yf$sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/Yf$sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$6;->TKC:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$6;->Sj:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$6;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf$sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/sU;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$6;->Sj:Lorg/json/JSONObject;

    const-string v0, "creatives"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$6;->TKC:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$6;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf$sP;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->sP:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$6;->Sj:Lorg/json/JSONObject;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$6;->TKC:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$6;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf$sP;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/Yf$sP;->sP:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$6;->Sj:Lorg/json/JSONObject;

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
