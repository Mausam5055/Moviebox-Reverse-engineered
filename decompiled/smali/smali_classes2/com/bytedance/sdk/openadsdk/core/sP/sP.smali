.class public Lcom/bytedance/sdk/openadsdk/core/sP/sP;
.super Lcom/bytedance/sdk/openadsdk/core/sP/TKC;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;
    }
.end annotation


# static fields
.field private static Mts:I = -0x80000000


# instance fields
.field protected final Dq:I

.field protected EjP:Landroid/content/Context;

.field protected Fmk:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

.field public HiB:Lcom/bytedance/sdk/openadsdk/core/model/sef;

.field protected final Jcg:Ljava/lang/String;

.field protected RiZ:Lcom/bytedance/sdk/openadsdk/core/Dq/sP;

.field private Sj:Ljava/lang/String;

.field protected TEQ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private TKC:Z

.field protected TzV:Lcom/bytedance/sdk/openadsdk/api/PangleAd;

.field protected Ym:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

.field protected Zq:Z

.field protected aa:Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;

.field protected dNu:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private sP:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected sU:I

.field protected sef:Lu5/b;

.field protected uA:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected uvD:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

.field protected final vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Zq:Z

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sU:I

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TKC:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Dq:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;IZ)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;I)V

    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TKC:Z

    return-void
.end method

