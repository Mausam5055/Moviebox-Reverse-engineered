.class Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1;->Sj(Landroidx/browser/customtabs/CustomTabsClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroidx/browser/customtabs/CustomTabsClient;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1$1;->Sj:Landroidx/browser/customtabs/CustomTabsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction$1$1;->Sj:Landroidx/browser/customtabs/CustomTabsClient;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;->Sj(Lcom/bytedance/sdk/openadsdk/core/act/AdActAction;Landroidx/browser/customtabs/CustomTabsClient;)V

    return-void
.end method
