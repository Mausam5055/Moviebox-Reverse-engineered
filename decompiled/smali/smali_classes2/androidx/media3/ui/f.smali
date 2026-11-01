.class public Landroidx/media3/ui/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/ui/z0;


# instance fields
.field private final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Resources;

    iput-object p1, p0, Landroidx/media3/ui/f;->a:Landroid/content/res/Resources;

    return-void
.end method

.method private b(Landroidx/media3/common/r;)Ljava/lang/String;
    .locals 1

    iget p1, p1, Landroidx/media3/common/r;->E:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Landroidx/media3/ui/f;->a:Landroid/content/res/Resources;

    sget v0, Landroidx/media3/ui/R$string;->exo_track_surround:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Landroidx/media3/ui/f;->a:Landroid/content/res/Resources;

    sget v0, Landroidx/media3/ui/R$string;->exo_track_surround_7_point_1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object p1, p0, Landroidx/media3/ui/f;->a:Landroid/content/res/Resources;

    sget v0, Landroidx/media3/ui/R$string;->exo_track_surround_5_point_1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Landroidx/media3/ui/f;->a:Landroid/content/res/Resources;

    sget v0, Landroidx/media3/ui/R$string;->exo_track_stereo:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    iget-object p1, p0, Landroidx/media3/ui/f;->a:Landroid/content/res/Resources;

    sget v0, Landroidx/media3/ui/R$string;->exo_track_mono:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private c(Landroidx/media3/common/r;)Ljava/lang/String;
    .locals 4

    iget p1, p1, Landroidx/media3/common/r;->j:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/f;->a:Landroid/content/res/Resources;

    sget v1, Landroidx/media3/ui/R$string;->exo_track_bitrate:I

    int-to-float p1, p1

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private d(Landroidx/media3/common/r;)Ljava/lang/String;
    .locals 1

    iget-object v0, p1, Landroidx/media3/common/r;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/media3/common/r;->b:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method private e(Landroidx/media3/common/r;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Landroidx/media3/ui/f;->f(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Landroidx/media3/ui/f;->h(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/ui/f;->j([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroidx/media3/ui/f;->d(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private f(Landroidx/media3/common/r;)Ljava/lang/String;
    .locals 4

    iget-object p1, p1, Landroidx/media3/common/r;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    const-string v0, "und"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-static {}, Landroidx/media3/common/util/a1;->Y()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private g(Landroidx/media3/common/r;)Ljava/lang/String;
    .locals 5

    iget v0, p1, Landroidx/media3/common/r;->v:I

    iget p1, p1, Landroidx/media3/common/r;->w:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/f;->a:Landroid/content/res/Resources;

    sget v2, Landroidx/media3/ui/R$string;->exo_track_resolution:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object p1, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method private h(Landroidx/media3/common/r;)Ljava/lang/String;
    .locals 3

    iget v0, p1, Landroidx/media3/common/r;->f:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/ui/f;->a:Landroid/content/res/Resources;

    sget v1, Landroidx/media3/ui/R$string;->exo_track_role_alternate:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget v1, p1, Landroidx/media3/common/r;->f:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/media3/ui/f;->a:Landroid/content/res/Resources;

    sget v2, Landroidx/media3/ui/R$string;->exo_track_role_supplementary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/ui/f;->j([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget v1, p1, Landroidx/media3/common/r;->f:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/ui/f;->a:Landroid/content/res/Resources;

    sget v2, Landroidx/media3/ui/R$string;->exo_track_role_commentary:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/media3/ui/f;->j([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget p1, p1, Landroidx/media3/common/r;->f:I

    and-int/lit16 p1, p1, 0x440

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/media3/ui/f;->a:Landroid/content/res/Resources;

    sget v1, Landroidx/media3/ui/R$string;->exo_track_role_closed_captions:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/ui/f;->j([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method private static i(Landroidx/media3/common/r;)I
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/r;->o:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/y;->k(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/y;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/y;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    return v3

    :cond_2
    iget v0, p0, Landroidx/media3/common/r;->v:I

    if-ne v0, v1, :cond_6

    iget v0, p0, Landroidx/media3/common/r;->w:I

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    iget v0, p0, Landroidx/media3/common/r;->E:I

    if-ne v0, v1, :cond_5

    iget p0, p0, Landroidx/media3/common/r;->F:I

    if-eq p0, v1, :cond_4

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v3

    :cond_6
    :goto_1
    return v2
.end method

.method private varargs j([Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x1

    array-length v1, p1

    const-string v2, ""

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v2, v5

    goto :goto_1

    :cond_0
    iget-object v6, p0, Landroidx/media3/ui/f;->a:Landroid/content/res/Resources;

    sget v7, Landroidx/media3/ui/R$string;->exo_item_list:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v3

    aput-object v5, v8, v0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_1
    add-int/2addr v4, v0

    goto :goto_0

    :cond_2
    return-object v2
.end method


# virtual methods
.method public a(Landroidx/media3/common/r;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    invoke-static {p1}, Landroidx/media3/ui/f;->i(Landroidx/media3/common/r;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Landroidx/media3/ui/f;->h(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Landroidx/media3/ui/f;->g(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Landroidx/media3/ui/f;->c(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/media3/ui/f;->j([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    invoke-direct {p0, p1}, Landroidx/media3/ui/f;->e(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Landroidx/media3/ui/f;->b(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1}, Landroidx/media3/ui/f;->c(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/media3/ui/f;->j([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Landroidx/media3/ui/f;->e(Landroidx/media3/common/r;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    iget-object p1, p1, Landroidx/media3/common/r;->d:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroidx/media3/ui/f;->a:Landroid/content/res/Resources;

    sget v2, Landroidx/media3/ui/R$string;->exo_track_unknown_name:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Landroidx/media3/ui/f;->a:Landroid/content/res/Resources;

    sget v0, Landroidx/media3/ui/R$string;->exo_track_unknown:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method
