.class Lcom/bytedance/adsdk/sP/vS$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/sP/Ym;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/sP/vS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/adsdk/sP/Ym<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/sP/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS$7;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic Sj(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/sP/vS$7;->Sj(Ljava/lang/Throwable;)V

    return-void
.end method

.method public Sj(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$7;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->Sj(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$7;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->Sj(Lcom/bytedance/adsdk/sP/vS;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/sP/vS;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$7;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->sP(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/Ym;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/adsdk/sP/vS;->Jcg()Lcom/bytedance/adsdk/sP/Ym;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$7;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/vS;->sP(Lcom/bytedance/adsdk/sP/vS;)Lcom/bytedance/adsdk/sP/Ym;

    move-result-object v0

    :goto_0
    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/sP/Ym;->Sj(Ljava/lang/Object;)V

    return-void
.end method
