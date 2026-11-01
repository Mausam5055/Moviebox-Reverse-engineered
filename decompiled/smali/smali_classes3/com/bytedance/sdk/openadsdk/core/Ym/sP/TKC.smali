.class public Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;,
        Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;,
        Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;
    }
.end annotation


# static fields
.field private static final HiB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;",
            ">;"
        }
    .end annotation
.end field

.field private static final vS:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private EjP:Z

.field private final Sj:Ljava/lang/String;

.field private TKC:Z

.field private sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->HiB:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->vS:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$1;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/wE;->Sj(Lcom/bytedance/sdk/component/utils/wE$Sj;Landroid/content/Context;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->Sj:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->TKC:Z

    return-void
.end method

.method static synthetic Jcg()V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->sP()V

    return-void
.end method

.method public static Sj(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;JLjava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;",
            "J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->HiB()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->EjP()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->TKC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->j_()V

    goto :goto_0

    :cond_3
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/TKC;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/TKC;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;)Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/TKC;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/TKC;->Sj(J)Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/TKC;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/TKC;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/TKC;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/TKC/TKC;->Sj()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static Sj(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->Sj(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static Sj(Lorg/json/JSONArray;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;

    invoke-direct {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static Sj(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->TKC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;Z)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Jcg/Sj;->TKC()Lcom/bytedance/sdk/component/Jcg/sP/sP;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/sP;->Sj(Z)V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->sP(Ljava/lang/String;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;

    invoke-direct {v1, p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Jcg/sP/sP;->Sj(Lcom/bytedance/sdk/component/Jcg/Sj/Sj;)V

    return-void
.end method

.method public static Sj(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;)V
    .locals 0
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;",
            "J",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->Sj(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;JLjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p5}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->Sj(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;)V

    return-void
.end method

.method public static Sj(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic Sj(ZLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;Ljava/lang/String;Z)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->sP(ZLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;Ljava/lang/String;Z)V

    return-void
.end method

.method public static TKC(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "trackingMilliseconds"

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static sP(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "trackingFraction"

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v2, v4

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP$Sj;

    invoke-direct {v4, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP$Sj;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static sP()V
    .locals 5

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->vS:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->HiB:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;

    invoke-static {v4, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->vS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method

.method public static sP(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;JLjava/lang/String;)V
    .locals 6
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->Sj(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/Ym/Sj/Sj;JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;)V

    return-void
.end method

.method private static sP(ZLjava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;Ljava/lang/String;Z)V
    .locals 9

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;

    const-string v1, "dsp_track_link_result"

    move-object v0, v8

    move-object v2, p3

    move v3, p0

    move-object v4, p1

    move-object v5, p4

    move v6, p5

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$3;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$sP;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method static synthetic vS()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->HiB:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public EjP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->TKC:Z

    return v0
.end method

.method public HiB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->EjP:Z

    return v0
.end method

.method public TKC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public j_()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->EjP:Z

    return-void
.end method
