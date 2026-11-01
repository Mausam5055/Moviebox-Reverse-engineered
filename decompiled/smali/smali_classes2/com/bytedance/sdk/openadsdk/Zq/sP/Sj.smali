.class public Lcom/bytedance/sdk/openadsdk/Zq/sP/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/Dq/TKC;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/Dq/sP/Sj;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/Zq/TKC;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Zq/sP/Sj$1;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/Zq/sP/Sj$1;-><init>(Lcom/bytedance/sdk/openadsdk/Zq/sP/Sj;Lcom/bytedance/sdk/component/Dq/sP/Sj;)V

    const-string p1, "stats_sdk_thread_num"

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/Zq/sP;)V

    return-void
.end method
