.class public Lcom/bytedance/sdk/openadsdk/core/model/dNu;
.super Ljava/lang/Object;


# static fields
.field public static Sj:I = 0x1

.field public static sP:I = 0x2


# instance fields
.field private Dq:I

.field private EjP:I

.field private HiB:I

.field private Jcg:I

.field private TEQ:I

.field private TKC:I

.field private uA:I

.field private vS:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->TKC:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->EjP:I

    const/16 v0, 0x46

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->HiB:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->vS:I

    sget v0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Sj:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Jcg:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Dq:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->uA:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->TEQ:I

    return-void
.end method


# virtual methods
.method public Dq()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Jcg:I

    return v0
.end method

.method public Dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Jcg:I

    return-void
.end method

.method public EjP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->TKC:I

    return v0
.end method

.method public EjP(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->TKC:I

    return-void
.end method

.method public HiB()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->EjP:I

    return v0
.end method

.method public HiB(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->EjP:I

    return-void
.end method

.method public Jcg()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->vS:I

    return v0
.end method

.method public Jcg(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->vS:I

    return-void
.end method

.method public Sj()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->TEQ:I

    return v0
.end method

.method public Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    :try_start_0
    const-string v0, "ceiling_time"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->TKC:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "ceiling_ratio"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->EjP:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "expand_ratio"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->HiB:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "back_type"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->vS:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "boc_return_type"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Jcg:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "pre_render_status"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Dq:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "pre_render_use_gecko"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->uA:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "pre_render_add_type"

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->TEQ:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "InteractionParams"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->TEQ:I

    return-void
.end method

.method public Sj(Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Dq:I

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Dq:I

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v2
.end method

.method public TKC()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Dq:I

    return v0
.end method

.method public TKC(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->Dq:I

    return-void
.end method

.method public sP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->uA:I

    return v0
.end method

.method public sP(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->uA:I

    return-void
.end method

.method public vS()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->HiB:I

    return v0
.end method

.method public vS(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->HiB:I

    return-void
.end method
