.class public Lcom/bytedance/adsdk/ugeno/core/Dq;
.super Ljava/lang/Object;


# instance fields
.field private EjP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private Sj:Landroid/content/Context;

.field private TKC:Lorg/json/JSONObject;

.field private sP:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Dq;->TKC:Lorg/json/JSONObject;

    return-object v0
.end method

.method public Sj(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/Dq;->Sj:Landroid/content/Context;

    return-void
.end method

.method public Sj(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/Dq;->EjP:Ljava/util/Map;

    return-void
.end method

.method public Sj(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/Dq;->sP:Lorg/json/JSONObject;

    return-void
.end method

.method public sP()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/Dq;->EjP:Ljava/util/Map;

    return-object v0
.end method

.method public sP(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/Dq;->TKC:Lorg/json/JSONObject;

    return-void
.end method
