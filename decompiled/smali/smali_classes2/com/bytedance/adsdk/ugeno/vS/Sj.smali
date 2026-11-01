.class public abstract Lcom/bytedance/adsdk/ugeno/vS/Sj;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/vS/Sj$sP;,
        Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/FrameLayout;",
        "Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;"
    }
.end annotation


# instance fields
.field private Dq:Ljava/lang/String;

.field private EjP:I

.field private Fmk:Z

.field private HiB:I

.field private Jcg:I

.field private RiZ:Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

.field protected Sj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private TEQ:Z

.field private TKC:I

.field private TzV:Landroid/widget/FrameLayout;

.field private Ym:Z

.field private Zq:I

.field private aa:Z

.field private dNu:I

.field private dx:Lcom/bytedance/adsdk/ugeno/vS/TKC;

.field private final ib:Ljava/lang/Runnable;

.field protected sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

.field private sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

.field private sef:I

.field private uA:F

.field private uvD:I

.field private vS:I

.field private final zR:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->EjP:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS:I

    iput v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg:I

    const-string v2, "normal"

    iput-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Dq:Ljava/lang/String;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->uA:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TEQ:Z

    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Ym:Z

    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Fmk:Z

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sef:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Zq:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->uvD:I

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dNu:I

    new-instance v0, Lcom/bytedance/adsdk/ugeno/vS/Sj$1;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj$1;-><init>(Lcom/bytedance/adsdk/ugeno/vS/Sj;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->zR:Ljava/lang/Runnable;

    new-instance v0, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj$2;-><init>(Lcom/bytedance/adsdk/ugeno/vS/Sj;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->ib:Ljava/lang/Runnable;

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TzV:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj()Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TzV:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TzV:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

    invoke-direct {v0, p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->RiZ:Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/adsdk/ugeno/vS/Sj;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->ib:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/adsdk/ugeno/vS/Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC:I

    return p0
.end method

.method static synthetic Jcg(Lcom/bytedance/adsdk/ugeno/vS/Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dNu:I

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/ugeno/vS/Sj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    return p0
.end method

.method static synthetic TKC(Lcom/bytedance/adsdk/ugeno/vS/Sj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Ym:Z

    return p0
.end method

.method static synthetic sP(Lcom/bytedance/adsdk/ugeno/vS/Sj;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->uA:F

    return p0
.end method

.method static synthetic vS(Lcom/bytedance/adsdk/ugeno/vS/Sj;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Fmk:Z

    return p0
.end method


# virtual methods
.method public Dq(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 6

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg:I

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Dq:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB:I

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS:I

    const/4 v5, 0x1

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/String;IIIZ)V

    return-object p0
.end method

.method public EjP(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->RiZ:Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->setSelectedColor(I)V

    return-object p0
.end method

.method public EjP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->ib:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public HiB(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->RiZ:Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->setUnSelectedColor(I)V

    return-object p0
.end method

.method public Jcg(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bytedance/adsdk/ugeno/vS/Sj<",
            "TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS:I

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Dq:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg:I

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/String;IIIZ)V

    return-object p0
.end method

.method public Sj(II)Landroid/view/View;
    .locals 3

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->uA(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method public Sj()Lcom/bytedance/adsdk/ugeno/Dq/TKC;
    .locals 2

    new-instance v0, Lcom/bytedance/adsdk/ugeno/vS/Sj$sP;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj$sP;-><init>(Lcom/bytedance/adsdk/ugeno/vS/Sj;Landroid/content/Context;)V

    return-object v0
.end method

.method public Sj(F)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->uA:F

    return-object p0
.end method

.method public Sj(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dNu:I

    return-object p0
.end method

.method public Sj(Ljava/lang/Object;)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/bytedance/adsdk/ugeno/vS/Sj<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TEQ:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->RiZ:Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->sP()V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->TKC()V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->RiZ:Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sef:I

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj(II)V

    :cond_1
    return-object p0
.end method

.method public Sj(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 6

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Dq:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB:I

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/String;IIIZ)V

    return-object p0
.end method

.method public Sj(Z)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Ym:Z

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC()V

    return-object p0
.end method

.method public Sj(IFI)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dx:Lcom/bytedance/adsdk/ugeno/vS/TKC;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, p1, v2}, Lcom/bytedance/adsdk/ugeno/vS/EjP;->Sj(ZII)I

    move-result p1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/vS/TKC;->Sj(ZIFI)V

    :cond_0
    return-void
.end method

.method public Sj(Ljava/lang/String;IIIZ)V
    .locals 3

    iget-object p5, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->TKC()V

    :cond_0
    iget-object p5, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {p5, p2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setPageMargin(I)V

    iget-object p5, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    instance-of v0, p5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dNu:I

    if-ne v0, v1, :cond_1

    move-object v0, p5

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int v2, p3, p2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p2, p4

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    move-object v0, p5

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int v2, p3, p2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, p4

    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {p2, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const/4 p2, 0x0

    if-gtz p3, :cond_3

    if-lez p4, :cond_4

    :cond_3
    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TzV:Landroid/widget/FrameLayout;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    iget-object p3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_4
    iget p3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dNu:I

    if-ne p3, v1, :cond_5

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    new-instance p2, Lcom/bytedance/adsdk/ugeno/vS/sP/sP;

    invoke-direct {p2}, Lcom/bytedance/adsdk/ugeno/vS/sP/sP;-><init>()V

    invoke-virtual {p1, v1, p2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(ZLcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;)V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    goto :goto_1

    :cond_5
    const-string p3, "linear"

    invoke-static {p1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    new-instance p3, Lcom/bytedance/adsdk/ugeno/vS/sP/Sj;

    invoke-direct {p3}, Lcom/bytedance/adsdk/ugeno/vS/sP/Sj;-><init>()V

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(ZLcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(ZLcom/bytedance/adsdk/ugeno/Dq/TKC$HiB;)V

    :goto_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    iget p2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->uA:F

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setOffscreenPageLimit(I)V

    return-void
.end method

.method public TEQ(I)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dx:Lcom/bytedance/adsdk/ugeno/vS/TKC;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/vS/EjP;->Sj(ZII)I

    move-result v4

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dx:Lcom/bytedance/adsdk/ugeno/vS/TKC;

    iget-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v4, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v0

    :goto_0
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v1

    if-ne v4, v5, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v0

    :goto_1
    move v5, p1

    invoke-interface/range {v2 .. v7}, Lcom/bytedance/adsdk/ugeno/vS/TKC;->Sj(ZIIZZ)V

    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TEQ:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->RiZ:Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->Sj(I)V

    :cond_3
    return-void
.end method

.method public TKC(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC:I

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC()V

    return-object p0
.end method

.method public TKC(Z)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->RiZ:Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/vS/Sj/Sj;->setLoop(Z)V

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/vS/EjP;->Sj(ZII)I

    move-result v0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/Dq/sP;->TKC()V

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setCurrentItem(I)V

    :cond_0
    return-object p0
.end method

.method public TKC()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->ib:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->ib:Ljava/lang/Runnable;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public Ym(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dx:Lcom/bytedance/adsdk/ugeno/vS/TKC;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    invoke-interface {v0, v1, p1}, Lcom/bytedance/adsdk/ugeno/vS/TKC;->Sj(ZI)V

    :cond_0
    return-void
.end method

.method public aa(I)V
    .locals 6

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Dq:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB:I

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/String;IIIZ)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;-><init>(Lcom/bytedance/adsdk/ugeno/vS/Sj;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setAdapter(Lcom/bytedance/adsdk/ugeno/Dq/sP;)V

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/16 v0, 0x400

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    const/16 v0, 0x200

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    return-void

    :cond_2
    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Ym:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->EjP()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC()V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getAdapter()Lcom/bytedance/adsdk/ugeno/Dq/sP;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getAdapter()Lcom/bytedance/adsdk/ugeno/Dq/sP;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getViewPager()Lcom/bytedance/adsdk/ugeno/Dq/TKC;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    return-object v0
.end method

.method public sP(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 0

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->EjP:I

    return-object p0
.end method

.method public sP(Z)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TEQ:Z

    return-object p0
.end method

.method public sP()V
    .locals 6

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Dq:Ljava/lang/String;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB:I

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/String;IIIZ)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;-><init>(Lcom/bytedance/adsdk/ugeno/vS/Sj;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/Dq/TKC$EjP;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sU:Lcom/bytedance/adsdk/ugeno/vS/Sj$Sj;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->setAdapter(Lcom/bytedance/adsdk/ugeno/Dq/sP;)V

    :cond_0
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sef:I

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sef:I

    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sef:I

    add-int/lit16 v0, v0, 0x200

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sef:I

    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->sP:Lcom/bytedance/adsdk/ugeno/Dq/TKC;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/adsdk/ugeno/Dq/TKC;->Sj(IZ)V

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->aa:Z

    if-nez v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TEQ(I)V

    :cond_4
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Ym:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->TKC()V

    :cond_5
    return-void
.end method

.method public setOnPageChangeListener(Lcom/bytedance/adsdk/ugeno/vS/TKC;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->dx:Lcom/bytedance/adsdk/ugeno/vS/TKC;

    return-void
.end method

.method public abstract uA(I)Landroid/view/View;
.end method

.method public vS(I)Lcom/bytedance/adsdk/ugeno/vS/Sj;
    .locals 6

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->HiB:I

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Dq:Ljava/lang/String;

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->vS:I

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Jcg:I

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/adsdk/ugeno/vS/Sj;->Sj(Ljava/lang/String;IIIZ)V

    return-object p0
.end method
