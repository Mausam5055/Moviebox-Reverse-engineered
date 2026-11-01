.class Lcom/bytedance/sdk/component/adexpress/sP/sP$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/Jcg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/sP/sP;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

.field final synthetic sP:Lcom/bytedance/sdk/component/adexpress/sP/sP;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/sP/sP;Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->sP:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Sj(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->sP:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP(Lcom/bytedance/sdk/component/adexpress/sP/sP;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->HiB()Lcom/bytedance/sdk/component/adexpress/sP/uA;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->sP:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sP;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->sP:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-interface {v2, v3}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->sP(Lcom/bytedance/sdk/component/adexpress/sP/TEQ;)Z

    move-result v2

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->Sj(IILjava/lang/String;Z)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->sP:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-interface {p2, v0}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->sP(Lcom/bytedance/sdk/component/adexpress/sP/TEQ;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->sP:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ;)V

    return-void

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    invoke-interface {p2}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->sP()Lcom/bytedance/sdk/component/adexpress/sP/Zq;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/adexpress/sP/Zq;->a_(I)V

    return-void
.end method

.method public Sj(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->TKC()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->sP:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP(Lcom/bytedance/sdk/component/adexpress/sP/sP;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->HiB()Lcom/bytedance/sdk/component/adexpress/sP/uA;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->sP:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sP;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->HiB(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->sP:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP(Lcom/bytedance/sdk/component/adexpress/sP/sP;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->HiB()Lcom/bytedance/sdk/component/adexpress/sP/uA;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->sP:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sP;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->vS(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->sP:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP(Lcom/bytedance/sdk/component/adexpress/sP/sP;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->HiB()Lcom/bytedance/sdk/component/adexpress/sP/uA;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->TEQ()V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->sP()Lcom/bytedance/sdk/component/adexpress/sP/Zq;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->sP:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->TKC(Lcom/bytedance/sdk/component/adexpress/sP/sP;)Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/bytedance/sdk/component/adexpress/sP/Zq;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;->Sj:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->Sj(Z)V

    return-void
.end method
