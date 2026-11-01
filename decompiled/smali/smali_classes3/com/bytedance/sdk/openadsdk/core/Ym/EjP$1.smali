.class Lcom/bytedance/sdk/openadsdk/core/Ym/EjP$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/Ym/vS;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

.field final synthetic TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

.field final synthetic sP:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;Lcom/bytedance/sdk/openadsdk/core/Ym/vS;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP$1;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP$1;->sP:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP$1;->sP:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(I)V

    :cond_0
    return-void
.end method
