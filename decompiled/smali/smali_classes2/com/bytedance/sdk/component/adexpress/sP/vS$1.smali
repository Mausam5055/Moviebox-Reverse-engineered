.class Lcom/bytedance/sdk/component/adexpress/sP/vS$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/Jcg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/sP/vS;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

.field final synthetic sP:Lcom/bytedance/sdk/component/adexpress/sP/vS;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/sP/vS;Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/vS$1;->sP:Lcom/bytedance/sdk/component/adexpress/sP/vS;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/sP/vS$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/sP/vS$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->sP()Lcom/bytedance/sdk/component/adexpress/sP/Zq;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/adexpress/sP/Zq;->a_(I)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/vS$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->TKC()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/vS$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->sP()Lcom/bytedance/sdk/component/adexpress/sP/Zq;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/vS$1;->sP:Lcom/bytedance/sdk/component/adexpress/sP/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/sP/vS;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/vS;)Lcom/bytedance/sdk/component/adexpress/sP/Sj;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/sP/Zq;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/vS$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->Sj(Z)V

    return-void
.end method
