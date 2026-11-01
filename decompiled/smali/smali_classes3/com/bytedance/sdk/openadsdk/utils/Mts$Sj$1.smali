.class Lcom/bytedance/sdk/openadsdk/utils/Mts$Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/Mts$Sj;->TKC()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:[Ljava/lang/String;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/utils/Mts$Sj;

.field final synthetic sP:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/Mts$Sj;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Mts$Sj$1;->TKC:Lcom/bytedance/sdk/openadsdk/utils/Mts$Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/Mts$Sj$1;->Sj:[Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/utils/Mts$Sj$1;->sP:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Mts$Sj$1;->Sj:[Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->wE()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Mts$Sj$1;->Sj:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Mts$Sj$1;->sP:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
