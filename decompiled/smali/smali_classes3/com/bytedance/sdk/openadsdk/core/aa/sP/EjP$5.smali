.class Lcom/bytedance/sdk/openadsdk/core/aa/sP/EjP$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/sP/EjP;->EjP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/EjP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/EjP$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/EjP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/EjP$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->uvD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/EjP$5;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/sP/EjP;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->LqL:Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;

    invoke-interface {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/Sj;->sP(Lu5/c;Landroid/view/View;)V

    :cond_0
    return-void
.end method
