.class public abstract Lcom/bytedance/sdk/component/adexpress/HiB/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/Sj;
.implements Lcom/bytedance/sdk/component/adexpress/sP/EjP;
.implements Lcom/bytedance/sdk/component/adexpress/sP/Ym;
.implements Lcom/bytedance/sdk/component/adexpress/theme/Sj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/adexpress/Sj;",
        "Lcom/bytedance/sdk/component/adexpress/sP/EjP<",
        "Lcom/bytedance/sdk/component/uA/vS;",
        ">;",
        "Lcom/bytedance/sdk/component/adexpress/sP/Ym;",
        "Lcom/bytedance/sdk/component/adexpress/theme/Sj;"
    }
.end annotation


# instance fields
.field private Dq:Ljava/lang/String;

.field protected EjP:I

.field private Fmk:Z

.field protected HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Jcg:Ljava/lang/String;

.field protected Sj:Lorg/json/JSONObject;

.field private TEQ:Z

.field protected TKC:Lcom/bytedance/sdk/component/uA/vS;

.field private Ym:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

.field private Zq:Z

.field private aa:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

.field protected sP:Z

.field private sef:I

.field private volatile uA:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

.field private vS:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TEQ:Z

    const/16 v1, 0x8

    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->EjP:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Zq:Z

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->vS:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->aa:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->EjP()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {p3, p0}, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;->Sj(Lcom/bytedance/sdk/component/adexpress/theme/Sj;)V

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->aa()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Fmk()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/component/uA/vS;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    return-void

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TEQ:Z

    :cond_2
    return-void
.end method

.method private Fmk()Lcom/bytedance/sdk/component/uA/vS;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->aa:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->ib()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->vS:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->vS:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Jcg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->sP(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    return-object v0
.end method

.method private Sj(FF)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->aa:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->HiB()Lcom/bytedance/sdk/component/adexpress/sP/uA;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->HiB()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    if-nez p1, :cond_0

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_0
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->vS:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->vS:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->Sj(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private Sj(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/adexpress/HiB/Sj;Lcom/bytedance/sdk/component/adexpress/sP/sef;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;FF)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;FF)V
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Ym()I

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->sP:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Fmk:Z

    if-nez v1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj(FF)V

    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->EjP:I

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj(I)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->HiB(Lcom/bytedance/sdk/component/uA/vS;)Z

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Ym()I

    move-result p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->TEQ()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method private aa()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->vS:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->vS:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->vS:Landroid/content/Context;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Fmk()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/component/uA/vS;

    new-instance v1, Landroid/content/MutableContextWrapper;

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->vS:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TEQ:Z

    :cond_2
    return-void
.end method

.method private sP(Landroid/app/Activity;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method private sef()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->aa:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->ib()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->sP(Lcom/bytedance/sdk/component/uA/vS;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->TKC(Lcom/bytedance/sdk/component/uA/vS;)V

    return-void
.end method


# virtual methods
.method public Dq()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->sP(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->sef:I

    :cond_0
    return-void
.end method

.method public EjP()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->HiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Jcg()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->sP:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->sef()V

    return-void

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->HiB(Lcom/bytedance/sdk/component/uA/vS;)Z

    return-void
.end method

.method public synthetic HiB()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->sP()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    return-object v0
.end method

.method public abstract Jcg()V
.end method

.method public Sj()Lcom/bytedance/sdk/component/uA/vS;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    return-object v0
.end method

.method public abstract Sj(I)V
.end method

.method public Sj(Landroid/app/Activity;)V
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->sef:I

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->sef:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->EjP()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TEQ()V

    :cond_1
    :goto_0
    return-void
.end method

.method public Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Ym:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/sP/Dq;->Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/Dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Ym:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V
    .locals 6

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object p1

    const/16 v0, 0x66

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Dq:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    const-string v1, "url is empty"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->aa:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->ib()Z

    move-result p1

    const-string v3, "data null is "

    const/16 v4, 0x67

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Zq:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->Sj(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj:Lorg/json/JSONObject;

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    :cond_3
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Zq:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->TKC(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "choice ad data null is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj:Lorg/json/JSONObject;

    if-nez v3, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC()I

    move-result p1

    const/16 v5, 0x9

    if-ne p1, v5, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/Sj/sP/sP;->sP(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj:Lorg/json/JSONObject;

    if-nez v3, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->aa:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->HiB()Lcom/bytedance/sdk/component/adexpress/sP/uA;

    move-result-object p1

    iget-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TEQ:Z

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->Sj(Z)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TEQ:Z

    if-eqz p1, :cond_8

    :try_start_0
    const-string p1, "javascript:window.SDK_RESET_RENDER();window.SDK_TRIGGER_RENDER();"

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/uA/vS;->dNu()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->aa:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->HiB()Lcom/bytedance/sdk/component/adexpress/sP/uA;

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/sef;->Sj(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->Sj()Lcom/bytedance/sdk/component/adexpress/HiB/HiB;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/HiB/HiB;->HiB(Lcom/bytedance/sdk/component/uA/vS;)Z

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load exception is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->dNu()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->aa:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->HiB()Lcom/bytedance/sdk/component/adexpress/sP/uA;

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Dq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->a_(Ljava/lang/String;)V

    return-void

    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSWebview null is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v4

    if-nez v4, :cond_a

    move v1, v2

    :cond_a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " or Webview is null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 6

    const/16 v0, 0x69

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    const-string v1, "renderResult is null"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->TKC()Z

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->EjP()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->HiB()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->TKC()I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-lez v5, :cond_2

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_4

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "width is "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "height is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->sP:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;FF)V

    return-void

    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bytedance/sdk/component/adexpress/HiB/Sj$1;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj$1;-><init>(Lcom/bytedance/sdk/component/adexpress/HiB/Sj;Lcom/bytedance/sdk/component/adexpress/sP/sef;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Dq:Ljava/lang/String;

    return-void
.end method

.method public Sj(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj:Lorg/json/JSONObject;

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Fmk:Z

    return-void
.end method

.method protected TEQ()V
    .locals 0

    return-void
.end method

.method public TKC()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Ym()Lcom/bytedance/sdk/component/adexpress/sP/Fmk;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->aa:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    return-object v0
.end method

.method public sP()Lcom/bytedance/sdk/component/uA/vS;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    return-object v0
.end method

.method public sP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Zq:Z

    return-void
.end method

.method protected uA()V
    .locals 0

    return-void
.end method

.method public vS()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
