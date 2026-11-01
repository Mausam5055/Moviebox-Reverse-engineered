.class public Lcom/bytedance/sdk/openadsdk/core/model/ib;
.super Ljava/lang/Object;


# instance fields
.field public Dq:I
    .annotation build Lcom/bytedance/sdk/openadsdk/core/model/NetExtParams$RenderType;
    .end annotation
.end field

.field public EjP:I

.field public HiB:Lorg/json/JSONArray;

.field public Jcg:Lorg/json/JSONObject;

.field public final Sj:Ljava/lang/String;

.field public TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

.field public TKC:I

.field public sP:I

.field public final uA:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

.field public vS:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Sj:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->sP:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->TKC:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->EjP:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->HiB:Lorg/json/JSONArray;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Jcg:Lorg/json/JSONObject;

    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Dq:I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->sP()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ib;->uA:Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    return-void
.end method
