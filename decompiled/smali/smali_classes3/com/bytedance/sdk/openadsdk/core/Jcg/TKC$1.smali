.class final Lcom/bytedance/sdk/openadsdk/core/Jcg/TKC$1;
.super Lcom/bytedance/sdk/component/Jcg/Sj/Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/Jcg/TKC;->Sj(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Jcg/Sj/Sj;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Lcom/bytedance/sdk/component/Jcg/sP;)V
    .locals 0

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/Jcg/sP/TKC;Ljava/io/IOException;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Jcg/sP/TKC;->EjP()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
