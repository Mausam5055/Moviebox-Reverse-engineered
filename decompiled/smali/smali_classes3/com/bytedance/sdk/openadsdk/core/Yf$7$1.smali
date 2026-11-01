.class Lcom/bytedance/sdk/openadsdk/core/Yf$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Yf$7;->Sj(ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Z

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/Yf$7;

.field final synthetic sP:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Yf$7;ZLjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$7$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/Yf$7;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$7$1;->Sj:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$7$1;->sP:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$7$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/Yf$7;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/Yf$7;->Sj:Lcom/bytedance/sdk/openadsdk/aa/EjP;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$7$1;->Sj:Z

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Yf$7$1;->sP:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/aa/EjP;->Sj(ZLjava/util/List;)V

    return-void
.end method
