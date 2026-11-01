.class public Lcom/bytedance/adsdk/sP/TKC/sP/Fmk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/TKC/sP/TKC;


# instance fields
.field private final Sj:Ljava/lang/String;

.field private final sP:Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Fmk;->Sj:Ljava/lang/String;

    iput-object p2, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Fmk;->sP:Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/Jcg;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;)Lcom/bytedance/adsdk/sP/Sj/Sj/TKC;
    .locals 0

    new-instance p2, Lcom/bytedance/adsdk/sP/Sj/Sj/dNu;

    invoke-direct {p2, p1, p3, p0}, Lcom/bytedance/adsdk/sP/Sj/Sj/dNu;-><init>(Lcom/bytedance/adsdk/sP/uA;Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Lcom/bytedance/adsdk/sP/TKC/sP/Fmk;)V

    return-object p2
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Fmk;->Sj:Ljava/lang/String;

    return-object v0
.end method

.method public sP()Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/sP/Fmk;->sP:Lcom/bytedance/adsdk/sP/TKC/Sj/Fmk;

    return-object v0
.end method
