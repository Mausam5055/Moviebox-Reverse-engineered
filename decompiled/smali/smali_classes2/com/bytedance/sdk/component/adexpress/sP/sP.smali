.class public Lcom/bytedance/sdk/component/adexpress/sP/sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/sP/TEQ;


# instance fields
.field private EjP:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

.field private HiB:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

.field private Sj:Landroid/content/Context;

.field private TKC:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

.field private sP:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

.field private vS:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/HiB/Dq;Lcom/bytedance/sdk/component/adexpress/sP/Dq;Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->Sj:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->HiB:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->TKC:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iput-object p6, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->EjP:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    if-eqz p8, :cond_0

    iput-object p8, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    goto :goto_0

    :cond_0
    new-instance p6, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    move-object v0, p6

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p2

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/HiB/Dq;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;)V

    iput-object p6, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->EjP:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Dq;)V

    instance-of p1, p5, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Jcg;

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->vS:I

    return-void

    :cond_1
    const/4 p1, 0x2

    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->vS:I

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/sP/sP;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->vS:I

    return p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/component/adexpress/sP/sP;)Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/adexpress/sP/sP;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->HiB:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    return-object p0
.end method


# virtual methods
.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->sP()V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->HiB:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->HiB()Lcom/bytedance/sdk/component/adexpress/sP/uA;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->vS:I

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->Sj(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/adexpress/sP/sP$1;-><init>(Lcom/bytedance/sdk/component/adexpress/sP/sP;Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V

    const/4 p1, 0x1

    return p1
.end method

.method public sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP:Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;->EjP()Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
