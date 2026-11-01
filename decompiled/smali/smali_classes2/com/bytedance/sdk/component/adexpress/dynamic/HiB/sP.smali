.class public Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;,
        Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;,
        Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;
    }
.end annotation


# instance fields
.field private Dq:Ljava/lang/String;

.field private EjP:D

.field private HiB:D

.field private Jcg:D

.field public Sj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;",
            ">;"
        }
    .end annotation
.end field

.field public TKC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;",
            ">;"
        }
    .end annotation
.end field

.field public sP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;",
            ">;"
        }
    .end annotation
.end field

.field private uA:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

.field private vS:I


# direct methods
.method public constructor <init>(DIDLjava/lang/String;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->TKC:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->EjP:D

    iput-wide p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->HiB:D

    iput p3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->vS:I

    iput-wide p4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Jcg:D

    iput-object p6, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Dq:Ljava/lang/String;

    iput-object p7, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    return-void
.end method

.method private EjP(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TKC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private EjP(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->HiB(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->dNu()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->TKC(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private HiB(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TKC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->TKC:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->TKC:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->vS(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->TKC:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private HiB(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TKC()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;ZZILcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;
    .locals 17

    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;->Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->sP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-wide v10, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->HiB:D

    iget v12, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->vS:I

    iget-wide v13, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Jcg:D

    iget-object v15, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Dq:Ljava/lang/String;

    iget-object v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->uA:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    move-object/from16 v3, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v16, v1

    invoke-static/range {v3 .. v16}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Ym;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;DIDLjava/lang/String;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v1

    return-object v1
.end method

.method private Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->HiB(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private Sj(Ljava/util/List;FF)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;",
            ">;>;FF)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v3, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj(Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;

    invoke-direct {v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;-><init>()V

    xor-int/lit8 v7, v2, 0x1

    invoke-direct {p0, v5, v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj(Ljava/util/List;Z)Z

    move-result v7

    invoke-direct {p0, v5, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP(Ljava/util/List;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v5

    if-eqz v7, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    iget v5, v5, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    :goto_2
    iput v5, v6, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->Sj:F

    xor-int/lit8 v5, v7, 0x1

    iput-boolean v5, v6, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->sP:Z

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {p3, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/TEQ;->Sj(FLjava/util/List;)Ljava/util/List;

    move-result-object p3

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;

    iget v2, v2, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->Sj:F

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;

    iget v3, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->Sj:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->TKC(Ljava/util/List;)V

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;

    iget v3, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->Sj:F

    invoke-direct {p0, v2, p2, v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP(Ljava/util/List;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method private Sj(Ljava/util/List;FLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;",
            ">;F",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;

    iget-boolean v3, v2, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->sP:Z

    if-eqz v3, :cond_0

    iget v2, v2, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->Sj:F

    add-float/2addr v1, v2

    goto :goto_0

    :cond_1
    cmpl-float v0, v1, p2

    if-lez v0, :cond_5

    const/4 v0, 0x0

    move v2, v0

    move v3, v2

    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;

    iget-boolean v4, v4, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->sP:Z

    if-eqz v4, :cond_2

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->zR()Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-lez v3, :cond_5

    sub-float/2addr v1, p2

    int-to-float p2, v3

    div-float/2addr v1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, p2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    double-to-float p2, v1

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;

    iget-boolean v2, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->sP:Z

    if-eqz v2, :cond_4

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->zR()Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->Sj:F

    sub-float/2addr v2, p2

    iput v2, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->Sj:F

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method private Sj(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;",
            ">;",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->EjP(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private Sj(Ljava/util/List;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;",
            ">;Z)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->ley()Ljava/lang/String;

    move-result-object v4

    const-string v5, "flex"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_0

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->LqL()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->ley()Ljava/lang/String;

    move-result-object v3

    const-string v6, "scale"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->Sj:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->sP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v2

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->TKC(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)Z

    move-result p2

    if-eqz p2, :cond_4

    return v2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method private TKC(Ljava/util/List;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;",
            ">;FF)",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->EjP(Ljava/util/List;)Ljava/lang/String;

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->EZ()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v4, :cond_1

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->EZ()I

    move-result v6

    if-ne v6, v7, :cond_2

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->EZ()I

    move-result v6

    if-eq v6, v4, :cond_0

    invoke-virtual {v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->EZ()I

    move-result v4

    if-eq v4, v7, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-virtual {p0, v1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->TKC(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    goto :goto_1

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_5

    return-object v0

    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-virtual {p0, v3, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->TKC(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v3

    iget v3, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v5, v3

    :goto_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    if-ge v5, v6, :cond_c

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->LqL()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->Dq()F

    move-result v9

    const-string v10, "flex"

    invoke-static {v8, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, "auto"

    invoke-static {v8, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->dNu()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP(Ljava/util/List;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v10, v4

    goto :goto_4

    :cond_8
    move v10, v3

    :cond_9
    :goto_4
    new-instance v6, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;

    invoke-direct {v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;-><init>()V

    if-eqz v10, :cond_a

    goto :goto_5

    :cond_a
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v9

    :goto_5
    iput v9, v6, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->Sj:F

    xor-int/lit8 v8, v10, 0x1

    iput-boolean v8, v6, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->sP:Z

    if-eqz v10, :cond_b

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    :cond_b
    iput v7, v6, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->TKC:F

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    invoke-direct {p0, v1, p2, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj(Ljava/util/List;FLjava/util/List;)V

    invoke-static {p2, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/TEQ;->Sj(FLjava/util/List;)Ljava/util/List;

    move-result-object p2

    move v1, v3

    move v5, v7

    :goto_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_e

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;

    iget v6, v6, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->Sj:F

    add-float/2addr v5, v6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;

    iget v8, v8, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->Sj:F

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_d

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-direct {p0, v6}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->EjP(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)V

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v3

    move v6, v1

    :cond_f
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    add-int/2addr v1, v4

    invoke-direct {p0, v8}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)Z

    move-result v8

    if-nez v8, :cond_10

    move v6, v3

    goto :goto_8

    :cond_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ne v1, v8, :cond_f

    move v6, v4

    goto :goto_7

    :cond_11
    :goto_8
    if-eqz v6, :cond_12

    move v7, p3

    :cond_12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    :goto_9
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_14

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;

    iget v8, v8, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->Sj:F

    invoke-virtual {p0, v4, v8, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->TKC(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v8

    invoke-direct {p0, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)Z

    move-result v4

    if-nez v4, :cond_13

    iget v4, v8, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v7, v4

    :cond_13
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_14
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    iget v1, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_15
    if-nez v6, :cond_17

    :goto_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_17

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_16

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->EjP(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)V

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;

    iget v1, v1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$Sj;->Sj:F

    invoke-virtual {p0, p1, v1, v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->TKC(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_17
    iput v5, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    iput v7, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    return-object v0
.end method

.method private TKC(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->EjP(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->EjP(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private TKC(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TzV()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->ley()Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->dNu()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_4
    return v2

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj(Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_7
    :goto_0
    return v1
.end method

.method private sP(Ljava/util/List;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;",
            ">;FF)",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj(Ljava/util/List;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->TKC(Ljava/util/List;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;)V

    :cond_1
    return-object v0
.end method

.method private sP(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->ley()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flex"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->TKC(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)Z

    move-result p1

    return p1
.end method

.method private sP(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->LqL()Ljava/lang/String;

    move-result-object v1

    const-string v3, "flex"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->LqL()Ljava/lang/String;

    move-result-object v4

    const-string v5, "auto"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->dNu()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v0

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    add-int/2addr v4, v2

    invoke-direct {p0, v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_3

    move v1, v2

    goto :goto_1

    :cond_5
    return v1
.end method

.method private vS(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;
    .locals 12

    new-instance p3, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    invoke-direct {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->TKC()Ljava/lang/String;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->MuB()Z

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->TzV()F

    move-result v0

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->sdp()I

    move-result v1

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->dwU()D

    move-result-wide v2

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->IOh()I

    move-result v4

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->HpB()Z

    move-result v8

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->pfr()Z

    move-result v9

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->xhi()I

    move-result v10

    new-instance v7, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;

    invoke-direct {v7}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;-><init>()V

    iput v0, v7, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;->Sj:F

    iput v1, v7, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;->sP:I

    iput v4, v7, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;->TKC:I

    iput-wide v2, v7, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;->EjP:D

    iput p2, v7, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;->HiB:F

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->TKC()Ljava/lang/String;

    move-result-object v6

    move-object v5, p0

    move-object v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$sP;ZZILcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public EjP(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    new-instance v3, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    invoke-direct {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;-><init>()V

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-lez v5, :cond_12

    cmpg-float v5, v1, v4

    if-gtz v5, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TzV()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual/range {p0 .. p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->Dq()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->uA()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->Zq()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->uvD()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v9

    invoke-virtual {v9}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->LqL()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->ley()Ljava/lang/String;

    move-result-object v9

    const-string v11, "flex"

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    const-string v13, "auto"

    if-nez v12, :cond_3

    invoke-static {v10, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v1

    :goto_1
    sub-float/2addr v5, v7

    const-string v12, "scale"

    invoke-static {v9, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    div-float v12, v5, v6

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v8

    cmpl-float v14, v12, v2

    if-lez v14, :cond_7

    sub-float v5, v2, v8

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    goto :goto_2

    :cond_4
    invoke-static {v9, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-static {v9, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_2

    :cond_5
    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v12

    goto :goto_3

    :cond_6
    :goto_2
    move v12, v2

    :cond_7
    :goto_3
    sub-float/2addr v12, v8

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->dNu()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v4

    move/from16 v16, v15

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v14

    move-object/from16 v14, v17

    check-cast v14, Ljava/util/List;

    move-object/from16 v17, v3

    invoke-direct {v0, v14, v5, v12}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP(Ljava/util/List;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v3

    invoke-direct {v0, v14}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP(Ljava/util/List;)Z

    move-result v14

    if-eqz v14, :cond_8

    const/high16 v14, 0x3f800000    # 1.0f

    add-float/2addr v4, v14

    goto :goto_5

    :cond_8
    iget v14, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    move v15, v14

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v14

    invoke-virtual {v14}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->sP()Ljava/lang/String;

    move-result-object v14

    move/from16 v19, v4

    const-string v4, "carousel"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->uA()F

    move-result v4

    iget v3, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v16

    :goto_6
    move-object/from16 v3, v17

    move-object/from16 v14, v18

    move/from16 v4, v19

    goto :goto_4

    :cond_9
    iget v3, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    add-float v16, v16, v3

    goto :goto_6

    :cond_a
    move-object/from16 v17, v3

    invoke-static {v10, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-nez v3, :cond_b

    move v5, v1

    goto :goto_8

    :cond_b
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->TKC(Ljava/util/List;)V

    invoke-direct {v0, v4, v15, v12}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP(Ljava/util/List;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    goto :goto_7

    :cond_c
    move v5, v15

    :cond_d
    :goto_8
    invoke-static {v9, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    cmpg-float v3, v16, v2

    if-gtz v3, :cond_e

    move/from16 v12, v16

    goto :goto_9

    :cond_e
    invoke-direct {v0, v6, v5, v12}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj(Ljava/util/List;FF)V

    goto :goto_9

    :cond_f
    const-string v3, "fixed"

    invoke-static {v9, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-static {v9, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    cmpg-float v3, v12, v16

    if-gez v3, :cond_11

    invoke-direct {v0, v6, v5, v12}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj(Ljava/util/List;FF)V

    :cond_11
    :goto_9
    add-float/2addr v5, v7

    add-float/2addr v12, v8

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move-object/from16 v3, v17

    iput v1, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    invoke-static {v12, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    return-object v3

    :cond_12
    :goto_a
    iput v4, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    iput v4, v3, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    return-object v3
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;
    .locals 1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->HiB(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    return-object p1
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;
    .locals 12

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->TKC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->kb()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    invoke-direct {p1, v1, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;-><init>(FF)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->sP()Ljava/lang/String;

    move-result-object v0

    const-string v2, "creative-playable-bait"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    invoke-direct {p1, v1, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;-><init>(FF)V

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->Dq()F

    move-result v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->uA()F

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->LqL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;->ley()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->Fmk()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->sef()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->Zq()F

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->uvD()F

    move-result v7

    const-string v8, "fixed"

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    const-string v10, "flex"

    const-string v11, "auto"

    if-eqz v9, :cond_2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sub-float v0, p2, v6

    sub-float v1, p3, v7

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object p1

    iget p1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    :goto_0
    add-float v1, p1, v7

    goto :goto_1

    :cond_2
    invoke-static {v3, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    sub-float/2addr p2, v6

    sub-float v0, p3, v7

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object p1

    iget p2, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    add-float/2addr p2, v6

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget p1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    goto :goto_0

    :cond_3
    invoke-static {v3, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    sub-float v0, p2, v6

    sub-float v1, p3, v7

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object p1

    iget p1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    goto :goto_0

    :cond_4
    move p2, v0

    :cond_5
    :goto_1
    const-string p1, "scale"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    sub-float p1, p2, v4

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v5

    cmpl-float v0, p1, p3

    if-lez v0, :cond_6

    sub-float p1, p3, v5

    mul-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    add-float p2, p1, v4

    goto :goto_2

    :cond_6
    move p3, p1

    goto :goto_2

    :cond_7
    invoke-static {v2, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    add-float/2addr v1, v5

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    goto :goto_2

    :cond_8
    invoke-static {v2, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_2

    :cond_9
    move p3, v1

    :goto_2
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;-><init>()V

    iput p2, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    iput p3, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    return-object p1
.end method

.method public Sj(Ljava/util/List;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;",
            ">;)",
            "Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->EjP(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    return-object p1
.end method

.method public Sj()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->TKC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->sP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public TKC(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->EjP(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->Sj(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;)V

    :cond_2
    return-object v0
.end method

.method public sP(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;->TEQ()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/HiB;->HiB()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/vS;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP;->HiB(Lcom/bytedance/sdk/component/adexpress/dynamic/EjP/Dq;FF)Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;

    move-result-object p1

    iget v1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    iget p1, p1, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->Sj:F

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/sP$TKC;->sP:F

    return-object v0
.end method
