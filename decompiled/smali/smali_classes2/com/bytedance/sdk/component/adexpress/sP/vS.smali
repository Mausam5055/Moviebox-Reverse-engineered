.class public Lcom/bytedance/sdk/component/adexpress/sP/vS;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/TEQ;


# instance fields
.field private Sj:Landroid/content/Context;

.field private TKC:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

.field private sP:Lcom/bytedance/sdk/component/adexpress/sP/Sj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/sP/Sj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/vS;->Sj:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/sP/vS;->sP:Lcom/bytedance/sdk/component/adexpress/sP/Sj;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/sP/vS;->TKC:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/sP/vS;)Lcom/bytedance/sdk/component/adexpress/sP/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/sP/vS;->sP:Lcom/bytedance/sdk/component/adexpress/sP/Sj;

    return-object p0
.end method


# virtual methods
.method public Sj()V
    .locals 0

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/TKC;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/vS;->sP:Lcom/bytedance/sdk/component/adexpress/sP/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/sP/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/TKC;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/vS;->TKC:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->HiB()Lcom/bytedance/sdk/component/adexpress/sP/uA;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->vS()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/vS;->sP:Lcom/bytedance/sdk/component/adexpress/sP/Sj;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/sP/vS$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/adexpress/sP/vS$1;-><init>(Lcom/bytedance/sdk/component/adexpress/sP/vS;Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V

    const/4 p1, 0x1

    return p1
.end method
