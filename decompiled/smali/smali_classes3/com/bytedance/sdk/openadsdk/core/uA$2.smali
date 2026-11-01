.class Lcom/bytedance/sdk/openadsdk/core/uA$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/uA;->EjP(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/Integer;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/uA;

.field final synthetic sP:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/uA;Ljava/lang/Integer;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/uA$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/uA;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/uA$2;->Sj:Ljava/lang/Integer;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/uA$2;->sP:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/uA$2;->TKC:Lcom/bytedance/sdk/openadsdk/core/uA;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/uA$2;->Sj:Ljava/lang/Integer;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/uA$2;->sP:I

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj(Lcom/bytedance/sdk/openadsdk/core/uA;Ljava/lang/Integer;I)V

    return-void
.end method
