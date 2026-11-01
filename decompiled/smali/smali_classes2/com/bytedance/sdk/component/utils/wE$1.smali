.class final Lcom/bytedance/sdk/component/utils/wE$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/utils/wE;->sP(Landroid/content/Context;Landroid/content/Intent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Landroid/content/Intent;

.field final synthetic Sj:Z

.field final synthetic TKC:Z

.field final synthetic sP:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/content/Context;ZLandroid/content/Intent;)V
    .locals 0

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/utils/wE$1;->Sj:Z

    iput-object p3, p0, Lcom/bytedance/sdk/component/utils/wE$1;->sP:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/utils/wE$1;->TKC:Z

    iput-object p5, p0, Lcom/bytedance/sdk/component/utils/wE$1;->EjP:Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/utils/wE$1;->Sj:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/wE$1;->sP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/wE;->Sj(Landroid/content/Context;)I

    move-result v0

    :goto_0
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/wE;->Sj(I)I

    invoke-static {}, Lcom/bytedance/sdk/component/utils/wE;->Sj()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/utils/wE$1;->TKC:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/wE$1;->sP:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/component/utils/wE$1;->EjP:Landroid/content/Intent;

    invoke-static {}, Lcom/bytedance/sdk/component/utils/wE;->sP()I

    move-result v2

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/utils/wE$1;->Sj:Z

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/utils/wE;->Sj(Landroid/content/Context;Landroid/content/Intent;IZ)V

    :cond_1
    return-void
.end method
