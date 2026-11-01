.class Lcom/bytedance/sdk/openadsdk/TKC/aa$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/TKC/aa;->EjP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/TKC/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$5;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$5;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->sP(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/aa$5;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/aa;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TKC/aa;->sP(Lcom/bytedance/sdk/openadsdk/TKC/aa;)Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TKC/aa$Sj;->TKC()V

    :cond_0
    return-void
.end method
