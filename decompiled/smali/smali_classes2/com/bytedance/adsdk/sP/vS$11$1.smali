.class Lcom/bytedance/adsdk/sP/vS$11$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/sP/vS$11;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:J

.field final synthetic sP:Lcom/bytedance/adsdk/sP/vS$11;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/sP/vS$11;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/vS$11$1;->sP:Lcom/bytedance/adsdk/sP/vS$11;

    iput-wide p2, p0, Lcom/bytedance/adsdk/sP/vS$11$1;->Sj:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$11$1;->sP:Lcom/bytedance/adsdk/sP/vS$11;

    iget-object v0, v0, Lcom/bytedance/adsdk/sP/vS$11;->Sj:Lcom/bytedance/adsdk/sP/vS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$11$1;->sP:Lcom/bytedance/adsdk/sP/vS$11;

    iget-object v0, v0, Lcom/bytedance/adsdk/sP/vS$11;->Sj:Lcom/bytedance/adsdk/sP/vS;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/sP/vS;->Sj()V

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/vS$11$1;->sP:Lcom/bytedance/adsdk/sP/vS$11;

    iget-object v0, v0, Lcom/bytedance/adsdk/sP/vS$11;->Sj:Lcom/bytedance/adsdk/sP/vS;

    iget-wide v1, p0, Lcom/bytedance/adsdk/sP/vS$11$1;->Sj:J

    invoke-static {v0, v1, v2}, Lcom/bytedance/adsdk/sP/vS;->Sj(Lcom/bytedance/adsdk/sP/vS;J)V

    return-void
.end method
