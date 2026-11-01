.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/core/Fmk;
.implements Lcom/bytedance/adsdk/ugeno/core/aa;
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;
.implements Lcom/bytedance/sdk/component/adexpress/sP/EjP;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/adsdk/ugeno/core/Fmk;",
        "Lcom/bytedance/adsdk/ugeno/core/aa;",
        "Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;",
        "Lcom/bytedance/sdk/component/adexpress/sP/EjP<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static LD:F = 0.0f

.field private static LqL:F = 0.0f

.field private static Yf:F = 0.0f

.field private static fF:F = 0.0f

.field private static ley:J = 0x0L

.field protected static sU:I = 0x18


# instance fields
.field protected Dq:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

.field protected EjP:Lorg/json/JSONObject;

.field private final FPG:Lcom/bytedance/sdk/component/Dq/Dq;

.field protected Fmk:F

.field protected HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

.field protected Jcg:Landroid/widget/FrameLayout;

.field private Mts:Ljava/lang/String;

.field protected RiZ:Z

.field protected Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

.field protected TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected TzV:J

.field private WMZ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

.field private final Wjd:Ljava/lang/Runnable;

.field protected Ym:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field protected Zq:F

.field protected aa:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field protected dNu:J

.field protected dx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public ib:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;"
        }
    .end annotation
.end field

.field protected kF:Lorg/json/JSONObject;

.field protected sP:Landroid/content/Context;

.field protected sef:F

.field protected uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

.field private uP:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

.field protected uvD:F

.field protected vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

.field private final wE:Z

.field private xD:Z

