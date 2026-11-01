.class public final Lkotlinx/serialization/json/internal/n0;
.super Lkotlinx/serialization/json/internal/a;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/a;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/n0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic C()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public G(I)I
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public I()I
    .locals 3

    iget v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    return v0
.end method

.method public L()Z
    .locals 3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->I()I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    iget v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    return v1

    :cond_1
    :goto_0
    return v2
.end method

.method protected P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/n0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 4

    iget v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-eq v1, v3, :cond_2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    const/16 v3, 0xd

    if-eq v1, v3, :cond_2

    const/16 v3, 0x9

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/a;->D(C)Z

    move-result v0

    return v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    return v2
.end method

.method public k()Ljava/lang/String;
    .locals 7

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/n0;->o(C)V

    iget v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x22

    const/4 v4, 0x0

    move v3, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->n0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/serialization/json/internal/a;->r(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/a;->a:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/a;->z(B)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public l(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    const-string v0, "keyToMatch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    :try_start_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->m()B

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    iput v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    return-object v3

    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->k()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->t()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->m()B

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    iput v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    return-object v3

    :cond_2
    if-eqz p2, :cond_3

    :try_start_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->q()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/a;->t()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    return-object p1

    :cond_4
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    return-object v3

    :goto_2
    iput v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    throw p1
.end method

.method public m()B
    .locals 3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lkotlinx/serialization/json/internal/b;->a(C)B

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    return v1

    :cond_1
    const/16 v0, 0xa

    return v0
.end method

.method public o(C)V
    .locals 3

    iget v0, p0, Lkotlinx/serialization/json/internal/a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->N(C)V

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/n0;->P()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    iget v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget v1, p0, Lkotlinx/serialization/json/internal/a;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne v1, p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->N(C)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/a;->N(C)V

    return-void
.end method
