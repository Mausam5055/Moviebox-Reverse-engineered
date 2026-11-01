.class final Lcom/bytedance/sdk/openadsdk/utils/JcM$10;
.super Lcom/bytedance/sdk/component/Dq/TKC/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/JcM;->TKC(Lcom/bytedance/sdk/component/Dq/Dq;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/Dq/Dq;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Dq/Dq;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$10;->Sj:Lcom/bytedance/sdk/component/Dq/Dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/TKC/sP;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/JcM$10;->Sj:Lcom/bytedance/sdk/component/Dq/Dq;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
