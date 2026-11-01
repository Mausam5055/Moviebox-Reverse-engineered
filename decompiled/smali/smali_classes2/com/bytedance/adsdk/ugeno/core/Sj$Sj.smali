.class public Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/core/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field private Dq:[F

.field private EjP:J

.field private HiB:Ljava/lang/String;

.field private Jcg:F

.field private Sj:J

.field private TEQ:Ljava/lang/String;

.field private TKC:Ljava/lang/String;

.field private sP:F

.field private uA:Ljava/lang/String;

.field private vS:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Sj(Lorg/json/JSONObject;Lcom/bytedance/adsdk/ugeno/sP/TKC;)Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;

    invoke-direct {v1}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;-><init>()V

    const-string v2, "duration"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Sj(J)V

    const-string v2, "loop"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "infinite"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Sj(F)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Sj(F)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Sj(F)V

    :goto_0
    const-string v2, "loopMode"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Sj(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->sP(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->HiB()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ripple"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "rippleColor"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->TKC(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_3
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->HiB()Ljava/lang/String;

    move-result-object v2

    const-string v3, "backgroundColor"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "translateY"

    const-string v4, "translateX"

    const-string v5, "valueFrom"

    const-string v6, "valueTo"

    if-eqz v2, :cond_4

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->aa()Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;)I

    move-result v5

    invoke-static {v2}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;)I

    move-result v2

    int-to-float v5, v5

    invoke-virtual {v1, v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->sP(F)V

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->TKC(F)V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->HiB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->HiB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    if-eqz v0, :cond_6

    :try_start_1
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v2, v7

    invoke-static {v0, v2}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v0, v5}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result v5

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->sP(F)V

    invoke-virtual {v1, v5}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->TKC(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v2, "animation"

    const-string v5, "animation "

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v2, v7

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->sP(F)V

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    double-to-float v2, v5

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->TKC(F)V

    :goto_1
    const-string v2, "interpolator"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->EjP(Ljava/lang/String;)V

    const-string v2, "startDelay"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->aa()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/bytedance/adsdk/ugeno/TKC/sP;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-static {v2, v5, v6}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->sP(J)V

    const-string v2, "values"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [F

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->HiB()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_7

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->HiB()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    if-eqz v0, :cond_8

    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v5, v3, :cond_9

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->aa()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/adsdk/ugeno/core/Sj;->Sj(Ljava/lang/Object;Lorg/json/JSONObject;)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v0, v3}, Lcom/bytedance/adsdk/ugeno/Jcg/Dq;->Sj(Landroid/content/Context;F)F

    move-result v3

    aput v3, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_9

    invoke-virtual {p0, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->aa()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/adsdk/ugeno/core/Sj;->Sj(Ljava/lang/Object;Lorg/json/JSONObject;)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Sj([F)V

    :cond_a
    return-object v1
.end method


# virtual methods
.method public Dq()[F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Dq:[F

    return-object v0
.end method

.method public EjP()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->EjP:J

    return-wide v0
.end method

.method public EjP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->uA:Ljava/lang/String;

    return-void
.end method

.method public HiB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->HiB:Ljava/lang/String;

    return-object v0
.end method

.method public Jcg()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Jcg:F

    return v0
.end method

.method public Sj()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Sj:J

    return-wide v0
.end method

.method public Sj(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->sP:F

    return-void
.end method

.method public Sj(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Sj:J

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->TKC:Ljava/lang/String;

    return-void
.end method

.method public Sj([F)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Dq:[F

    return-void
.end method

.method public TEQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->TEQ:Ljava/lang/String;

    return-object v0
.end method

.method public TKC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->TKC:Ljava/lang/String;

    return-object v0
.end method

.method public TKC(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->Jcg:F

    return-void
.end method

.method public TKC(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->TEQ:Ljava/lang/String;

    return-void
.end method

.method public sP()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->sP:F

    return v0
.end method

.method public sP(F)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->vS:F

    return-void
.end method

.method public sP(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->EjP:J

    return-void
.end method

.method public sP(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->HiB:Ljava/lang/String;

    return-void
.end method

.method public uA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->uA:Ljava/lang/String;

    return-object v0
.end method

.method public vS()F
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/Sj$Sj;->vS:F

    return v0
.end method
