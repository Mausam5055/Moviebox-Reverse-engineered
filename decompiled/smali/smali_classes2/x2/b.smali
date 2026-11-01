.class public abstract Lx2/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/common/x$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lx2/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lx2/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/common/v$b;)V
    .locals 3

    iget-object v0, p0, Lx2/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "ARTIST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "ALBUMARTIST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "DISCNUMBER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v2, "DESCRIPTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v2, "TITLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "GENRE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v2, "ALBUM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v2, "TRACKNUMBER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string v2, "TOTALDISCS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v2, "TOTALTRACKS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lx2/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/media3/common/v$b;->Q(Ljava/lang/CharSequence;)Landroidx/media3/common/v$b;

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lx2/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/media3/common/v$b;->O(Ljava/lang/CharSequence;)Landroidx/media3/common/v$b;

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lx2/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->p(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Landroidx/media3/common/v$b;->X(Ljava/lang/Integer;)Landroidx/media3/common/v$b;

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lx2/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/media3/common/v$b;->W(Ljava/lang/CharSequence;)Landroidx/media3/common/v$b;

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lx2/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/media3/common/v$b;->p0(Ljava/lang/CharSequence;)Landroidx/media3/common/v$b;

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lx2/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/media3/common/v$b;->c0(Ljava/lang/CharSequence;)Landroidx/media3/common/v$b;

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lx2/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/media3/common/v$b;->P(Ljava/lang/CharSequence;)Landroidx/media3/common/v$b;

    goto :goto_1

    :pswitch_7
    iget-object v0, p0, Lx2/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->p(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Landroidx/media3/common/v$b;->s0(Ljava/lang/Integer;)Landroidx/media3/common/v$b;

    goto :goto_1

    :pswitch_8
    iget-object v0, p0, Lx2/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->p(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Landroidx/media3/common/v$b;->q0(Ljava/lang/Integer;)Landroidx/media3/common/v$b;

    goto :goto_1

    :pswitch_9
    iget-object v0, p0, Lx2/b;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->p(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Landroidx/media3/common/v$b;->r0(Ljava/lang/Integer;)Landroidx/media3/common/v$b;

    :cond_a
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7357db54 -> :sswitch_9
        -0xcdfdf46 -> :sswitch_8
        -0x6c103cc -> :sswitch_7
        0x3b7864f -> :sswitch_6
        0x4091163 -> :sswitch_5
        0x4c22a38 -> :sswitch_4
        0x198917dc -> :sswitch_3
        0x3b34911e -> :sswitch_2
        0x681d2256 -> :sswitch_1
        0x7395d347 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lx2/b;

    iget-object v2, p0, Lx2/b;->a:Ljava/lang/String;

    iget-object v3, p1, Lx2/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lx2/b;->b:Ljava/lang/String;

    iget-object p1, p1, Lx2/b;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public synthetic getWrappedMetadataBytes()[B
    .locals 1

    invoke-static {p0}, Landroidx/media3/common/w;->a(Landroidx/media3/common/x$a;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic getWrappedMetadataFormat()Landroidx/media3/common/r;
    .locals 1

    invoke-static {p0}, Landroidx/media3/common/w;->b(Landroidx/media3/common/x$a;)Landroidx/media3/common/r;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lx2/b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lx2/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx2/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lx2/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
