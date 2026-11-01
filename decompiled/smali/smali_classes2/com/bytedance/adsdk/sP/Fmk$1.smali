.class Lcom/bytedance/adsdk/sP/Fmk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/sP/Fmk;->Sj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/sP/Fmk;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/Fmk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/Fmk$1;->Sj:Lcom/bytedance/adsdk/sP/Fmk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/Fmk$1;->Sj:Lcom/bytedance/adsdk/sP/Fmk;

    invoke-static {v0}, Lcom/bytedance/adsdk/sP/Fmk;->Sj(Lcom/bytedance/adsdk/sP/Fmk;)Lcom/bytedance/adsdk/sP/aa;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/aa;->Sj()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Fmk$1;->Sj:Lcom/bytedance/adsdk/sP/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/aa;->Sj()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/adsdk/sP/Fmk;->Sj(Lcom/bytedance/adsdk/sP/Fmk;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/bytedance/adsdk/sP/Fmk$1;->Sj:Lcom/bytedance/adsdk/sP/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/aa;->sP()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/adsdk/sP/Fmk;->Sj(Lcom/bytedance/adsdk/sP/Fmk;Ljava/lang/Throwable;)V

    return-void
.end method
