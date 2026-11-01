.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/core/Fmk;
.implements Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj$Sj;


# static fields
.field protected static Sj:I = 0x8


# instance fields
.field private Dq:Ljava/lang/String;

.field private final EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private Fmk:Landroid/view/View;

.field private final HiB:Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

.field private Jcg:Ljava/lang/String;

.field private RiZ:J

.field private final TEQ:Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;

.field private final TKC:Landroid/app/Activity;

.field private TzV:J

.field private Ym:Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/Sj;

.field private Zq:F

.field private aa:Ljava/lang/String;

.field private dNu:F

.field private sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;

.field private sU:Z

.field private sef:F

.field private uA:Lorg/json/JSONObject;

.field private uvD:F

.field private vS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sU:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TKC:Landroid/app/Activity;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->aa:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TEQ:Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->uA:Lorg/json/JSONObject;

    return-object p0
.end method

.method private Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 13

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "down_x"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sef:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "down_y"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Zq:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "down_time"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TzV:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "up_x"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->uvD:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "up_y"

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->dNu:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "up_time"

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->RiZ:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->Sj()Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "height"

    const-string v3, "width"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v1, :cond_0

    :try_start_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    new-array v8, v6, [I

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v8, v4

    int-to-float v1, v1

    aget v8, v8, v5

    int-to-float v8, v8

    float-to-double v11, v9

    invoke-virtual {v7, v3, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    float-to-double v9, v10

    invoke-virtual {v7, v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v9, "left"

    float-to-double v10, v1

    invoke-virtual {v7, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "top"

    float-to-double v8, v8

    invoke-virtual {v7, v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "rectInfo"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Fmk:Landroid/view/View;

    if-eqz v1, :cond_1

    new-array v7, v6, [I

    invoke-virtual {v1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    const-string v1, "button_x"

    aget v8, v7, v4

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "button_y"

    aget v7, v7, v5

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "button_width"

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Fmk:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "button_height"

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Fmk:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TKC:Landroid/app/Activity;

    const v7, 0x1020002

    invoke-virtual {v1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    new-array v7, v6, [I

    invoke-virtual {v1, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    const-string v8, "ad_x"

    aget v4, v7, v4

    invoke-virtual {v0, v8, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "ad_y"

    aget v7, v7, v5

    invoke-virtual {v0, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "click_area_type"

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->Sj()Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->WMZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "brick_id"

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->Sj()Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->JcM()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "endcard_id"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->vS:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "click_scence"

    invoke-virtual {v0, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "user_behavior_type"

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sU:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v5, v6

    :goto_0
    invoke-virtual {v0, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Ym:Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/Sj;

    if-eqz p1, :cond_4

    const-string v1, "endcard_type"

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/Sj;->Sj()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->aa:Ljava/lang/String;

    const-string v1, "click"

    invoke-static {p2, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method private Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj$Sj;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/Fmk;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TEQ:Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;->Sj()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;->Sj(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/EjP;)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;)Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TEQ:Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;

    return-object p0
.end method

.method private sP()V
    .locals 10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TKC:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aNB()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->sP(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TKC:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->aa:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Jcg;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;->EjP()V

    return-void

    :cond_2
    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "play.google.com/store"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "?id="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TKC:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->aa:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2, v0, v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/EjP;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TKC:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->aa:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Ljava/lang/String;)I

    move-result v3

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->aa:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TKC:Landroid/app/Activity;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v4, v6}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Jcg;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;ZI)Z

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const-string v1, "net"

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TEQ:Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;

    const-string v3, "material is null"

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/TKC;->Sj(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TEQ:Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;

    const-string v3, "material ugen template is null"

    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/TKC;->Sj(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TKC:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sP:Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/Sj;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->TKC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Dq:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->Sj()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->vS:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Jcg/Sj;->sP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Jcg:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->SP()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->uA:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TEQ:Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/sP;

    const-string v1, "endcard"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/TKC;->Sj(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;->Sj()Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;

    move-result-object v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Dq:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->vS:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Jcg:Ljava/lang/String;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP$1;

    invoke-direct {v8, p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;)V

    const-string v3, "endcard"

    const-string v7, ""

    invoke-virtual/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TEQ/Sj/sP$Sj;)V

    return-void
.end method

.method public Sj(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Fmk:Landroid/view/View;

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;)V
    .locals 3

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "creative"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "close"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "privacy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TKC:Landroid/app/Activity;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sP()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TKC:Landroid/app/Activity;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;->EjP()V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Ym:Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/Sj;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/Sj;->sP()V

    goto :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TKC:Landroid/app/Activity;

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->JcM()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TKC:Landroid/app/Activity;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->EjP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->aa:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x12bedc78 -> :sswitch_2
        0x5a5ddf8 -> :sswitch_1
        0x6c816faf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sef:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-gez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Zq:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p2, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_5

    :cond_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sU:Z

    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->uvD:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->dNu:F

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->uvD:F

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sef:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p2, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-gez p1, :cond_3

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->dNu:F

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Zq:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget p2, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Sj:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_4

    :cond_3
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sU:Z

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->RiZ:J

    :cond_5
    :goto_0
    return-void

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->TzV:J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sef:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Zq:F

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->sU:Z

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP/sP;->Ym:Lcom/bytedance/sdk/openadsdk/core/TEQ/vS/Sj;

    return-void
.end method
