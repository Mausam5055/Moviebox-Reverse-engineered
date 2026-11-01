.class final Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/wE$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;
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
.method public Sj(Landroid/content/Context;Landroid/content/Intent;ZI)V
    .locals 0

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->vS()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;->Jcg()V

    :cond_0
    return-void
.end method
