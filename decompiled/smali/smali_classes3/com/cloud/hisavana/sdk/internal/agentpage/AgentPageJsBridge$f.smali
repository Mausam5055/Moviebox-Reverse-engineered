.class public final Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f;
.super Lcom/cloud/hisavana/sdk/api/listener/AdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge;->p(Lcom/cloud/hisavana/sdk/internal/agentpage/b;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cloud/hisavana/sdk/internal/agentpage/b;


# direct methods
.method constructor <init>(Lcom/cloud/hisavana/sdk/internal/agentpage/b;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f;->a:Lcom/cloud/hisavana/sdk/internal/agentpage/b;

    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/listener/AdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Lcom/cloud/hisavana/sdk/api/listener/d;
    .locals 2

    new-instance v0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f$a;

    iget-object v1, p0, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f;->a:Lcom/cloud/hisavana/sdk/internal/agentpage/b;

    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/internal/agentpage/AgentPageJsBridge$f$a;-><init>(Lcom/cloud/hisavana/sdk/internal/agentpage/b;)V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
