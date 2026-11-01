.class public abstract Landroidx/compose/runtime/l2;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic A([III)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/l2;->b0([III)V

    return-void
.end method

.method private static final B([II)I
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    array-length v0, p0

    if-lt p1, v0, :cond_0

    array-length p0, p0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    shr-int/lit8 p0, p0, 0x1d

    invoke-static {p0}, Landroidx/compose/runtime/l2;->E(I)I

    move-result p0

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method private static final C([II)Z
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aget p0, p0, p1

    const/high16 p1, 0xc000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final D([II)Z
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aget p0, p0, p1

    const/high16 p1, 0x4000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final E(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    :goto_0
    :pswitch_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static final F([II)I
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x4

    aget p0, p0, p1

    return p0
.end method

.method private static final G(Ljava/util/ArrayList;II)Landroidx/compose/runtime/c;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/l2;->U(Ljava/util/ArrayList;II)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/c;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static final H([II)I
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    return p0
.end method

.method private static final I([II)I
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x3

    aget p0, p0, p1

    return p0
.end method

.method private static final J([II)Z
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aget p0, p0, p1

    const/high16 p1, 0x10000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final K([II)Z
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aget p0, p0, p1

    const/high16 p1, 0x8000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final L([II)Z
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aget p0, p0, p1

    const/high16 p1, 0x20000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final M([IIIZZZII)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/high16 p3, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-eqz p4, :cond_1

    const/high16 p4, 0x20000000

    goto :goto_1

    :cond_1
    move p4, v0

    :goto_1
    if-eqz p5, :cond_2

    const/high16 p5, 0x10000000

    goto :goto_2

    :cond_2
    move p5, v0

    :goto_2
    mul-int/lit8 p1, p1, 0x5

    aput p2, p0, p1

    add-int/lit8 p2, p1, 0x1

    or-int/2addr p3, p4

    or-int/2addr p3, p5

    aput p3, p0, p2

    add-int/lit8 p2, p1, 0x2

    aput p6, p0, p2

    add-int/lit8 p2, p1, 0x3

    aput v0, p0, p2

    add-int/lit8 p1, p1, 0x4

    aput p7, p0, p1

    return-void
.end method

.method private static final N([II)Z
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    const/4 v0, 0x1

    add-int/2addr p1, v0

    aget p0, p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static final O([II)I
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    aget p0, p0, p1

    return p0
.end method

.method private static final P(Ljava/util/ArrayList;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/l2;->U(Ljava/util/ArrayList;II)I

    move-result p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    :goto_0
    return p0
.end method

.method private static final Q([II)I
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    const p1, 0x3ffffff

    and-int/2addr p0, p1

    return p0
.end method

.method private static final R([II)I
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x4

    aget p0, p0, p1

    return p0
.end method

.method private static final S([II)I
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    shr-int/lit8 p0, p0, 0x1e

    invoke-static {p0}, Landroidx/compose/runtime/l2;->E(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static final T([II)I
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x2

    aget p0, p0, p1

    return p0
.end method

.method private static final U(Ljava/util/ArrayList;II)I
    .locals 4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_3

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/runtime/c;

    invoke-virtual {v3}, Landroidx/compose/runtime/c;->a()I

    move-result v3

    if-gez v3, :cond_0

    add-int/2addr v3, p2

    :cond_0
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->j(II)I

    move-result v3

    if-gez v3, :cond_1

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    return p0
.end method

.method private static final V([II)I
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 v0, p1, 0x4

    aget v0, p0, v0

    add-int/lit8 p1, p1, 0x1

    aget p0, p0, p1

    shr-int/lit8 p0, p0, 0x1c

    invoke-static {p0}, Landroidx/compose/runtime/l2;->E(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static final W([IIZ)V
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x1

    if-eqz p2, :cond_0

    aget p2, p0, p1

    const/high16 v0, 0x4000000

    or-int/2addr p2, v0

    aput p2, p0, p1

    goto :goto_0

    :cond_0
    aget p2, p0, p1

    const v0, -0x4000001

    and-int/2addr p2, v0

    aput p2, p0, p1

    :goto_0
    return-void
.end method

.method private static final X([III)V
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x4

    aput p2, p0, p1

    return-void
.end method

.method private static final Y([III)V
    .locals 1

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/k;->O(Z)V

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x3

    aput p2, p0, p1

    return-void
.end method

.method private static final Z([IIZ)V
    .locals 1

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x1

    if-eqz p2, :cond_0

    aget p2, p0, p1

    const/high16 v0, 0x8000000

    or-int/2addr p2, v0

    aput p2, p0, p1

    goto :goto_0

    :cond_0
    aget p2, p0, p1

    const v0, -0x8000001

    and-int/2addr p2, v0

    aput p2, p0, p1

    :goto_0
    return-void
.end method

.method public static final synthetic a([II)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/l2;->B([II)I

    move-result p0

    return p0
.end method

.method private static final a0([III)V
    .locals 2

    const/4 v0, 0x1

    if-ltz p2, :cond_0

    const v1, 0x3ffffff

    if-ge p2, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Landroidx/compose/runtime/k;->O(Z)V

    mul-int/lit8 p1, p1, 0x5

    add-int/2addr p1, v0

    aget v0, p0, p1

    const/high16 v1, -0x4000000

    and-int/2addr v0, v1

    or-int/2addr p2, v0

    aput p2, p0, p1

    return-void
.end method

.method public static final synthetic b([II)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/l2;->C([II)Z

    move-result p0

    return p0
.end method

.method private static final b0([III)V
    .locals 0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x2

    aput p2, p0, p1

    return-void
.end method

.method public static final synthetic c([II)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/l2;->D([II)Z

    move-result p0

    return p0
.end method

.method public static final synthetic d(I)I
    .locals 0

    invoke-static {p0}, Landroidx/compose/runtime/l2;->E(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic e([II)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/l2;->F([II)I

    move-result p0

    return p0
.end method

.method public static final synthetic f(Ljava/util/ArrayList;II)Landroidx/compose/runtime/c;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/l2;->G(Ljava/util/ArrayList;II)Landroidx/compose/runtime/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g([II)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/l2;->H([II)I

    move-result p0

    return p0
.end method

.method public static final synthetic h([II)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/l2;->I([II)I

    move-result p0

    return p0
.end method

.method public static final synthetic i([II)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/l2;->J([II)Z

    move-result p0

    return p0
.end method

.method public static final synthetic j([II)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/l2;->K([II)Z

    move-result p0

    return p0
.end method

.method public static final synthetic k([II)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/l2;->L([II)Z

    move-result p0

    return p0
.end method

.method public static final synthetic l([IIIZZZII)V
    .locals 0

    invoke-static/range {p0 .. p7}, Landroidx/compose/runtime/l2;->M([IIIZZZII)V

    return-void
.end method

.method public static final synthetic m([II)Z
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/l2;->N([II)Z

    move-result p0

    return p0
.end method

.method public static final synthetic n([II)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/l2;->O([II)I

    move-result p0

    return p0
.end method

.method public static final synthetic o(Ljava/util/ArrayList;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/l2;->P(Ljava/util/ArrayList;II)I

    move-result p0

    return p0
.end method

.method public static final synthetic p([II)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/l2;->Q([II)I

    move-result p0

    return p0
.end method

.method public static final synthetic q([II)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/l2;->R([II)I

    move-result p0

    return p0
.end method

.method public static final synthetic r([II)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/l2;->S([II)I

    move-result p0

    return p0
.end method

.method public static final synthetic s([II)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/l2;->T([II)I

    move-result p0

    return p0
.end method

.method public static final synthetic t(Ljava/util/ArrayList;II)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/l2;->U(Ljava/util/ArrayList;II)I

    move-result p0

    return p0
.end method

.method public static final synthetic u([II)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/runtime/l2;->V([II)I

    move-result p0

    return p0
.end method

.method public static final synthetic v([IIZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/l2;->W([IIZ)V

    return-void
.end method

.method public static final synthetic w([III)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/l2;->X([III)V

    return-void
.end method

.method public static final synthetic x([III)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/l2;->Y([III)V

    return-void
.end method

.method public static final synthetic y([IIZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/l2;->Z([IIZ)V

    return-void
.end method

.method public static final synthetic z([III)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/l2;->a0([III)V

    return-void
.end method
