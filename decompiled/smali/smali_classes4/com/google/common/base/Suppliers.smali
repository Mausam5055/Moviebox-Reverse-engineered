.class public abstract Lcom/google/common/base/Suppliers;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Suppliers$a;,
        Lcom/google/common/base/Suppliers$MemoizingSupplier;,
        Lcom/google/common/base/Suppliers$SupplierOfInstance;
    }
.end annotation


# direct methods
.method public static a(Lcom/google/common/base/q;)Lcom/google/common/base/q;
    .locals 1

    instance-of v0, p0, Lcom/google/common/base/Suppliers$a;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/base/Suppliers$MemoizingSupplier;

    invoke-direct {v0, p0}, Lcom/google/common/base/Suppliers$MemoizingSupplier;-><init>(Lcom/google/common/base/q;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/common/base/Suppliers$a;

    invoke-direct {v0, p0}, Lcom/google/common/base/Suppliers$a;-><init>(Lcom/google/common/base/q;)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/common/base/q;
    .locals 1

    new-instance v0, Lcom/google/common/base/Suppliers$SupplierOfInstance;

    invoke-direct {v0, p0}, Lcom/google/common/base/Suppliers$SupplierOfInstance;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
