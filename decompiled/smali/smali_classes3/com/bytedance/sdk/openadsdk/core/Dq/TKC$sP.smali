.class Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$sP;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "sP"
.end annotation


# instance fields
.field Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$TKC;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$TKC;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$TKC;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$sP;->Sj:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$TKC;

    if-eqz v0, :cond_0

    const/16 v1, 0x6b

    invoke-interface {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC$TKC;->Sj(II)V

    :cond_0
    return-void
.end method
