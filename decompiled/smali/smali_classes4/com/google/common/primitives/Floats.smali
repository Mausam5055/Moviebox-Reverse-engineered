.class public abstract Lcom/google/common/primitives/Floats;
.super Lcom/google/common/primitives/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Floats$LexicographicalComparator;
    }
.end annotation


# direct methods
.method public static a(F)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->hashCode()I

    move-result p0

    return p0
.end method
