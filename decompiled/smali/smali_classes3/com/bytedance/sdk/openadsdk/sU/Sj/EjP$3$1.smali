.class Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;

.field final synthetic sP:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3$1;->sP:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3$1;->sP:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->EjP(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3$1;->sP:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->sP:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3$1;->sP:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3;->TKC:Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;->TKC(Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/sU/Sj/EjP$3$1;->Sj:Lcom/bytedance/sdk/openadsdk/sU/Sj/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/sU/Sj/Sj;->EjP()V

    return-void
.end method
