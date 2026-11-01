.class public abstract Lcom/google/common/hash/f;
.super Ljava/lang/Object;


# static fields
.field static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/common/hash/f;->a:I

    return-void
.end method

.method public static a()Lcom/google/common/hash/d;
    .locals 1

    sget-object v0, Lcom/google/common/hash/Murmur3_128HashFunction;->MURMUR3_128:Lcom/google/common/hash/d;

    return-object v0
.end method

.method public static b(I)Lcom/google/common/hash/d;
    .locals 1

    new-instance v0, Lcom/google/common/hash/Murmur3_128HashFunction;

    invoke-direct {v0, p0}, Lcom/google/common/hash/Murmur3_128HashFunction;-><init>(I)V

    return-object v0
.end method
