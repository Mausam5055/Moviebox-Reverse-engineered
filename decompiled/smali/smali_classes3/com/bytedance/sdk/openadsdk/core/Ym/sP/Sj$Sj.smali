.class public Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sj"
.end annotation


# instance fields
.field private EjP:Z

.field private final Sj:Ljava/lang/String;

.field private TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;

.field private final sP:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;->Sj:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->EjP:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->Sj:Ljava/lang/String;

    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->sP:J

    return-void
.end method


# virtual methods
.method public Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj;
    .locals 7

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->sP:J

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->Sj:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->TKC:Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj$Sj;->EjP:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/Ym/sP/Sj;-><init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/Ym/sP/TKC$TKC;Ljava/lang/Boolean;)V

    return-object v6
.end method
