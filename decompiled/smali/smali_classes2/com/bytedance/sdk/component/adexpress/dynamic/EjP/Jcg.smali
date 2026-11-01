.class public Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;
.super Ljava/lang/Object;


# instance fields
.field private EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

.field private HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

.field public Sj:I

.field public TKC:Lorg/json/JSONObject;

.field public sP:Ljava/lang/String;

.field private vS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->Sj()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Sj:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->TKC()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sP:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Uc()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->TKC:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->EjP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->vS:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->TKC()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->Jcg()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    :cond_1
    return-void
.end method

.method private HcZ()Z
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sP:Ljava/lang/String;

    const-string v2, "adx:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->sP()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method public static Sj(Ljava/lang/String;)I
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "transparent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_2

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_3

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3
    const-string v0, "rgba"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    const-string v4, ")"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    :try_start_0
    array-length v0, p0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_5

    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    aget-object v1, p0, v3

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x3

    aget-object p0, p0, v4

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p0, v2

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    float-to-int v0, v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p0, v0

    float-to-int v0, v3

    or-int/2addr p0, v0

    return p0

    :catch_0
    return v2

    :cond_5
    return v1
.end method

.method private mZN()Z
    .locals 5

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "logoad"

    const-string v3, "logounion"

    const-string v4, "logo-union"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->sP()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public static sP(Ljava/lang/String;)[F
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    const-string v4, "("

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const-string v6, ")"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    array-length v4, p0

    if-ne v4, v3, :cond_0

    aget-object v4, p0, v2

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aget-object v6, p0, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aget-object v7, p0, v1

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    new-array v3, v3, [F

    aput v4, v3, v2

    aput v6, v3, v5

    aput v7, v3, v1

    aput p0, v3, v0

    return-object v3

    :cond_0
    new-array p0, v3, [F

    fill-array-data p0, :array_0

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public Bml()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->WMZ()I

    move-result v0

    return v0
.end method

.method public Chv()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->JcM()I

    move-result v0

    return v0
.end method

.method public Dq()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->dx()Ljava/lang/String;

    move-result-object v0

    const-string v1, "left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x11

    return v0

    :cond_0
    const-string v1, "center"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    return v0

    :cond_1
    const-string v1, "right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0
.end method

.method public EZ()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->fF()Z

    move-result v0

    return v0
.end method

.method public Ei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Wjd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public EjP()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->uvD()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public FPG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->TEQ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Fm()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->aZ()I

    move-result v0

    return v0
.end method

.method public Fmk()D
    .locals 4

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Sj:I

    const/16 v1, 0xb

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    if-ne v0, v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sP:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    double-to-int v0, v0

    int-to-double v0, v0

    :cond_0
    return-wide v0

    :catch_0
    :cond_1
    return-wide v2
.end method

.method public HS()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->nP()I

    move-result v0

    return v0
.end method

.method public HiB()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->TzV()F

    move-result v0

    return v0
.end method

.method public HpB()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->AVc()Z

    move-result v0

    return v0
.end method

.method public IOh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->tX()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ir()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->tY()I

    move-result v0

    return v0
.end method

.method public JcM()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->HiB()I

    move-result v0

    return v0
.end method

.method public Jcg()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->zR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Sj(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LD()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->TKC()I

    move-result v0

    return v0
.end method

.method public LqL()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->ib()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Sj(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public Mts()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->uA()I

    move-result v0

    return v0
.end method

.method public MuB()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->dLt()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public RiZ()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->hzV()I

    move-result v0

    return v0
.end method

.method public Sj()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->sef()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public Sj(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Sj(F)V

    return-void
.end method

.method public Sj(I)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->Jcg()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public TEQ()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Sj:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    return-object v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sP:Ljava/lang/String;

    return-object v0
.end method

.method public TFd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->uP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TKC()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Zq()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public TzV()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Ph()I

    move-result v0

    return v0
.end method

.method public UHs()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->TO()I

    move-result v0

    return v0
.end method

.method public Uc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->tPD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public WMZ()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->EjP()I

    move-result v0

    return v0
.end method

.method public Wjd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Fm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Yf()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Dq()D

    move-result-wide v0

    return-wide v0
.end method

.method public Ym()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Sj:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sP:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public Zq()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Ym()F

    move-result v0

    return v0
.end method

.method public aNB()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Mts()D

    move-result-wide v0

    return-wide v0
.end method

.method public aZ()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->liH()I

    move-result v0

    return v0
.end method

.method public aa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->vS:Ljava/lang/String;

    return-object v0
.end method

.method public cX()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->FPG()D

    move-result-wide v0

    return-wide v0
.end method

.method public dNu()F
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->aa()F

    move-result v0

    return v0
.end method

.method public db()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->gq()I

    move-result v0

    return v0
.end method

.method public dwU()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->SP()Z

    move-result v0

    return v0
.end method

.method public dx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->kF()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fF()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->sP()I

    move-result v0

    return v0
.end method

.method public gR()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->QZ()Z

    move-result v0

    return v0
.end method

.method public gY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->LD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ib()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->xhi()I

    move-result v0

    return v0
.end method

.method public jb()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Ir()I

    move-result v0

    return v0
.end method

.method public kF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->xD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public kb()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->zwV()I

    move-result v0

    return v0
.end method

.method public ley()I
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->xD()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->sP()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip-with-time-skip-btn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->sP()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->sP()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip-with-countdowns-skip-btn"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->sP()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip-with-time-countdown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->sP()Ljava/lang/String;

    move-result-object v1

    const-string v3, "skip-with-time"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Sj:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Fm()Ljava/lang/String;

    move-result-object v1

    const-string v3, "click"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->mZN()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HcZ()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->mZN()Z

    move-result v1

    const/4 v3, 0x7

    if-eqz v1, :cond_4

    return v3

    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->sP()Ljava/lang/String;

    move-result-object v1

    const-string v4, "feedback-dislike"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    return v0

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->Sj()I

    move-result v1

    const-string v4, "normal"

    if-ne v1, v3, :cond_7

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const-string v1, "creative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Fm()Ljava/lang/String;

    move-result-object v0

    const-string v3, "slide"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    return v2

    :cond_b
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->sP()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->HiB:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->vb()Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0xb

    return v0

    :cond_c
    const/4 v0, 0x4

    return v0

    :cond_d
    :goto_1
    return v2

    :cond_e
    :goto_2
    const/4 v0, 0x6

    return v0
.end method

.method public ndK()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Grp()I

    move-result v0

    return v0
.end method

.method public pfr()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Fmk()Z

    move-result v0

    return v0
.end method

.method public qRN()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->RrR()I

    move-result v0

    return v0
.end method

.method public sP()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->dNu()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public sU()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->GMp()Z

    move-result v0

    return v0
.end method

.method public sdp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Yf()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sef()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->RiZ()D

    move-result-wide v0

    return-wide v0
.end method

.method public tz()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->SP()Z

    move-result v0

    return v0
.end method

.method public uA()I
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Dq()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/16 v0, 0x11

    return v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const v0, 0x800005

    return v0

    :cond_1
    const v0, 0x800003

    return v0
.end method

.method public uP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->DPc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uvD()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->wE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Sj(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public vS()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->Sj:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->sP:Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->TKC:Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/adexpress/EjP/Jcg;->TKC(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public wE()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->xzt()J

    move-result-wide v0

    return-wide v0
.end method

.method public xD()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->gR()Z

    move-result v0

    return v0
.end method

.method public xhi()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->Jcg()I

    move-result v0

    return v0
.end method

.method public xu()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->eI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zR()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Jcg;->EjP:Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->HpB()Z

    move-result v0

    return v0
.end method
