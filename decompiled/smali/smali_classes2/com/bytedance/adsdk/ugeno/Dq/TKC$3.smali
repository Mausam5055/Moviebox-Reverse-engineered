.class Lcom/bytedance/adsdk/ugeno/Dq/TKC$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/Dq/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/adsdk/ugeno/Dq/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/Dq/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$3;->Sj:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$3;->Sj:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setScrollState(I)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/Dq/TKC$3;->Sj:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->TKC()V

    return-void
.end method
