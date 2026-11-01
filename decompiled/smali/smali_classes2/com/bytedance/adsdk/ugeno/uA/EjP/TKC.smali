.class public Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;
.super Lcom/bytedance/adsdk/ugeno/sP/TKC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
        "Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;",
        ">;"
    }
.end annotation


# instance fields
.field protected AVc:Landroid/widget/ImageView$ScaleType;

.field protected RrR:Z

.field private SP:I

.field protected Sj:Ljava/lang/String;

.field private dLt:F

.field private zwV:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;-><init>(Landroid/content/Context;)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->AVc:Landroid/widget/ImageView$ScaleType;

    const/4 p1, -0x1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->SP:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->dLt:F

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->zwV:F

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic EjP(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->zwV:F

    return p0
.end method

.method private EjP()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Sj:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Sj:Ljava/lang/String;

    const-string v1, "local://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Sj:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v1, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/EjP;->Sj(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->setImageResource(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Sj:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Sj:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v1, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->setImageResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->uA()V

    return-void
.end method

.method static synthetic HiB(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    return-object p0
.end method

.method private Jcg(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;
    .locals 3

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "centerCrop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "fitCenter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "fitXY"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v2, "fill"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v2, "crop"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "fit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v2, "centerInside"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v2, "fitStart"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string v2, "fitEnd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v2, "center"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    :pswitch_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    :pswitch_2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    :pswitch_3
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    :pswitch_4
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    goto :goto_1

    :pswitch_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    :goto_1
    :pswitch_6
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_9
        -0x4bf440f6 -> :sswitch_8
        -0x1f1fd52f -> :sswitch_7
        -0x144ecb4f -> :sswitch_6
        0x18c11 -> :sswitch_5
        0x2eba90 -> :sswitch_4
        0x2ff583 -> :sswitch_3
        0x5ced6d2 -> :sswitch_2
        0x1f0a33c6 -> :sswitch_1
        0x453ac885 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic Sj(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic TEQ(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    return-object p0
.end method

.method static synthetic TKC(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    return-object p0
.end method

.method static synthetic Ym(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)F
    .locals 0

    iget p0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->dLt:F

    return p0
.end method

.method static synthetic uA(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    return-object p0
.end method

.method private uA()V
    .locals 8

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->dLt:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-static {}, Lcom/bytedance/adsdk/ugeno/HiB;->Sj()Lcom/bytedance/adsdk/ugeno/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/HiB;->sP()Lcom/bytedance/adsdk/ugeno/Sj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->uA:Lcom/bytedance/adsdk/ugeno/core/Dq;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Sj:Ljava/lang/String;

    new-instance v3, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;

    invoke-direct {v3, p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$1;-><init>(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/Dq;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/Sj$Sj;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/HiB;->Sj()Lcom/bytedance/adsdk/ugeno/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/HiB;->sP()Lcom/bytedance/adsdk/ugeno/Sj;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->uA:Lcom/bytedance/adsdk/ugeno/core/Dq;

    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Sj:Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-interface/range {v2 .. v7}, Lcom/bytedance/adsdk/ugeno/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/Dq;Ljava/lang/String;Landroid/widget/ImageView;II)V

    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->RrR:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->zwV:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/HiB;->Sj()Lcom/bytedance/adsdk/ugeno/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/HiB;->sP()Lcom/bytedance/adsdk/ugeno/Sj;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->uA:Lcom/bytedance/adsdk/ugeno/core/Dq;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Sj:Ljava/lang/String;

    new-instance v3, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2;

    invoke-direct {v3, p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$2;-><init>(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/Dq;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/Sj$Sj;)V

    :cond_2
    return-void
.end method

.method static synthetic vS(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public Dq()V
    .locals 3

    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Dq()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/drawable/b;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/drawable/c;->a(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/load/resource/drawable/f;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    :cond_0
    return-void
.end method

.method public Dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Sj:Ljava/lang/String;

    return-void
.end method

.method public Jcg()V
    .locals 2

    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Jcg()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    new-instance v1, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$3;

    invoke-direct {v1, p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC$3;-><init>(Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic Sj()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->TKC()Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    move-result-object v0

    return-object v0
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "imageBgBlur"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_1
    const-string v3, "tintColor"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_2
    const-string v3, "src"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_3
    const-string v3, "isBgGaussianBlur"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "imageBlur"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_5
    const-string v3, "scaleType"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_6
    const-string v3, "scaleMode"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v2, v0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p2, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->zwV:F

    :goto_1
    return-void

    :pswitch_1
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->SP:I

    return-void

    :pswitch_2
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Sj:Ljava/lang/String;

    return-void

    :pswitch_3
    invoke-static {p2, v0}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->RrR:Z

    return-void

    :pswitch_4
    invoke-static {p2, v1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->dLt:F

    return-void

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Jcg(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->AVc:Landroid/widget/ImageView$ScaleType;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ff1fdf3 -> :sswitch_6
        -0x6feea85c -> :sswitch_5
        -0x345fd79e -> :sswitch_4
        -0x16313a4f -> :sswitch_3
        0x1bde4 -> :sswitch_2
        0x4f219128 -> :sswitch_1
        0x63d9eb87 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public TKC()Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;
    .locals 2

    new-instance v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/EjP;)V

    return-object v0
.end method

.method public sP()V
    .locals 2

    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP()V

    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->EjP()V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->AVc:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EZ:I

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->setBorderColor(I)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->xhi:F

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->pfr:F

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;->setBorderWidth(F)V

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->SP:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    check-cast v1, Lcom/bytedance/adsdk/ugeno/uA/EjP/Sj;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method
