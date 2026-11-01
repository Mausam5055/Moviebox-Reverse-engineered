.class public Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/vS/Sj/sP/TKC;


# instance fields
.field public Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/RiZ<",
            "Lcom/bytedance/sdk/openadsdk/EjP/Sj;",
            ">;"
        }
    .end annotation
.end field

.field private final sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    return-void
.end method

.method private EjP(Ljava/util/List;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;

    invoke-interface {v2}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->Jcg()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "app_log_url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;Ljava/util/List;)Ljava/util/HashMap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->EjP(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/EjP/HiB;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->Sj(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/EjP/HiB;)Z

    move-result p0

    return p0
.end method

.method private Sj(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/EjP/HiB;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/EjP/Sj;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/EjP/HiB;",
            ")Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->TKC(Ljava/util/List;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget p1, p2, Lcom/bytedance/sdk/openadsdk/EjP/HiB;->sP:I

    const/16 p2, 0x190

    if-lt p1, p2, :cond_1

    const/16 p2, 0x1f4

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private TKC(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/EjP/Sj;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/EjP/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj;->TKC()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "app_log_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public Sj(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/EjP/HiB;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/EjP/Sj;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/EjP/HiB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->TKC()Lcom/bytedance/sdk/openadsdk/core/RiZ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->gY()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    invoke-virtual {v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->Sj(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->sP()Lorg/json/JSONObject;

    move-result-object v8

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->Sj(Ljava/util/List;JLorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->Sj(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/RiZ;->Sj(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/EjP/HiB;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v1, 0x2

    if-ne v1, v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->sP()Lorg/json/JSONObject;

    move-result-object v10

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    invoke-virtual {v4, p1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->Sj(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v5

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    const/4 v9, 0x1

    move-wide v6, v0

    move-object v8, v10

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->Sj(Ljava/util/List;JLorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    invoke-virtual {v6, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->Sj(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/RiZ;->Sj(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/EjP/HiB;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->sP(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    const/4 v9, 0x0

    move-wide v6, v0

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->Sj(Ljava/util/List;JLorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->Sj(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/core/RiZ;->Sj(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/EjP/HiB;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->sP()Lorg/json/JSONObject;

    move-result-object v8

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->Sj(Ljava/util/List;JLorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->sP:Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TKC;->Sj(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1, v3}, Lcom/bytedance/sdk/openadsdk/core/RiZ;->Sj(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/EjP/HiB;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Ljava/util/List;Lcom/bytedance/sdk/component/vS/Sj/sP/sP;)V
    .locals 9
    .param p2    # Lcom/bytedance/sdk/component/vS/Sj/sP/sP;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;",
            ">;",
            "Lcom/bytedance/sdk/component/vS/Sj/sP/sP;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->zwV()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->EjP()B

    move-result v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$1;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$2;

    const/4 v3, 0x7

    const-string v4, "upload_ad_event"

    move-object v1, v0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$2;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;ILjava/lang/String;Ljava/util/List;Lcom/bytedance/sdk/component/vS/Sj/sP/sP;Ljava/util/List;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/sP;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->Jcg()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/Zq/TKC/TKC$Sj;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/vS/Sj/EjP/Sj;->TKC()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/Zq/TKC/TKC$Sj;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Sj/sP;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$3;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/dNu/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/dNu/EjP;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;

    const/4 v3, 0x6

    const-string v4, "upload_stats_event"

    move-object v1, v0

    move-object v2, p0

    move-object v6, p2

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ$4;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;ILjava/lang/String;Ljava/util/List;Lcom/bytedance/sdk/component/vS/Sj/sP/sP;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/TKC/sP;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public sP(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/EjP/HiB;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/Zq/TKC/TKC$Sj;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/EjP/HiB;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->TKC()Lcom/bytedance/sdk/openadsdk/core/RiZ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/uA;->Sj()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/Zq/TKC/TKC$Sj;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/Zq/TKC/TKC$Sj;->sP:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    const-string p1, "stats_list"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-string p1, "ts"

    invoke-virtual {v1, p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "ts_ms"

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/uA;->EjP()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ib;->Sj()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "7.1.1.4"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "-"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "req_sign"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "req_uniq"

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/TEQ;->Sj:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/RiZ;->sP(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/EjP/HiB;

    move-result-object p1

    return-object p1

    :catchall_0
    :cond_4
    :goto_1
    return-object v0
.end method
