.class public Lcom/bytedance/sdk/openadsdk/component/TKC;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/TKC$sP;,
        Lcom/bytedance/sdk/openadsdk/component/TKC$Sj;
    }
.end annotation


# instance fields
.field protected Dq:Landroid/widget/FrameLayout;

.field protected final EjP:Landroid/widget/FrameLayout;

.field private Fmk:Landroid/widget/RelativeLayout;

.field protected final HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

.field protected Jcg:I

.field private LqL:Landroid/view/View;

.field private RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field protected final Sj:Landroid/app/Activity;

.field protected TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

.field protected final TKC:Z

.field private TzV:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

.field protected Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private Zq:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

.field protected final aa:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

.field private dNu:Landroid/widget/ImageView;

.field private dx:F

.field private final ib:Lcom/bytedance/sdk/openadsdk/component/uA/Dq;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private kF:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

.field private ley:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

.field protected final sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private sU:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private sef:Landroid/widget/ImageView;

.field protected uA:Landroid/view/View;

.field private uP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field private uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

.field protected final vS:I

.field private wE:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

.field private zR:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/Sj;IZLcom/bytedance/sdk/openadsdk/component/Dq/Sj;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/uA/Dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/Dq;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->ib:Lcom/bytedance/sdk/openadsdk/component/uA/Dq;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->EjP:Landroid/widget/FrameLayout;

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Jcg:I

    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TKC:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->vS:I

    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->aa:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

    return-void
.end method

.method private Dq()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->ib:Lcom/bytedance/sdk/openadsdk/component/uA/Dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/Dq;->Sj()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->yfI()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/TKC;->uA()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TKC:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP(I)V

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Dq:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj(Landroid/widget/FrameLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sj;->TKC()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sj;->EjP()V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/TKC$Sj;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    invoke-direct {v3, v4, p0}, Lcom/bytedance/sdk/openadsdk/component/TKC$Sj;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/TKC;)V

    const/16 v4, 0x19

    invoke-static {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/vS$EjP;I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP(I)V

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj(I)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/TKC;->TEQ()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sj;->TKC()V

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move v0, v3

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_3
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->wE:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->wE:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4, v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/uvD;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_5
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->ley:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    if-eqz v4, :cond_7

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/widget/TextView;Lcom/bytedance/sdk/openadsdk/core/widget/Zq;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->EjP()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_8

    :cond_6
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->ley:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    move v3, v0

    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->LqL:Landroid/view/View;

    if-eqz v0, :cond_a

    if-eqz v3, :cond_9

    move v1, v2

    :cond_9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method private Sj(Landroid/graphics/Bitmap;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->dNu:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "open_ad"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "bindBackGroundImage error"

    const/4 v1, 0x1

    aput-object v0, p1, v1

    const-string v0, "AppOpenAdNativeManager"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/TKC;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private TEQ()V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Jcg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Jcg()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/Jcg/Sj;->sP(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/TzV/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Jcg()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/TzV/Sj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP()I

    move-result v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC()I

    move-result v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/component/TKC$sP;

    invoke-direct {v5, p0}, Lcom/bytedance/sdk/openadsdk/component/TKC$sP;-><init>(Lcom/bytedance/sdk/openadsdk/component/TKC;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x19

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/utils/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj;IILcom/bytedance/sdk/openadsdk/utils/uvD$Sj;Ljava/lang/String;I)V

    return-void
.end method

.method private sP(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Dq:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    return-void
.end method

.method private uA()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tz()Lcom/bytedance/sdk/openadsdk/core/model/EjP;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/EjP;->sP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dwU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sU:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sU:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sU:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TzV:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    move-result-object v1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP()I

    move-result v3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->EZ()Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC()I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TzV:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sj;->TKC()V

    return-void
.end method


# virtual methods
.method public EjP()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public HiB()V
    .locals 0

    return-void
.end method

.method public Jcg()Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->kF:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    return-object v0
.end method

.method public Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public Sj()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Zq:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/TKC$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/TKC$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/TKC;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/TKC;->vS()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->aa:Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/component/Dq/Sj;)Lcom/bytedance/sdk/openadsdk/component/Sj/Sj;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/TKC$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/TKC$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/TKC;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->kF:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/Sj$Sj;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dNu()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Fmk:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Fmk:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public Sj(FF)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->zR:F

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->dx:F

    return-void
.end method

.method Sj(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sef:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    return-void
.end method

.method public Sj(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public Sj(Landroid/view/ViewGroup;)V
    .locals 9

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/uA/EjP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/uA/EjP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TzV()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/uA/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/uA/HiB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/uA/HiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Fmk:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getBackImage()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->dNu:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getVideoContainer()Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Dq:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getImageView()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sef:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getClickButton()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uvD:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getAdLogo()Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Zq:Lcom/bytedance/sdk/openadsdk/core/widget/PAGLogoView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getAdTitleTextView()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uP:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getAdIconView()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->wE:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getScoreBar()Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->ley:Lcom/bytedance/sdk/openadsdk/core/widget/Zq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getOverlayLayout()Lcom/bytedance/sdk/openadsdk/core/HiB/HiB;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->LqL:Landroid/view/View;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->yfI()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getIconOnlyView()Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TzV:Lcom/bytedance/sdk/openadsdk/core/widget/uvD;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getTitle()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->RiZ:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getContent()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sU:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getDspAdChoice()Lcom/bytedance/sdk/openadsdk/core/widget/TKC;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getDspAdChoice()Lcom/bytedance/sdk/openadsdk/core/widget/TKC;

    move-result-object p1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/TKC;->Sj(ILcom/bytedance/sdk/openadsdk/core/model/sU;)V

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->ib:Lcom/bytedance/sdk/openadsdk/component/uA/Dq;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->zR:F

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->dx:F

    iget-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TKC:Z

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/uA/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/component/uA/TKC;Lcom/bytedance/sdk/openadsdk/core/model/sU;FFZ)V

    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getTopDisLike()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uA:Landroid/view/View;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getTopSkip()Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/uA/TKC;->getTopCountDown()Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Ym:Lcom/bytedance/sdk/openadsdk/core/HiB/Dq;

    instance-of p1, v0, Lcom/bytedance/sdk/openadsdk/component/uA/HiB;

    if-eqz p1, :cond_5

    check-cast v0, Lcom/bytedance/sdk/openadsdk/component/uA/HiB;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/TKC$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/component/TKC$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/TKC;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/uA/HiB;->setRenderListener(Lcom/bytedance/sdk/openadsdk/component/uA/HiB$Sj;)V

    :cond_5
    return-void
.end method

.method Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sef:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;->sP()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sef:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;->sP()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP()I

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;->TKC()[B

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/uvD;->Sj([BI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sef:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sef:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method protected Sj(Landroid/widget/FrameLayout;)Z
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->Sj:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->kF:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Sj(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/component/Sj;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    return p1
.end method

.method public TKC()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->kF:Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Dq/TKC;->Ym()V

    :cond_0
    return-void
.end method

.method public sP()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/TKC;->Dq()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/component/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/Sj;->TKC()V

    return-void
.end method

.method protected vS()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->uA:Landroid/view/View;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/TKC$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/TKC$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/TKC;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/TKC;->TEQ:Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/TKC$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/TKC$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/TKC;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
