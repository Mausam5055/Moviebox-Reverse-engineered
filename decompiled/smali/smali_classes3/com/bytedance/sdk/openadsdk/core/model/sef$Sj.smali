.class public Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/model/sef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field private Dq:I

.field private EjP:F

.field private Fmk:I

.field private HiB:F

.field private Jcg:F

.field protected Sj:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;"
        }
    .end annotation
.end field

.field private TEQ:I

.field private TKC:J

.field private TzV:Z

.field private Ym:I

.field private Zq:I

.field private aa:Ljava/lang/String;

.field private dNu:Z

.field private sP:J

.field private sef:Lorg/json/JSONObject;

.field private uA:I

.field private uvD:Lorg/json/JSONObject;

.field private vS:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->dNu:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->uA:I

    return p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->EjP:F

    return p0
.end method

.method static synthetic Fmk(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Fmk:I

    return p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TKC:J

    return-wide v0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Dq:I

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Jcg:F

    return p0
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Ym:I

    return p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->HiB:F

    return p0
.end method

.method static synthetic Ym(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->aa:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Zq(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Zq:I

    return p0
.end method

.method static synthetic aa(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TzV:Z

    return p0
.end method

.method static synthetic dNu(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->dNu:Z

    return p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->vS:F

    return p0
.end method

.method static synthetic sef(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sef:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TEQ:I

    return p0
.end method

.method static synthetic uvD(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->uvD:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP:J

    return-wide v0
.end method


# virtual methods
.method public EjP(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Jcg:F

    return-object p0
.end method

.method public EjP(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->uA:I

    return-object p0
.end method

.method public HiB(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TEQ:I

    return-object p0
.end method

.method public Sj(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->EjP:F

    return-object p0
.end method

.method public Sj(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Zq:I

    return-object p0
.end method

.method public Sj(J)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP:J

    return-object p0
.end method

.method public Sj(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj:Landroid/util/SparseArray;

    return-object p0
.end method

.method public Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->aa:Ljava/lang/String;

    return-object p0
.end method

.method public Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sef:Lorg/json/JSONObject;

    return-object p0
.end method

.method public Sj(Z)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TzV:Z

    return-object p0
.end method

.method public Sj()Lcom/bytedance/sdk/openadsdk/core/model/sef;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/sef;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sef;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;Lcom/bytedance/sdk/openadsdk/core/model/sef$1;)V

    return-object v0
.end method

.method public TKC(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->vS:F

    return-object p0
.end method

.method public TKC(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Dq:I

    return-object p0
.end method

.method public sP(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->HiB:F

    return-object p0
.end method

.method public sP(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Fmk:I

    return-object p0
.end method

.method public sP(J)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TKC:J

    return-object p0
.end method

.method public sP(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->uvD:Lorg/json/JSONObject;

    return-object p0
.end method

.method public sP(Z)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->dNu:Z

    return-object p0
.end method

.method public vS(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Ym:I

    return-object p0
.end method