.field protected zR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->sP()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sU:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->RiZ:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->ib:Landroid/util/SparseArray;

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Mts:Ljava/lang/String;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;

    const-string v1, "ugen_render_template"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->FPG:Lcom/bytedance/sdk/component/Dq/Dq;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Wjd:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->xD:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->wE:Z

    new-instance p3, Lcom/bytedance/adsdk/ugeno/core/uA;

    invoke-direct {p3, p1}, Lcom/bytedance/adsdk/ugeno/core/uA;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    instance-of p1, p5, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    if-eqz p1, :cond_0

    check-cast p5, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->WMZ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    :cond_0
    invoke-virtual {p4}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->EjP()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->zR:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->kF:Lorg/json/JSONObject;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP:Landroid/content/Context;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->zR:Ljava/lang/String;

    invoke-direct {p2, p3, p4, p5, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->WMZ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Mts:Ljava/lang/String;

    return-object p1
.end method

.method private Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;)V
    .locals 12

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Dq:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "swiperLeft"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->sP()V

    return-void

    :cond_1
    const-string v7, "swiperRight"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->TKC()V

    return-void

    :cond_2
    const-string v7, "swiperClick"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    if-eqz v7, :cond_3

    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;)Z

    move-result v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->EjP()Lorg/json/JSONObject;

    move-result-object v8

    move v9, v5

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    move v7, v4

    move v9, v7

    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const/4 v10, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v11, "creative"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move v10, v0

    goto :goto_1

    :sswitch_1
    const-string v11, "video"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    move v10, v1

    goto :goto_1

    :sswitch_2
    const-string v11, "skip"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    move v10, v2

    goto :goto_1

    :sswitch_3
    const-string v11, "mute"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    move v10, v5

    goto :goto_1

    :sswitch_4
    const-string v11, "feedback"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    move v10, v3

    goto :goto_1

    :sswitch_5
    const-string v11, "privacy"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_1

    :cond_9
    move v10, v4

    :goto_1
    packed-switch v10, :pswitch_data_0

    move v0, v9

    goto :goto_2

    :pswitch_0
    move v0, v5

    goto :goto_2

    :pswitch_1
    move v0, v1

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_2

    :pswitch_3
    move v0, v2

    goto :goto_2

    :pswitch_4
    const/4 v0, 0x7

    :goto_2
    :pswitch_5
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->Sj()Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v1

    new-array v2, v5, [I

    new-array v5, v5, [I

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->dx:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;)[I

    move-result-object v6

    if-eqz v6, :cond_a

    move-object v2, v6

    :cond_a
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->dx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/view/View;)[I

    move-result-object v6

    if-eqz v6, :cond_b

    move-object v5, v6

    :cond_b
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;-><init>()V

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Fmk:F

    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->EjP(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v6

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sef:F

    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TKC(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v6

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Zq:F

    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v6

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uvD:F

    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v6

    iget-wide v9, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->dNu:J

    invoke-virtual {v6, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(J)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v6

    iget-wide v9, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TzV:J

    invoke-virtual {v6, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(J)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v6

    aget v9, v2, v4

    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TKC(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v6

    aget v2, v2, v3

    invoke-virtual {v6, v2}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->EjP(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    aget v6, v5, v4

    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->HiB(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    aget v5, v5, v3

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->vS(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->ib:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->sP()I

    move-result v5

    if-ne v5, v3, :cond_d

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->RiZ:Z

    if-eqz v5, :cond_c

    goto :goto_3

    :cond_c
    move v3, v4

    :cond_d
    :goto_3
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    if-nez v1, :cond_e

    const-string v1, ""

    goto :goto_4

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->WMZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->JcM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/sef;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Dq:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->Sj()Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object p1

    invoke-interface {v2, p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/Dq;->Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12bedc78 -> :sswitch_5
        -0xb6a147b -> :sswitch_4
        0x335219 -> :sswitch_3
        0x35e57f -> :sswitch_2
        0x6b0147b -> :sswitch_1
        0x6c816faf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V

    return-void
.end method

.method private Sj(Ljava/lang/CharSequence;ZIZ)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v3, "countdown"

    invoke-virtual {v2, v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/TextView;

    if-nez v3, :cond_2

    return-void

    :cond_2
    :try_start_0
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "parse duration exception"

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    const-string v4, "UGenRender"

    invoke-static {v4, v3}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v1

    :goto_0
    const/16 v4, 0x8

    if-nez p4, :cond_6

    if-lez v3, :cond_6

    iget-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->xD:Z

    if-eqz p4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->Sj()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->EjP()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/adexpress/EjP/vS;->sP(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object p1

    const-string p2, "tt_reward_full_skip"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->EjP()Ljava/lang/String;

    move-result-object p2

    const-string p3, "open_ad"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->Sj()Z

    move-result p2

    if-eqz p2, :cond_5

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->xD:Z

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_5
    check-cast v2, Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_6
    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private Sj(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nodeId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    return-void

    :cond_3
    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    :cond_4
    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)Lcom/bytedance/sdk/component/adexpress/sP/Jcg;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uP:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Wjd:Ljava/lang/Runnable;

    return-object p0
.end method

.method private sP(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->fF()Lcom/bytedance/adsdk/ugeno/core/Zq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Zq;->Sj()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->EjP:Lorg/json/JSONObject;

    const/16 v1, 0x85

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ugen template is null real reason is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Mts:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->kF:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    const-string v0, "ugen data is null"

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->EjP()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj()Z

    move-result v1

    const/16 v2, 0x8a

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/uA;->sP()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "unknow widget"

    invoke-interface {p1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unknow widget;"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "ugen render fail"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-eqz v0, :cond_e

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(I)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->wE:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->setSoundMute(Z)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg()Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Ym:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-eqz v0, :cond_5

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/sP;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/sP;->EjP()Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;->Sj(Landroid/widget/FrameLayout;)V

    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Dq()Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj()V

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->dx:Ljava/lang/ref/WeakReference;

    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS()Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->aa:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-eqz v0, :cond_8

    instance-of v1, v0, Lcom/bytedance/adsdk/ugeno/uA/sP/sP;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;->sP(Landroid/widget/FrameLayout;)V

    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Mts()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->FPG()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->LqL()F

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->Yf()F

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC()I

    move-result v4

    const/4 v5, 0x7

    const/4 v6, 0x0

    if-ne v4, v5, :cond_a

    cmpg-float v4, v1, v6

    if-gtz v4, :cond_9

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v2, v2

    const/4 v5, -0x2

    invoke-direct {v4, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_9
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-direct {v5, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_a
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    cmpg-float v2, v1, v6

    if-lez v2, :cond_c

    cmpg-float v2, v0, v6

    if-gtz v2, :cond_b

    goto :goto_1

    :cond_b
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(D)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->sP(D)V

    goto :goto_2

    :cond_c
    :goto_1
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    int-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(D)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->sP(D)V

    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x89

    const-string v1, "ugen render timeout"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    return-void

    :cond_e
    const-string v0, "ugen render error"

    invoke-interface {p1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void
.end method

.method private sP(Ljava/lang/CharSequence;ZIZ)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p3, "skip"

    invoke-virtual {p1, p3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p3, 0x0

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    goto :goto_0

    :cond_4
    const/16 p3, 0x8

    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private uA()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->rB()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    const-string v1, "tvskip"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    const-string v1, "skip"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    instance-of v1, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sef(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKj()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    :cond_3
    move-object v1, v0

    check-cast v1, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    const-string v2, "local://tt_close_btn"

    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Dq(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP()V

    :cond_4
    return-void
.end method


# virtual methods
.method protected Dq()Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "feedback"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    return-object v0
.end method

.method protected EjP()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/aa;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/Fmk;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->EjP:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->fF()Lcom/bytedance/adsdk/ugeno/core/Zq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Zq;->sP()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->fF()Lcom/bytedance/adsdk/ugeno/core/Zq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Zq;->TKC()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->kF:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/uA;->sP(Lorg/json/JSONObject;)V

    const/4 v0, 0x0

    return v0
.end method

.method public HiB()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected Jcg()Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "video"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    return-object v0
.end method

.method protected Sj()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->TKC()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;Lcom/bytedance/adsdk/ugeno/core/aa$sP;Lcom/bytedance/adsdk/ugeno/core/aa$Sj;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->sP()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->sP()I

    move-result p3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;)V

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->sP()I

    move-result p3

    const/16 v0, 0xa

    if-ne p3, v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC()Lorg/json/JSONObject;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lorg/json/JSONObject;)V

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->EjP()Lcom/bytedance/adsdk/ugeno/core/TEQ;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->EjP()Lcom/bytedance/adsdk/ugeno/core/TEQ;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bytedance/adsdk/ugeno/core/aa$sP;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;)V

    :cond_4
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Landroid/view/MotionEvent;)V
    .locals 11

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    const/4 v2, -0x1

    if-eq p1, v1, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    :goto_0
    move v4, v2

    goto/16 :goto_2

    :cond_0
    sget p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->LD:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sget v4, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->LqL:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr p1, v2

    sput p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->LD:F

    sget p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->fF:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v4, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Yf:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr p1, v2

    sput p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->fF:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sput p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->LqL:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sput p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Yf:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->ley:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc8

    cmp-long p1, v4, v6

    if-lez p1, :cond_1

    sget p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->LD:F

    sget v2, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sU:I

    int-to-float v4, v2

    cmpl-float p1, p1, v4

    if-gtz p1, :cond_2

    sget p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->fF:F

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Fmk:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sU:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-gez p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sef:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sU:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_4

    :cond_3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->RiZ:Z

    :cond_4
    move v2, v1

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Zq:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uvD:F

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Zq:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Fmk:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sU:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gez p1, :cond_6

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uvD:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sef:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sU:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_7

    :cond_6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->RiZ:Z

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TzV:J

    goto/16 :goto_0

    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->dNu:J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Fmk:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sef:F

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->RiZ:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->ley:J

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/uA/TKC;->Sj(Landroid/view/MotionEvent;)V

    move v4, v0

    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->ib:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v2

    float-to-double v5, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result p2

    float-to-double v7, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;-><init>(IDDJ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V
    .locals 0

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/Dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Dq:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uP:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->FPG:Lcom/bytedance/sdk/component/Dq/Dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)V

    :cond_0
    return-void
.end method

.method public Sj(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public TKC()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fF()I

    move-result v0

    return v0
.end method

.method public onvideoComplate()V
    .locals 0

    return-void
.end method

.method protected sP()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->LD()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public setSoundMute(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "mute"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    const-string v1, "local://tt_reward_full_mute"

    invoke-virtual {p1, v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Dq(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p1, v0

    check-cast p1, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    const-string v1, "local://tt_reward_full_unmute"

    invoke-virtual {p1, v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Dq(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP()V

    :cond_2
    return-void
.end method

.method public setTime(Ljava/lang/CharSequence;IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Ljava/lang/CharSequence;ZIZ)V

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP(Ljava/lang/CharSequence;ZIZ)V

    return-void
.end method

.method public setTimeUpdate(I)V
    .locals 0

    return-void
.end method

.method public vS()Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "PlayableComponent"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    return-object v0
.end method
