.class Lcom/bytedance/sdk/openadsdk/Zq/TKC$21;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Zq/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/Zq/TKC;->sP(Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/Zq/TKC;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/Zq/TKC;Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$21;->sP:Lcom/bytedance/sdk/openadsdk/Zq/TKC;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$21;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/Zq/Sj/TKC;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Zq/TKC$21;->Sj:Lcom/bytedance/sdk/openadsdk/Zq/Sj/EjP;

    return-object v0
.end method
