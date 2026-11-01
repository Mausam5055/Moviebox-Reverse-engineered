.class final Lcom/bytedance/sdk/openadsdk/utils/uvD$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TzV/Sj/Sj$Sj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj;IILcom/bytedance/sdk/openadsdk/utils/uvD$Sj;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/utils/uvD$Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/uvD$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/uvD$1;->Sj:Lcom/bytedance/sdk/openadsdk/utils/uvD$Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/uvD$1;->Sj:Lcom/bytedance/sdk/openadsdk/utils/uvD$Sj;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/uvD$Sj;->Sj()V

    :cond_0
    return-void
.end method

.method public Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;)V
    .locals 0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;->EjP()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/uvD$1;->Sj:Lcom/bytedance/sdk/openadsdk/utils/uvD$Sj;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/uvD$Sj;->Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/uvD$1;->Sj:Lcom/bytedance/sdk/openadsdk/utils/uvD$Sj;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/uvD$Sj;->Sj()V

    :cond_1
    return-void
.end method
