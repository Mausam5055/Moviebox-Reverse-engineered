.class public Lcom/bytedance/adsdk/sP/TEQ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/sP/TEQ$Sj;
    }
.end annotation


# instance fields
.field private final Dq:Ljava/lang/String;

.field private final EjP:Ljava/lang/String;

.field private final HiB:Ljava/lang/String;

.field private final Jcg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TEQ$Sj;",
            ">;"
        }
    .end annotation
.end field

.field private final Sj:I

.field private final TEQ:Lorg/json/JSONArray;

.field private final TKC:Ljava/lang/String;

.field private Ym:Landroid/graphics/Bitmap;

.field private final sP:I

.field private final uA:[[I

.field private final vS:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;[[ILorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TEQ$Sj;",
            ">;",
            "Ljava/lang/String;",
            "[[I",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bytedance/adsdk/sP/TEQ;->Sj:I

    iput p2, p0, Lcom/bytedance/adsdk/sP/TEQ;->sP:I

    iput-object p3, p0, Lcom/bytedance/adsdk/sP/TEQ;->TKC:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/adsdk/sP/TEQ;->EjP:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/adsdk/sP/TEQ;->HiB:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/adsdk/sP/TEQ;->vS:Ljava/lang/String;

    iput-object p7, p0, Lcom/bytedance/adsdk/sP/TEQ;->Jcg:Ljava/util/List;

    iput-object p8, p0, Lcom/bytedance/adsdk/sP/TEQ;->Dq:Ljava/lang/String;

    iput-object p9, p0, Lcom/bytedance/adsdk/sP/TEQ;->uA:[[I

    iput-object p10, p0, Lcom/bytedance/adsdk/sP/TEQ;->TEQ:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public Dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->TKC:Ljava/lang/String;

    return-object v0
.end method

.method public EjP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->vS:Ljava/lang/String;

    return-object v0
.end method

.method public HiB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->Dq:Ljava/lang/String;

    return-object v0
.end method

.method public Jcg()Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->TEQ:Lorg/json/JSONArray;

    return-object v0
.end method

.method public Sj()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->Sj:I

    return v0
.end method

.method public Sj(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/adsdk/sP/TEQ;->Ym:Landroid/graphics/Bitmap;

    return-void
.end method

.method public TEQ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->HiB:Ljava/lang/String;

    return-object v0
.end method

.method public TKC()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/sP/TEQ$Sj;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->Jcg:Ljava/util/List;

    return-object v0
.end method

.method public Ym()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->Ym:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public sP()I
    .locals 1

    iget v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->sP:I

    return v0
.end method

.method public uA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->EjP:Ljava/lang/String;

    return-object v0
.end method

.method public vS()[[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/adsdk/sP/TEQ;->uA:[[I

    return-object v0
.end method
