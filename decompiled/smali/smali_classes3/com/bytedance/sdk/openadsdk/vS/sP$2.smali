.class Lcom/bytedance/sdk/openadsdk/vS/sP$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic EjP:Lcom/bytedance/sdk/openadsdk/vS/sP;

.field final synthetic Sj:Ljava/lang/String;

.field final synthetic TKC:Ljava/lang/String;

.field final synthetic sP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/vS/sP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/vS/sP$2;->EjP:Lcom/bytedance/sdk/openadsdk/vS/sP;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/vS/sP$2;->Sj:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/vS/sP$2;->sP:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/vS/sP$2;->TKC:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/vS/sP$2;->EjP:Lcom/bytedance/sdk/openadsdk/vS/sP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/vS/sP$2;->Sj:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/vS/sP$2;->sP:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/vS/sP$2;->TKC:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/vS/sP;->Sj(Lcom/bytedance/sdk/openadsdk/vS/sP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
