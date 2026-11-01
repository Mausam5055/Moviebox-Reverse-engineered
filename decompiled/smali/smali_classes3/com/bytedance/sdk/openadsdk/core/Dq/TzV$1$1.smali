.class Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$1;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/sP/sef;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$1;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$1;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$1$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$1$1;->sP:Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV$1$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/TzV;Lcom/bytedance/sdk/component/adexpress/sP/sef;Z)Z

    return-void
.end method
