.class final Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->Sj(Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP$1;->Sj:Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->Sj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/vS;->Sj()Lcom/bytedance/sdk/component/adexpress/Sj/sP/vS;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP$1;->Sj:Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/vS;->Sj(Lcom/bytedance/sdk/component/adexpress/Sj/TKC/sP;Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
