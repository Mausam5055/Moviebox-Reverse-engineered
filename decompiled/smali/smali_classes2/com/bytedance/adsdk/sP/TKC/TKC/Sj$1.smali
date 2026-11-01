.class Lcom/bytedance/adsdk/sP/TKC/TKC/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/Sj/sP/Sj$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->aa()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj$1;->Sj:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj$1;->Sj:Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->TKC(Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;)Lcom/bytedance/adsdk/sP/Sj/sP/EjP;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/adsdk/sP/Sj/sP/EjP;->uA()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;->Sj(Lcom/bytedance/adsdk/sP/TKC/TKC/Sj;Z)V

    return-void
.end method
