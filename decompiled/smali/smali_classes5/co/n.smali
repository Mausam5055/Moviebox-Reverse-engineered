.class public abstract Lco/n;
.super Ljava/lang/Object;


# direct methods
.method public static final a()Lco/m;
    .locals 4

    new-instance v0, Lco/m;

    const v1, 0xc350

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/32 v2, 0x12c00000

    invoke-direct {v0, v2, v3, v1}, Lco/m;-><init>(JLjava/lang/Integer;)V

    return-object v0
.end method
