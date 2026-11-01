.class final Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/EjP/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/TEQ/sP;->Sj(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
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

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$2$1;

    const-string v2, "SwiperView://slide"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$2;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$2$2;

    const-string v2, "SwiperView://finish"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$2$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$2;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$2$3;

    const-string v2, "SwiperView://reloop"

    invoke-direct {v1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$2$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/sP$2;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
