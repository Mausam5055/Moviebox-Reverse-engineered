.class final Lcom/bytedance/sdk/openadsdk/utils/uP$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/uP;->EjP(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/Dq/Jcg;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/Jcg;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/uP$1;->Sj:Lcom/bytedance/sdk/component/Dq/Jcg;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/uP$1;->Sj:Lcom/bytedance/sdk/component/Dq/Jcg;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    return-void
.end method
