.class public Lcom/bytedance/adsdk/ugeno/EjP/uA;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/EjP/Ym;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/EjP/uA$Sj;
    }
.end annotation


# instance fields
.field private EjP:Z

.field private Sj:Lcom/bytedance/adsdk/ugeno/EjP/uA$Sj;

.field private TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field private sP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Lcom/bytedance/adsdk/ugeno/EjP/uA$Sj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/EjP/uA;->Sj:Lcom/bytedance/adsdk/ugeno/EjP/uA$Sj;

    if-eqz p2, :cond_0

    iget-object p1, p2, Lcom/bytedance/adsdk/ugeno/EjP/uA$Sj;->Sj:Ljava/util/Map;

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/uA;->sP:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public static Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/EjP/uA;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-gtz p1, :cond_1

    return-object v0

    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lcom/bytedance/adsdk/ugeno/EjP/uA$Sj;

    invoke-direct {v3, p1, v2}, Lcom/bytedance/adsdk/ugeno/EjP/uA$Sj;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_3

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->aa()Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v4, p0, v2, v5}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj$Sj;->Sj(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/sP/TKC;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v4, v3, Lcom/bytedance/adsdk/ugeno/EjP/uA$Sj;->Sj:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->sP()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lcom/bytedance/adsdk/ugeno/EjP/uA$Sj;->sP:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->TKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/bytedance/adsdk/ugeno/EjP/uA;

    invoke-direct {p1, p0, v3}, Lcom/bytedance/adsdk/ugeno/EjP/uA;-><init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;Lcom/bytedance/adsdk/ugeno/EjP/uA$Sj;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_4
    :goto_1
    return-object v0
.end method

.method private Sj(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/EjP/uA;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-static {v1, p1, v0}, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj$Sj;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/EjP/sP/Sj;->Sj()V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public EjP()V
    .locals 2

    const-string v0, "timer"

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/EjP/uA;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/EjP/Ym;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj([Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/uA;->sP:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/uA;->sP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public Sj()V
    .locals 2

    const-string v0, "shake"

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/EjP/uA;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/EjP/Ym;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj([Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/sP/TKC;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p2, p3}, Lcom/bytedance/adsdk/ugeno/EjP/uA;->Sj(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public varargs Sj(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/EjP/uA;->sP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/EjP/Ym;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj([Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public Sj(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "tap"

    invoke-virtual {p0, v2}, Lcom/bytedance/adsdk/ugeno/EjP/uA;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;

    move-result-object v2

    instance-of v3, v2, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Jcg;

    if-eqz v3, :cond_0

    invoke-virtual {v2, p0}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/EjP/Ym;)V

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-virtual {v2, v3}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj([Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/EjP/uA;->EjP:Z

    :cond_0
    iget-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/EjP/uA;->EjP:Z

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const-string v2, "slide"

    invoke-virtual {p0, v2}, Lcom/bytedance/adsdk/ugeno/EjP/uA;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;

    move-result-object v2

    instance-of v3, v2, Lcom/bytedance/adsdk/ugeno/EjP/EjP/TKC;

    if-eqz v3, :cond_2

    invoke-virtual {v2, p0}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/EjP/Ym;)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {v2, v1}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj([Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/uA;->EjP:Z

    return p1
.end method

.method public TKC()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/uA;->Sj:Lcom/bytedance/adsdk/ugeno/EjP/uA$Sj;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/EjP/uA$Sj;->Sj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;

    instance-of v2, v1, Lcom/bytedance/adsdk/ugeno/EjP/EjP/sP;

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/EjP/Ym;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj([Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public sP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/uA;->Sj:Lcom/bytedance/adsdk/ugeno/EjP/uA$Sj;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/uA;->Sj:Lcom/bytedance/adsdk/ugeno/EjP/uA$Sj;

    iget-object v0, v0, Lcom/bytedance/adsdk/ugeno/EjP/uA$Sj;->sP:Ljava/util/Map;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public sP()V
    .locals 2

    const-string v0, "twist"

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/EjP/uA;->Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/EjP/Ym;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj([Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
