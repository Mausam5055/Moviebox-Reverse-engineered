.class public Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;
.super Lcom/bytedance/adsdk/ugeno/sP/TKC;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
        "Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;",
        ">;"
    }
.end annotation


# static fields
.field private static final Xqg:I

.field private static final zwV:I


# instance fields
.field private AVc:I

.field private RrR:F

.field private SP:F

.field private Sj:I

.field private dLt:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#FFC642"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->zwV:I

    const-string v0, "#e3e3e4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->Xqg:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;-><init>(Landroid/content/Context;)V

    sget p1, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->zwV:I

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->Sj:I

    sget p1, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->Xqg:I

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->AVc:I

    const/high16 p1, 0x40800000    # 4.0f

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->RrR:F

    const/high16 p1, 0x41a00000    # 20.0f

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->SP:F

    return-void
.end method


# virtual methods
.method public synthetic Sj()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->TKC()Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;

    move-result-object v0

    return-object v0
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "lowlightColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_1
    const-string v1, "highlightColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_2
    const-string v1, "score"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "gap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_5
    const-string v1, "lowLightColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_6
    const-string v1, "highLightColor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->RrR:F

    return-void

    :pswitch_1
    const/high16 p1, 0x41a00000    # 20.0f

    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->SP:F

    :goto_1
    return-void

    :pswitch_2
    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/Jcg/TKC;->Sj(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->dLt:F

    return-void

    :pswitch_3
    sget p1, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->Xqg:I

    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->AVc:I

    return-void

    :pswitch_4
    invoke-static {p2}, Lcom/bytedance/adsdk/ugeno/Jcg/Sj;->Sj(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->Sj:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6befa0d1 -> :sswitch_6
        -0x6b8cd19f -> :sswitch_5
        0x18ed6 -> :sswitch_4
        0x35e001 -> :sswitch_3
        0x6833e92 -> :sswitch_2
        0x1d3e830f -> :sswitch_1
        0x1da15241 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public TKC()Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;
    .locals 2

    new-instance v0, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Sj(Lcom/bytedance/adsdk/ugeno/EjP;)V

    return-object v0
.end method

.method public sP()V
    .locals 8

    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP()V

    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->LD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    move-object v1, v0

    check-cast v1, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->RrR:F

    float-to-double v2, v0

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->Sj:I

    iget v5, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->AVc:I

    iget v6, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->SP:F

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->dLt:F

    float-to-int v7, v0

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Sj(DIIFI)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/sP/TKC;->HiB:Landroid/view/View;

    move-object v1, v0

    check-cast v1, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->RrR:F

    float-to-double v2, v0

    iget v4, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->Sj:I

    iget v5, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->AVc:I

    iget v6, p0, Lcom/bytedance/adsdk/ugeno/uA/HiB/sP;->SP:F

    const/4 v7, 0x5

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/adsdk/ugeno/uA/HiB/Sj;->Sj(DIIFI)V

    return-void
.end method
