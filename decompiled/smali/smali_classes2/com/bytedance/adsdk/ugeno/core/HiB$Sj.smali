.class public Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/core/HiB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field private Dq:Ljava/lang/String;

.field private EjP:Lorg/json/JSONObject;

.field private HiB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;",
            ">;"
        }
    .end annotation
.end field

.field private Jcg:Ljava/lang/String;

.field private Sj:Ljava/lang/String;

.field private TKC:Lorg/json/JSONObject;

.field private sP:Ljava/lang/String;

.field private vS:Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->Dq:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;)Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->vS:Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->Sj:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->TKC:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic TKC(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->Jcg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic sP(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->sP:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic sP(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->TKC:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->EjP:Lorg/json/JSONObject;

    return-object p1
.end method


# virtual methods
.method public EjP()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->TKC:Lorg/json/JSONObject;

    return-object v0
.end method

.method public HiB()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->HiB:Ljava/util/List;

    return-object v0
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->HiB:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->HiB:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->HiB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->sP:Ljava/lang/String;

    return-void
.end method

.method public TKC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->sP:Ljava/lang/String;

    return-object v0
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->Jcg:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UGNode{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->Sj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->sP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public vS()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/HiB$Sj;->EjP:Lorg/json/JSONObject;

    return-object v0
.end method
