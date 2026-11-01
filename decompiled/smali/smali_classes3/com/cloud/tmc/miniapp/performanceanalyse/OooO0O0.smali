.class public final Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;
.super Ljava/lang/Object;


# instance fields
.field public OooO:I

.field public final OooO00o:Ljava/lang/String;

.field public OooO0O0:Ljava/lang/String;

.field public final OooO0OO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final OooO0Oo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0o:I

.field public final OooO0o0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;",
            ">;"
        }
    .end annotation
.end field

.field public OooO0oO:I

.field public OooO0oo:I

.field public OooOO0:Z

.field public OooOO0O:Ljava/lang/String;

.field public OooOO0o:Ljava/lang/String;

.field public OooOOO:Ljava/lang/String;

.field public OooOOO0:Ljava/lang/String;

.field public OooOOOO:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IIIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;",
            ">;IIIIZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-object/from16 v7, p13

    move-object/from16 v8, p14

    const-string v9, "appId"

    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "chainsStartMap"

    invoke-static {p3, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "chainsEndMap"

    invoke-static {p4, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "pages"

    invoke-static {p5, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "h5ProgressCollectList"

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "isDomContentLoaded"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "navigationType"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "homePageRandomIdByGAId"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    iput-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    iput-object v3, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo:Ljava/util/Map;

    iput-object v4, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    move/from16 v1, p6

    iput v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o:I

    move/from16 v1, p7

    iput v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO:I

    move/from16 v1, p8

    iput v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo:I

    move/from16 v1, p9

    iput v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO:I

    move/from16 v1, p10

    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0:Z

    iput-object v5, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O:Ljava/lang/String;

    iput-object v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o:Ljava/lang/String;

    iput-object v7, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0:Ljava/lang/String;

    iput-object v8, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO:Ljava/lang/String;

    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOOO:Z

    return-void
.end method


# virtual methods
.method public final OooO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOOO:Z

    return v0
.end method

.method public final OooO00o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo:Ljava/util/Map;

    return-object v0
.end method

.method public final OooO00o(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0:Z

    return-void
.end method

.method public final OooO0O0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    return-object v0
.end method

.method public final OooO0OO()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO:I

    return v0
.end method

.method public final OooO0Oo()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o:I

    return v0
.end method

.method public final OooO0o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0o0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO:Ljava/lang/String;

    return-object v0
.end method

.method public final OooO0oo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0:Ljava/lang/String;

    return-object v0
.end method

.method public final OooOO0()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloud/tmc/miniapp/performanceanalyse/OooOO0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    return-object v0
.end method

.method public final OooOO0O()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO:I

    return v0
.end method

.method public final OooOO0o()I
    .locals 1

    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo:I

    return v0
.end method

.method public final OooOOO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0:Z

    return v0
.end method

.method public final OooOOO0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo:Ljava/util/Map;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o:I

    iget v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO:I

    iget v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo:I

    iget v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO:I

    iget v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0:Z

    iget-boolean v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO:Ljava/lang/String;

    iget-object v3, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOOO:Z

    iget-boolean p1, p1, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOOO:Z

    if-eq v1, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    :cond_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOOO:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO00o:Ljava/lang/String;

    iget-object v2, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0O0:Ljava/lang/String;

    iget-object v3, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0OO:Ljava/util/Map;

    iget-object v4, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0Oo:Ljava/util/Map;

    iget-object v5, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o0:Ljava/util/Map;

    iget v6, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0o:I

    iget v7, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oO:I

    iget v8, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO0oo:I

    iget v9, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooO:I

    iget-boolean v10, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0:Z

    iget-object v11, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0O:Ljava/lang/String;

    iget-object v12, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOO0o:Ljava/lang/String;

    iget-object v13, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO0:Ljava/lang/String;

    iget-object v14, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOO:Ljava/lang/String;

    iget-boolean v15, v0, Lcom/cloud/tmc/miniapp/performanceanalyse/OooO0O0;->OooOOOO:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v15

    const-string v15, "AppChainData(appId="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", homePagePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chainsStartMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", chainsEndMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downloadFrameworkMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downloadAppMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", zipFrameworkMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", zipAppMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", h5ProgressCollectList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDomContentLoaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", navigationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", homePageRandomIdByGAId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offScreenRender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
