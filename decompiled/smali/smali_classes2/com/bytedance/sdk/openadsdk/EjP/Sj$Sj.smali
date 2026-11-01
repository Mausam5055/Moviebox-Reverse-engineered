.class public final Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/EjP/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sj"
.end annotation


# instance fields
.field private Dq:Ljava/lang/String;

.field private EjP:Ljava/lang/String;

.field private Fmk:Ljava/lang/String;

.field private HiB:Ljava/lang/String;

.field private Jcg:Ljava/lang/String;

.field private RiZ:Z

.field public Sj:I

.field private TEQ:Lorg/json/JSONObject;

.field private TKC:Ljava/lang/String;

.field private TzV:I

.field private Ym:Ljava/lang/String;

.field private Zq:Lcom/bytedance/sdk/openadsdk/EjP/sP/Sj;

.field private final aa:I

.field private dNu:I

.field private sP:Ljava/lang/String;

.field private sU:Ljava/lang/String;

.field private sef:Lcom/bytedance/sdk/openadsdk/EjP/sP/sP;

.field private uA:Ljava/lang/String;

.field private final uvD:J

.field private vS:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->dNu:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->TzV:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Sj:I

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->RiZ:Z

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->zR()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->dNu:I

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->TzV:I

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HcZ()I

    move-result p3

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Sj:I

    :cond_0
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->uvD:J

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TzV;->TKC(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->aa:I

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Dq:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->TKC:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Fmk(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->TEQ:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->EjP:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Ym:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->sP:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->TEQ:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Jcg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->vS:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Ym(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->aa:I

    return p0
.end method

.method static synthetic Zq(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->TzV:I

    return p0
.end method

.method static synthetic aa(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Fmk:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)Lcom/bytedance/sdk/openadsdk/EjP/sP/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Zq:Lcom/bytedance/sdk/openadsdk/EjP/sP/Sj;

    return-object p0
.end method

.method static synthetic sef(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->dNu:I

    return p0
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->uA:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic uvD(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->RiZ:Z

    return p0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->HiB:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public Dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->sU:Ljava/lang/String;

    return-object p0
.end method

.method public EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->HiB:Ljava/lang/String;

    return-object p0
.end method

.method public HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Dq:Ljava/lang/String;

    return-object p0
.end method

.method public Jcg(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Jcg:Ljava/lang/String;

    return-object p0
.end method

.method public Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Fmk:Ljava/lang/String;

    return-object p0
.end method

.method public Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;
    .locals 0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->TEQ:Lorg/json/JSONObject;

    return-object p0
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/EjP/sP/Sj;)V
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj()Lcom/bytedance/sdk/openadsdk/vS/sP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->EjP:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->sU:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Jcg:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->TKC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->Zq:Lcom/bytedance/sdk/openadsdk/EjP/sP/Sj;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/EjP/Sj;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/EjP/Sj;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->sef:Lcom/bytedance/sdk/openadsdk/EjP/sP/sP;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/EjP/Sj;->sP:Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->uvD:J

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/sP/sP;->Sj(Lorg/json/JSONObject;J)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/sP/TKC;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/sP/TKC;-><init>()V

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/EjP/Sj;->sP:Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->uvD:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/sP/TKC;->Sj(Lorg/json/JSONObject;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj$1;

    const-string v1, "dispatchEvent"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Sj;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void

    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/EjP/Sj/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Sj;)V

    return-void
.end method

.method public TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->EjP:Ljava/lang/String;

    return-object p0
.end method

.method public sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->TKC:Ljava/lang/String;

    return-object p0
.end method

.method public vS(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/EjP/Sj$Sj;->uA:Ljava/lang/String;

    return-object p0
.end method
