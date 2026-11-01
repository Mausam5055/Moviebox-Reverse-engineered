.class Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$Sj;,
        Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;
    }
.end annotation


# instance fields
.field private Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;

.field private sP:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP;->sP:Landroid/content/Context;

    iget-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;

    if-nez p1, :cond_0

    new-instance p1, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;-><init>(Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP;->Sj:Lcom/bytedance/sdk/component/vS/Sj/Sj/Sj/sP$sP;

    return-object v0
.end method
