.class public Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field private final Sj:Ljava/lang/String;

.field private TKC:Z

.field private sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;->TKC:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;->Sj:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Sj(Z)Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;->TKC:Z

    return-object p0
.end method

.method public Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;->Sj:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$Sj;->TKC:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;Ljava/lang/Boolean;)V

    return-object v0
.end method