.method private static Sj(Landroid/content/Context;)I
    .locals 2

    sget v0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Mts:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const-string v0, "btn_native_creative"

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/ib;->HiB(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    sput p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Mts:I

    :cond_0
    sget p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Mts:I

    return p0
.end method

.method public static Sj(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    sget v1, Lcom/bytedance/sdk/component/adexpress/dynamic/Sj;->sU:I

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "click"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return p2

    :cond_1
    return v0

    :catch_0
    :cond_2
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TKC(Landroid/view/View;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->kF()I

    move-result p0

    if-ne p0, v0, :cond_4

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v0

    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ib()I

    move-result p0

    if-ne p0, v0, :cond_7

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v0
.end method

.method public static TKC(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1f000009

    if-eq v1, v0, :cond_1

    const v0, 0x1f00000b

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    const v0, 0x1f000007

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/Zq;->nP:I

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/Zq;->rB:I

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public EjP()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sP:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sP:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public EjP(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sU:I

    return-void
.end method

.method public HiB()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sP:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sP:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1f000011

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sP:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public HiB(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Zq:Z

    return-void
.end method

.method protected Sj(FFFFLandroid/util/SparseArray;JJLandroid/view/View;Landroid/view/View;Ljava/lang/String;FIFILorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/TEQ;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;JJ",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "FIFI",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/bytedance/sdk/openadsdk/core/model/TEQ;"
        }
    .end annotation

    move-object v0, p0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;-><init>()V

    move v2, p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->vS(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move v2, p2

    invoke-virtual {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->HiB(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move v2, p3

    invoke-virtual {v1, p3}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->EjP(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move v2, p4

    invoke-virtual {v1, p4}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->TKC(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move-wide v2, p6

    invoke-virtual {v1, p6, p7}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP(J)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move-wide v2, p8

    invoke-virtual {v1, p8, p9}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(J)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    invoke-static {p10}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP([I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    invoke-static {p11}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj([I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    invoke-static {p10}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/view/View;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->TKC([I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    invoke-static {p11}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/view/View;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->EjP([I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ley:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->EjP(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->LqL:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->HiB(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    iget v2, v0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Yf:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->vS(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move-object v2, p5

    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move-object/from16 v2, p12

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move/from16 v2, p13

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move/from16 v2, p14

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->TKC(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move/from16 v2, p15

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP(F)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move/from16 v2, p16

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(I)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move-object/from16 v2, p17

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    move-object/from16 v2, p18

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->sP(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/TEQ$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    move-result-object v1

    return-object v1
.end method

.method public Sj(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->Yf:I

    return-void
.end method

.method public Sj(Landroid/app/Activity;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sP:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public Sj(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->uA:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    :cond_0
    iget-boolean v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TKC:Z

    if-nez v0, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;IFFFFLandroid/util/SparseArray;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sef;

    const/16 v19, 0x0

    const/4 v10, -0x1

    const/16 v20, 0x0

    if-eqz v0, :cond_3

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->aa:I

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Fmk:Lorg/json/JSONObject;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->dNu:Lorg/json/JSONObject;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/sef;->TzV:Z

    move/from16 v21, v0

    move/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    goto :goto_0

    :cond_3
    move/from16 v16, v10

    move/from16 v21, v19

    move-object/from16 v17, v20

    move-object/from16 v18, v17

    :goto_0
    iget-wide v6, v11, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->uP:J

    iget-wide v8, v11, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->wE:J

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->uA:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_4

    move-object/from16 v22, v20

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object/from16 v22, v0

    :goto_1
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TEQ:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    move-object/from16 v23, v20

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object/from16 v23, v0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Jcg(Landroid/content/Context;)F

    move-result v13

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->uA(Landroid/content/Context;)I

    move-result v14

    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Dq(Landroid/content/Context;)F

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    invoke-virtual/range {v0 .. v18}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(FFFFLandroid/util/SparseArray;JJLandroid/view/View;Landroid/view/View;Ljava/lang/String;FIFILorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sef:Lu5/b;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    :cond_7
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sef:Lu5/b;

    invoke-interface {v2}, Lu5/b;->HiB()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "duration"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-boolean v0, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TKC:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_9

    if-eqz v21, :cond_a

    :cond_9
    move/from16 v0, p7

    goto/16 :goto_6

    :cond_a
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->aa:Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;

    move-object/from16 v4, p1

    if-eqz v0, :cond_b

    const/4 v5, -0x1

    invoke-interface {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;->Sj(Landroid/view/View;I)V

    :cond_b
    move/from16 v0, p7

    invoke-virtual {v1, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;Z)Z

    move-result v5

    if-nez v5, :cond_c

    return-void

    :cond_c
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v13

    if-eqz v13, :cond_d

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    :goto_3
    move-object v11, v5

    goto :goto_4

    :cond_d
    iget v5, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Dq:I

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :goto_4
    if-eqz v4, :cond_e

    const v5, 0x1f000042

    :try_start_0
    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_e
    if-eqz v4, :cond_f

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/utils/sP;->Sj(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v20

    :cond_f
    if-nez v20, :cond_10

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    move-object v6, v4

    goto :goto_5

    :cond_10
    move-object/from16 v6, v20

    :goto_5
    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget v8, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Dq:I

    iget-object v9, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Fmk:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TzV:Lcom/bytedance/sdk/openadsdk/api/PangleAd;

    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->uvD:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    const/4 v14, 0x0

    invoke-static/range {v6 .. v14}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/api/PangleAd;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;ZI)Z

    move-result v4

    invoke-static/range {v19 .. v19}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Z)V

    if-nez v4, :cond_11

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    move-result-object v5

    if-eqz v5, :cond_11

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TFd()Lcom/bytedance/sdk/openadsdk/core/model/Ym;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/Ym;->TKC()I

    move-result v5

    if-ne v5, v2, :cond_11

    return-void

    :cond_11
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v5, :cond_12

    if-nez v4, :cond_12

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Chv()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/EjP/sP;->Sj(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP:Landroid/content/Context;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/Jcg;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    move-result-object v5

    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;->EjP()V

    :cond_12
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    if-eqz v0, :cond_13

    move v2, v3

    :cond_13
    const-string v0, "click"

    move-object/from16 p1, v0

    move-object/from16 p2, v5

    move-object/from16 p3, v6

    move-object/from16 p4, v7

    move/from16 p5, v4

    move-object/from16 p6, v8

    move/from16 p7, v2

    invoke-static/range {p1 .. p7}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/lang/String;ZLjava/util/Map;I)V

    return-void

    :goto_6
    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/TEQ;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Jcg:Ljava/lang/String;

    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    if-eqz v0, :cond_14

    move v2, v3

    :cond_14
    const-string v0, "click"

    const/4 v3, 0x1

    move-object/from16 p1, v0

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move/from16 p5, v3

    move-object/from16 p6, v7

    move/from16 p7, v2

    invoke-static/range {p1 .. p7}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/lang/String;ZLjava/util/Map;I)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->uvD:Lcom/bytedance/sdk/openadsdk/RiZ/Sj/Sj/vS;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/api/PangleAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TzV:Lcom/bytedance/sdk/openadsdk/api/PangleAd;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Fmk:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sP;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->RiZ:Lcom/bytedance/sdk/openadsdk/core/Dq/sP;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->aa:Lcom/bytedance/sdk/openadsdk/core/sP/sP$Sj;

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj:Ljava/lang/String;

    return-void
.end method

.method public Sj(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->dNu:Ljava/util/Map;

    return-void
.end method

.method public Sj(Lu5/b;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sef:Lu5/b;

    return-void
.end method

.method protected Sj(Landroid/view/View;IFFFFLandroid/util/SparseArray;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "IFFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->RiZ:Lcom/bytedance/sdk/openadsdk/core/Dq/sP;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v2, v0, [I

    new-array v0, v0, [I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TEQ:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;)[I

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TEQ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/view/View;)[I

    move-result-object v0

    :cond_0
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;-><init>()V

    invoke-virtual {v3, p3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->EjP(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TKC(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    invoke-virtual {p3, p6}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    iget-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->uP:J

    invoke-virtual {p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(J)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    iget-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->wE:J

    invoke-virtual {p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(J)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    aget p4, v2, v1

    invoke-virtual {p3, p4}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TKC(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    const/4 p4, 0x1

    aget p5, v2, p4

    invoke-virtual {p3, p5}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->EjP(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    aget p5, v0, v1

    invoke-virtual {p3, p5}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->HiB(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    aget p5, v0, p4

    invoke-virtual {p3, p5}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->vS(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    invoke-virtual {p3, p7}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    invoke-virtual {p3, p8}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/sef;

    move-result-object p3

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->RiZ:Lcom/bytedance/sdk/openadsdk/core/Dq/sP;

    invoke-interface {p5, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Dq/sP;->Sj(Landroid/view/View;ILcom/bytedance/sdk/openadsdk/core/model/sef;)V

    return p4

    :cond_1
    return v1
.end method

.method public Sj(Landroid/view/View;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->vS:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;Z)Z

    move-result p1

    return p1
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/TEQ;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/TEQ;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public TKC(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->ley:I

    return-void
.end method

.method public sP(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/sP/TKC;->LqL:I

    return-void
.end method

.method public sP(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TEQ:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public vS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj:Ljava/lang/String;

    return-object v0
.end method
