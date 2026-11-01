.class public Lcom/bytedance/adsdk/ugeno/core/sef;
.super Ljava/lang/Object;


# instance fields
.field private Sj:I

.field private TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field private sP:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/sef;->Sj:I

    return v0
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/sef;->Sj:I

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/sef;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/sef;->sP:Ljava/lang/String;

    return-void
.end method

.method public sP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/sef;->sP:Ljava/lang/String;

    return-object v0
.end method
