.class public Lcom/bytedance/adsdk/sP/TKC/sP/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/TKC/sP/TKC;


# instance fields
.field private final EjP:Lcom/bytedance/adsdk/sP/TKC/Sj/aa;

.field private final HiB:Z

.field private final Sj:Ljava/lang/String;

.field private final TKC:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

.field private final sP:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;Lcom/bytedance/adsdk/sP/TKC/Sj/sP;Lcom/bytedance/adsdk/sP/TKC/Sj/aa;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/sP/aa;->Sj:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/sP/aa;->sP:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    iput-object p3, p0, Lcom/bytedance/adsdk/sP/TKC/sP/aa;->TKC:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    iput-object p4, p0, Lcom/bytedance/adsdk/sP/TKC/sP/aa;->EjP:Lcom/bytedance/adsdk/sP/TKC/Sj/aa;

    iput-boolean p5, p0, Lcom/bytedance/adsdk/sP/TKC/sP/aa;->HiB:Z

    return-void
.end method


# virtual methods
.method public EjP()Lcom/bytedance/adsdk/sP/TKC/Sj/aa;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/aa;->EjP:Lcom/bytedance/adsdk/sP/TKC/Sj/aa;

    return-object v0
.end method

.method public HiB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/aa;->HiB:Z

    return v0
.end method

.method public Sj(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;)Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;
    .locals 0

    new-instance p2, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;

    invoke-direct {p2, p1, p3, p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/uvD;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Lcom/bytedance/adsdk/sP/TKC/sP/aa;)V

    return-object p2
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/aa;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public TKC()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/aa;->TKC:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    return-object v0
.end method

.method public sP()Lcom/bytedance/adsdk/sP/TKC/Sj/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/aa;->sP:Lcom/bytedance/adsdk/sP/TKC/Sj/sP;

    return-object v0
.end method
