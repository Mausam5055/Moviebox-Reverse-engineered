.class public Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field private EjP:Z

.field private final Sj:Ljava/lang/String;

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;

.field private final sP:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP$Sj;->EjP:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP$Sj;->Sj:Ljava/lang/String;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP$Sj;->sP:F

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP;
    .locals 7

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP$Sj;->sP:F

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP$Sj;->Sj:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP$Sj;->EjP:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP;-><init>(FLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;Ljava/lang/Boolean;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/sP$1;)V

    return-object v6
.end method
