.class Lcom/bytedance/sdk/openadsdk/common/dNu$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/dNu;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/common/dNu;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/dNu;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/dNu$3;->Sj:Lcom/bytedance/sdk/openadsdk/common/dNu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/dNu$3;->Sj:Lcom/bytedance/sdk/openadsdk/common/dNu;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/dNu;->sP(Lcom/bytedance/sdk/openadsdk/common/dNu;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/dNu$3;->Sj:Lcom/bytedance/sdk/openadsdk/common/dNu;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/common/dNu;->Sj(Lcom/bytedance/sdk/openadsdk/common/dNu;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
