.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;
.super Ljava/lang/Object;


# instance fields
.field private final Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private EjP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field private Fmk:Z

.field private HiB:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field private final Jcg:Landroid/content/Context;

.field private Sj:I

.field private TEQ:Lcom/bytedance/sdk/openadsdk/core/widget/HiB;

.field private TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field private Ym:Lorg/json/JSONObject;

.field private Zq:Z

.field private final aa:Lorg/json/JSONObject;

.field private sP:I

.field private sef:Z

.field private final uA:Ljava/lang/String;

.field private uvD:Lorg/json/JSONArray;

.field private final vS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->sP:I

    const-string v0, "UGenSwiperEvent"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->vS:Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Jcg:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->uA:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->aa:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->sP:I

    return p1
.end method

.method private Sj(Landroid/view/View;)Landroid/content/Context;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/view/View;)Landroid/app/Activity;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Jcg:Landroid/content/Context;

    :cond_1
    return-object p1
.end method

.method private Sj(I)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->uA:Ljava/lang/String;

    const-string v2, "carousel_show"

    invoke-static {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private Sj(Landroid/widget/TextView;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p2, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(ZZZ)V

    return-void
.end method

.method private Sj(Lorg/json/JSONObject;Landroid/view/View;)V
    .locals 9

    const-string v0, "landingStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fallback_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(Landroid/view/View;)Landroid/content/Context;

    move-result-object v1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Jcg:Landroid/content/Context;

    instance-of v2, p2, Landroid/app/Activity;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->uA:Ljava/lang/String;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;)I

    move-result v6

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->uA:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->TEQ:Lcom/bytedance/sdk/openadsdk/core/widget/HiB;

    move-object v3, p1

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/TzV;->Sj(Landroid/content/Context;ZLorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ILandroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)V

    return-void
.end method

.method private Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "clickInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Ym:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :catchall_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Ym:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Ym:Lorg/json/JSONObject;

    invoke-static {v3, p2}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Ym:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_2
    :goto_1
    return-void
.end method

.method private Sj(ZZZ)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->uvD:Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    if-nez p1, :cond_7

    const/16 p1, 0x5a

    const/16 v2, 0xff

    if-eqz p2, :cond_3

    instance-of p2, v0, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(Landroid/widget/TextView;I)V

    :cond_2
    instance-of p1, v1, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(Landroid/widget/TextView;I)V

    return-void

    :cond_3
    if-eqz p3, :cond_5

    instance-of p2, v0, Landroid/widget/TextView;

    if-eqz p2, :cond_4

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(Landroid/widget/TextView;I)V

    :cond_4
    instance-of p2, v1, Landroid/widget/TextView;

    if-eqz p2, :cond_7

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(Landroid/widget/TextView;I)V

    return-void

    :cond_5
    instance-of p1, v0, Landroid/widget/TextView;

    if-eqz p1, :cond_6

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(Landroid/widget/TextView;I)V

    :cond_6
    instance-of p1, v1, Landroid/widget/TextView;

    if-eqz p1, :cond_7

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(Landroid/widget/TextView;I)V

    :cond_7
    :goto_0
    return-void
.end method

.method private Sj(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p3, 0x3

    if-eq p1, p3, :cond_2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p3}, Lcom/bytedance/sdk/component/utils/TzV;->Sj(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/bytedance/sdk/component/utils/TzV;->Sj(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    return v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Fmk:Z

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(I)V

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Zq:Z

    return p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj:I

    return p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->sef:Z

    return p1
.end method


# virtual methods
.method public EjP()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Ym:Lorg/json/JSONObject;

    return-object v0
.end method

.method public Sj()V
    .locals 3

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Fmk:Z

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->sef:Z

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Zq:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(ZZZ)V

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "swiperLayout"

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->HiB:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    instance-of v0, v0, Lcom/bytedance/adsdk/ugeno/TKC;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->aa:Lorg/json/JSONObject;

    const-string v1, "dpa_data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->uvD:Lorg/json/JSONArray;

    const-string v0, "swiperLeftArrow"

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    const-string v0, "swiperRightArrow"

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->EjP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->HiB:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    check-cast p1, Lcom/bytedance/adsdk/ugeno/TKC;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/vS/TKC;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->TEQ:Lcom/bytedance/sdk/openadsdk/core/widget/HiB;

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;)Z
    .locals 8

    const-string v0, "fallback_url"

    const-string v1, "url"

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Ym:Lorg/json/JSONObject;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->sP:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v5, "related_dpa_click"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v5, "enableOpenExternalUrl"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "landingStyle"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v5, :cond_3

    if-ne v6, v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->uvD:Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->uvD:Lorg/json/JSONArray;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->sP:I

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->uvD:Lorg/json/JSONArray;

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->sP:I

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->uvD:Lorg/json/JSONArray;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->sP:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->Sj()Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(Lorg/json/JSONObject;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v3

    :goto_2
    const-string v0, "UGenSwiperEvent"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    return v3
.end method

.method public TKC()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->HiB:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    instance-of v1, v0, Lcom/bytedance/adsdk/ugeno/TKC;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/TKC;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/TKC;->Sj(I)V

    :cond_0
    return-void
.end method

.method public sP()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->HiB:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    instance-of v1, v0, Lcom/bytedance/adsdk/ugeno/TKC;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/TKC;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/TKC;->Sj(I)V

    :cond_0
    return-void
.end method
