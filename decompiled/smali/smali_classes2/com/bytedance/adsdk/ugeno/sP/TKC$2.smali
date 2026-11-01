.class Lcom/bytedance/adsdk/ugeno/sP/TKC$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC$2;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC$2;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iget-object v0, p1, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TO:Lcom/bytedance/adsdk/ugeno/core/aa;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Lcom/bytedance/adsdk/ugeno/sP/TKC;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC$2;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iget-object v0, p1, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TO:Lcom/bytedance/adsdk/ugeno/core/aa;

    iget-object p1, p1, Lcom/bytedance/adsdk/ugeno/sP/TKC;->QZ:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/adsdk/ugeno/core/TEQ;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC$2;->Sj:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-interface {v0, p1, v1, v1}, Lcom/bytedance/adsdk/ugeno/core/aa;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;Lcom/bytedance/adsdk/ugeno/core/aa$sP;Lcom/bytedance/adsdk/ugeno/core/aa$Sj;)V

    :cond_0
    return-void
.end method
