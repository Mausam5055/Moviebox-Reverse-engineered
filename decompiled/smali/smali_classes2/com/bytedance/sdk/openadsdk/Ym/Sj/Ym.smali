.class public Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;
.super Lcom/bytedance/sdk/component/Sj/EjP;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/component/Sj/EjP<",
        "Lorg/json/JSONObject;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private EjP:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Sj:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/Yf;",
            ">;"
        }
    .end annotation
.end field

.field private TKC:J

.field private sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Sj/EjP;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;->Sj:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;->EjP:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;->EjP:Ljava/util/HashSet;

    return-object p0
.end method

.method public static Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym$1;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    const-string p1, "requestDelayCallback"

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/component/Sj/dNu;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/EjP$sP;)Lcom/bytedance/sdk/component/Sj/dNu;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/Sj/EjP;->Sj(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;->TKC:J

    return-wide v0
.end method


# virtual methods
.method protected bridge synthetic Sj(Ljava/lang/Object;Lcom/bytedance/sdk/component/Sj/vS;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;->Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Sj/vS;)V

    return-void
.end method

.method protected Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/Sj/vS;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;->Sj:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym$2;-><init>(Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;)V

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/sP;)V

    const-string p2, "delay"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_1

    return-void

    :cond_1
    div-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;->TKC:J

    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sj/EjP;->TKC()V

    return-void
.end method
