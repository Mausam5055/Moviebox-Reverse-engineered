.class public Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;
.super Ljava/lang/Object;


# instance fields
.field private Dq:D

.field private EjP:Ljava/lang/String;

.field private Fmk:Ljava/lang/String;

.field private HiB:Ljava/lang/String;

.field private Jcg:Ljava/lang/String;

.field Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

.field private TEQ:I

.field TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

.field private Ym:Ljava/lang/String;

.field private Zq:Ljava/lang/String;

.field private final aa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;",
            ">;"
        }
    .end annotation
.end field

.field sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

.field private sef:Z

.field private uA:I

.field private vS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;-><init>(Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->aa:Ljava/util/Set;

    const-string v0, "VAST_ACTION_BUTTON"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Fmk:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sef:Z

    return-void
.end method

.method public static Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;-><init>()V

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    const-string v2, "videoTrackers"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(Lorg/json/JSONObject;)V

    const-string v1, "vastIcon"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    const-string v1, "endCard"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->sP(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->EjP:Ljava/lang/String;

    const-string v1, "description"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->HiB:Ljava/lang/String;

    const-string v1, "clickThroughUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->vS:Ljava/lang/String;

    const-string v1, "videoUrl"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Jcg:Ljava/lang/String;

    const-string v1, "videDuration"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Dq:D

    const-string v1, "tag"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Ym:Ljava/lang/String;

    const-string v1, "videoWidth"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->uA:I

    const-string v1, "videoHeight"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->uA:I

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->aa:Ljava/util/Set;

    const-string v2, "viewabilityVendor"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;->Sj(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private uvD()Lorg/json/JSONArray;
    .locals 3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->aa:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;->EjP()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public Dq()D
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Dq:D

    return-wide v0
.end method

.method public EjP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->EjP:Ljava/lang/String;

    return-object v0
.end method

.method public EjP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Jcg:Ljava/lang/String;

    return-void
.end method

.method public Fmk()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TEQ:I

    return v0
.end method

.method public HiB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->HiB:Ljava/lang/String;

    return-object v0
.end method

.method public HiB(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Fmk:Ljava/lang/String;

    return-void
.end method

.method public Jcg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Jcg:Ljava/lang/String;

    return-object v0
.end method

.method public Jcg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Zq:Ljava/lang/String;

    return-void
.end method

.method public Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    return-object v0
.end method

.method public Sj(D)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Dq:D

    return-void
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->uA:I

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/sP;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_1
    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->EjP:Ljava/lang/String;

    return-void
.end method

.method public Sj(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->aa:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public TEQ()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "videoTrackers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    if-eqz v1, :cond_0

    const-string v2, "vastIcon"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP;->Sj()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    if-eqz v1, :cond_1

    const-string v2, "endCard"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Sj()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "title"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->EjP:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "description"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->HiB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "clickThroughUrl"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->vS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "videoUrl"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "videDuration"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Dq:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "tag"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Ym:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "videoWidth"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->uA:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "videoHeight"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TEQ:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "viewabilityVendor"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->uvD()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public TKC()Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    return-object v0
.end method

.method public TKC(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->vS:Ljava/lang/String;

    return-void
.end method

.method public Ym()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Ym:Ljava/lang/String;

    return-object v0
.end method

.method public Zq()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sef:Z

    return-void
.end method

.method public aa()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->uA:I

    return v0
.end method

.method public sP()Lcom/bytedance/sdk/openadsdk/core/Ym/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    return-object v0
.end method

.method public sP(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TEQ:I

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->HiB:Ljava/lang/String;

    return-void
.end method

.method public sef()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/TEQ;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->aa:Ljava/util/Set;

    return-object v0
.end method

.method public uA()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->vS:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Zq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Zq:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Zq:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Fmk:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "VAST_ICON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "VAST_END_CARD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Dq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Dq:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Dq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC;->Dq:Ljava/lang/String;

    :cond_3
    :goto_0
    const-string v1, "VAST_ACTION_BUTTON"

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Fmk:Ljava/lang/String;

    return-object v0
.end method

.method public vS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->vS:Ljava/lang/String;

    return-object v0
.end method

.method public vS(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Ym:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(Ljava/lang/String;)V

    return-void
.end method
