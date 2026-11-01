.class Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9$1$1;

    const-string v1, "LoadLocalData"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9$1;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method
