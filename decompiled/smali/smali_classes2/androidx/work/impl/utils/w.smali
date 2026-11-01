.class public abstract Landroidx/work/impl/utils/w;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    const/16 v1, 0xe

    const/16 v2, 0xd

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/w;->a:[I

    return-void
.end method

.method public static final synthetic a()[I
    .locals 1

    sget-object v0, Landroidx/work/impl/utils/w;->a:[I

    return-object v0
.end method

.method public static final b(Landroid/net/NetworkRequest;)[I
    .locals 6

    const/16 v0, 0x1e

    const/4 v1, 0x0

    const-string v2, "<this>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    sget-object v0, Landroidx/work/impl/utils/u;->a:Landroidx/work/impl/utils/u;

    invoke-virtual {v0, p0}, Landroidx/work/impl/utils/u;->a(Landroid/net/NetworkRequest;)[I

    move-result-object p0

    goto :goto_1

    :cond_0
    new-array v2, v0, [I

    fill-array-data v2, :array_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v1, v0, :cond_2

    aget v4, v2, v1

    sget-object v5, Landroidx/work/impl/utils/r;->a:Landroidx/work/impl/utils/r;

    invoke-virtual {v5, p0, v4}, Landroidx/work/impl/utils/r;->c(Landroid/net/NetworkRequest;I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->Q0(Ljava/util/Collection;)[I

    move-result-object p0

    :goto_1
    return-object p0

    :array_0
    .array-data 4
        0x11
        0x5
        0x2
        0xa
        0x1d
        0x13
        0x3
        0x20
        0x7
        0x4
        0xc
        0x24
        0x17
        0x0
        0x21
        0x14
        0xb
        0xd
        0x12
        0x15
        0xf
        0x23
        0x22
        0x8
        0x1
        0x19
        0xe
        0x10
        0x6
        0x9
    .end array-data
.end method

.method public static final c(Landroid/net/NetworkRequest;)[I
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0xa

    const-string v2, "<this>"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    sget-object v0, Landroidx/work/impl/utils/u;->a:Landroidx/work/impl/utils/u;

    invoke-virtual {v0, p0}, Landroidx/work/impl/utils/u;->b(Landroid/net/NetworkRequest;)[I

    move-result-object p0

    goto :goto_1

    :cond_0
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_2

    aget v4, v2, v0

    sget-object v5, Landroidx/work/impl/utils/r;->a:Landroidx/work/impl/utils/r;

    invoke-virtual {v5, p0, v4}, Landroidx/work/impl/utils/r;->d(Landroid/net/NetworkRequest;I)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->Q0(Ljava/util/Collection;)[I

    move-result-object p0

    :goto_1
    return-object p0

    :array_0
    .array-data 4
        0x2
        0x0
        0x3
        0x6
        0xa
        0x9
        0x8
        0x4
        0x1
        0x5
    .end array-data
.end method
