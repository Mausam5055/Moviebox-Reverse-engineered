.class Lcom/bytedance/sdk/openadsdk/TKC/EjP$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/TKC/EjP;->sP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/TKC/EjP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/TKC/EjP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/TKC/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/TKC/EjP;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/TKC/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/TKC/EjP;)Lcom/bytedance/sdk/openadsdk/TKC/EjP$Sj;

    :cond_0
    return-void
.end method
