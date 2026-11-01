.class final Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/Sj/EjP$sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/Sj/dNu;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym$1;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/component/Sj/EjP;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym$1;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/Ym/Sj/Ym;-><init>(Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    return-object v0
.end method
