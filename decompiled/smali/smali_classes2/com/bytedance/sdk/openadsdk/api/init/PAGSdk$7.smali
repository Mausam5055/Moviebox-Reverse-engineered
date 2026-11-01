.class final Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/Dq/TEQ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk;->HiB(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/InitConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createThreadFactory(ILjava/lang/String;)Lcom/bytedance/sdk/component/Dq/uA;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$7$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$7$1;-><init>(Lcom/bytedance/sdk/openadsdk/api/init/PAGSdk$7;ILjava/lang/String;)V

    return-object v0
.end method
