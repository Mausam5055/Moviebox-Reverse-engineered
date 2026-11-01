.class final Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/HiB$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/HiB;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/content/Context;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/HiB$1;->Sj:Z

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/HiB$1;->Sj:Z

    const-string v1, "oem_store"

    if-eqz v0, :cond_0

    const-string v0, "1"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "-2"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
