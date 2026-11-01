.class public Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private EjP:Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private HiB:Z

.field private Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private TKC:Lorg/json/JSONObject;

.field private sP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/sU;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->HiB:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->sP:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->TKC:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->EjP:Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;

    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->EjP:Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/TKC;

    return-object v0
.end method

.method public HiB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->HiB:Z

    return v0
.end method

.method public Sj()Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object v0
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->HiB:Z

    return-void
.end method

.method public TKC()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->TKC:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->TKC:Lorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->TKC:Lorg/json/JSONObject;

    return-object v0
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Sj;->sP:Ljava/lang/String;

    return-object v0
.end method
