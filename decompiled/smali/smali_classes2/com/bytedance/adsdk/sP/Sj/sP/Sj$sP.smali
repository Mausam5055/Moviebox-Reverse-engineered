.class final Lcom/bytedance/adsdk/sP/Sj/sP/Sj$sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/Sj/sP/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "sP"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/adsdk/sP/Sj/sP/Sj$TKC<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/adsdk/sP/Sj/sP/Sj$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/adsdk/sP/Sj/sP/Sj$sP;-><init>()V

    return-void
.end method


# virtual methods
.method public EjP()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public Sj()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public Sj(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public TKC()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sP()Lcom/bytedance/adsdk/sP/Jcg/Sj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/sP/Jcg/Sj<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sP(F)Z
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "not implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
