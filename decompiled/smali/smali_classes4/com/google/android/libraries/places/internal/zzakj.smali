.class public final Lcom/google/android/libraries/places/internal/zzakj;
.super Ljava/lang/Object;


# direct methods
.method public static zza(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ne v1, p1, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x7e

    const v5, 0xd800

    if-gt v3, v4, :cond_1

    const/16 v4, 0x20

    if-lt v3, v4, :cond_2

    goto :goto_1

    :cond_1
    if-ge v3, v5, :cond_2

    const/16 v4, 0xa0

    if-lt v3, v4, :cond_2

    goto :goto_1

    :cond_2
    if-ge v3, v5, :cond_3

    const/16 v1, 0xa

    if-eq v3, v1, :cond_4

    const/16 v1, 0xd

    if-eq v3, v1, :cond_4

    const/16 v1, 0x9

    if-eq v3, v1, :cond_4

    const/16 v1, 0xc

    if-eq v3, v1, :cond_4

    goto :goto_2

    :cond_3
    const v4, 0xdfff

    const v5, 0xfffe

    if-le v3, v4, :cond_5

    const v1, 0xfdd0

    if-lt v3, v1, :cond_4

    const v1, 0xfdef

    if-le v3, v1, :cond_6

    if-ge v3, v5, :cond_6

    :cond_4
    :goto_1
    move v1, v2

    goto :goto_0

    :cond_5
    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_6

    and-int/2addr v2, v5

    if-eq v2, v5, :cond_6

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_6
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_3
    if-ge v0, p1, :cond_9

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzakj;->zzb(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    invoke-static {p0, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzakj;->zzb(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v4, v3, :cond_8

    const v3, 0xfffd

    goto :goto_4

    :cond_8
    move v3, v2

    :goto_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_3

    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(I)Z
    .locals 4

    const/16 v0, 0x7e

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p0, v0, :cond_2

    const/16 v0, 0x20

    if-ge p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xc

    if-ne p0, v0, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    const v0, 0xd800

    if-ge p0, v0, :cond_4

    const/16 v0, 0xa0

    if-ge p0, v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    const v0, 0xfdd0

    if-ge p0, v0, :cond_6

    const v0, 0xdfff

    if-gt p0, v0, :cond_5

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    const v0, 0xfdef

    if-le p0, v0, :cond_8

    const v0, 0xfffe

    and-int v3, p0, v0

    if-eq v3, v0, :cond_8

    const v0, 0x10ffff

    if-le p0, v0, :cond_7

    goto :goto_0

    :cond_7
    return v2

    :cond_8
    :goto_0
    return v1
.end method
