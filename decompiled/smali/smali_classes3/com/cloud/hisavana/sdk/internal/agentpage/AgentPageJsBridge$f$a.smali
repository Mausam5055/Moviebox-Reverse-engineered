.class public final Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f$a;
.super Lcom/cloud/hisavana/sdk/api/listener/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f;->d()Lcom/cloud/hisavana/sdk/api/listener/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/cloud/hisavana/sdk/internal/agentpage/b;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/internal/agentpage/b;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f$a;->b:Lcom/cloud/hisavana/sdk/internal/agentpage/b;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoaded()V
    .locals 1

    invoke-super {p0}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdLoaded()V

    iget-object v0, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f$a;->b:Lcom/cloud/hisavana/sdk/internal/agentpage/b;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->m()V

    return-void
.end method

.method public onAdLoaded(Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onAdLoaded(Ljava/util/List;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f$a;->b:Lcom/cloud/hisavana/sdk/internal/agentpage/b;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->m()V

    return-void
.end method

.method public onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/cloud/hisavana/sdk/api/listener/d;->onError(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V

    iget-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f$a;->b:Lcom/cloud/hisavana/sdk/internal/agentpage/b;

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/internal/agentpage/b;->m()V

    return-void
.end method
