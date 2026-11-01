.class Lcom/bytedance/sdk/component/Sj/Sj$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Sj/Sj;->invokeMethod(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Ljava/lang/String;

.field final synthetic sP:Lcom/bytedance/sdk/component/Sj/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Sj/Sj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/Sj/Sj$1;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Sj/Sj$1;->Sj:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj$1;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    iget-boolean v0, v0, Lcom/bytedance/sdk/component/Sj/Sj;->vS:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Sj/Sj$1;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Sj/Sj$1;->Sj:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Sj/Sj;Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/Sj/uvD;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/bytedance/sdk/component/Sj/uvD;->Sj(Lcom/bytedance/sdk/component/Sj/uvD;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/Sj$1;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    new-instance v2, Lcom/bytedance/sdk/component/Sj/TzV;

    iget v3, v0, Lcom/bytedance/sdk/component/Sj/uvD;->Sj:I

    const-string v4, "Failed to parse invocation."

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/component/Sj/TzV;-><init>(ILjava/lang/String;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/Sj/kF;->Sj(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/component/Sj/Sj;->sP(Ljava/lang/String;Lcom/bytedance/sdk/component/Sj/uvD;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/component/Sj/Sj$1;->sP:Lcom/bytedance/sdk/component/Sj/Sj;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/Sj/uvD;)V

    return-void
.end method
