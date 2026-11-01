.class Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$2;
.super Lcom/bytedance/sdk/component/Dq/TKC/sP;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->Sj(Lcom/bytedance/sdk/component/sP/Sj/TKC;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/sP/Sj/TKC;

.field final synthetic sP:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;ILjava/lang/String;Lcom/bytedance/sdk/component/sP/Sj/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$2;->sP:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;

    iput-object p4, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$2;->Sj:Lcom/bytedance/sdk/component/sP/Sj/TKC;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/Dq/TKC/sP;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$2;->sP:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;->sP()Lcom/bytedance/sdk/component/sP/Sj/Zq;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$2;->Sj:Lcom/bytedance/sdk/component/sP/Sj/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$2;->sP:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "response is null"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/component/sP/Sj/TKC;->Sj(Lcom/bytedance/sdk/component/sP/Sj/sP;Ljava/io/IOException;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$2;->Sj:Lcom/bytedance/sdk/component/sP/Sj/TKC;

    iget-object v2, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$2;->sP:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/sP/Sj/TKC;->Sj(Lcom/bytedance/sdk/component/sP/Sj/sP;Lcom/bytedance/sdk/component/sP/Sj/Zq;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$2;->Sj:Lcom/bytedance/sdk/component/sP/Sj/TKC;

    iget-object v2, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP$2;->sP:Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/sP;

    invoke-interface {v1, v2, v0}, Lcom/bytedance/sdk/component/sP/Sj/TKC;->Sj(Lcom/bytedance/sdk/component/sP/Sj/sP;Ljava/io/IOException;)V

    return-void
.end method
