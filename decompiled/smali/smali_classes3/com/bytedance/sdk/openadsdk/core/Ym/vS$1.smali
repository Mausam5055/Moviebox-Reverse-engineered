.class Lcom/bytedance/sdk/openadsdk/core/Ym/vS$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Landroid/webkit/WebView;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;Landroid/webkit/WebView;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$1;->Sj:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/vS$1;->Sj:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;Landroid/webkit/WebView;)V

    return-void
.end method
