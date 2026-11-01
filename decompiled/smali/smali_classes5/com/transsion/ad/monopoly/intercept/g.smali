.class public final Lcom/transsion/ad/monopoly/intercept/g;
.super Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/intercept/BaseAdSceneCtxExprHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public j(Ljava/lang/String;Lcom/transsion/ad/db/plan/MbAdDbPlans;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    const-string v0, "sceneId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ctxMap"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/ad/db/plan/MbAdDbPlans;->getCtxEnableExpr()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public k()Ljava/lang/String;
    .locals 1

    const-string v0, "\u547d\u4e2d \u767d\u540d\u5355,\u5f53\u524d\u5e7f\u544a\u8ba1\u5212 \u6ee1\u8db3\u5c55\u793a\u6761\u4ef6"

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const-string v0, "\u672a\u547d\u4e2d \u767d\u540d\u5355,\u5f53\u524d\u5e7f\u544a\u8ba1\u5212 \u4e0d\u6ee1\u8db3\u5c55\u793a\u6761\u4ef6"

    return-object v0
.end method

.method public m(Z)Z
    .locals 0

    return p1
.end method
