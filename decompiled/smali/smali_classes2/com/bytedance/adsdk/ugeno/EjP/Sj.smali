.class public Lcom/bytedance/adsdk/ugeno/EjP/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/EjP/Dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/EjP/Jcg;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/bytedance/adsdk/ugeno/EjP/Sj$1;

    const-string v2, "slide"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/adsdk/ugeno/EjP/Sj$1;-><init>(Lcom/bytedance/adsdk/ugeno/EjP/Sj;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/adsdk/ugeno/EjP/Sj$2;

    const-string v2, "tap"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/adsdk/ugeno/EjP/Sj$2;-><init>(Lcom/bytedance/adsdk/ugeno/EjP/Sj;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/adsdk/ugeno/EjP/Sj$3;

    const-string v2, "timer"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/adsdk/ugeno/EjP/Sj$3;-><init>(Lcom/bytedance/adsdk/ugeno/EjP/Sj;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/adsdk/ugeno/EjP/Sj$4;

    const-string v2, "videoProgress"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/adsdk/ugeno/EjP/Sj$4;-><init>(Lcom/bytedance/adsdk/ugeno/EjP/Sj;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
