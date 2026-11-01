.class final Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/foundation/lazy/k;


# instance fields
.field private final a:Landroidx/compose/foundation/lazy/LazyListState;

.field private final b:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

.field private final c:Landroidx/compose/foundation/lazy/c;

.field private final d:Landroidx/compose/foundation/lazy/layout/p;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/foundation/lazy/LazyListIntervalContent;Landroidx/compose/foundation/lazy/c;Landroidx/compose/foundation/lazy/layout/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->a:Landroidx/compose/foundation/lazy/LazyListState;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->b:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->c:Landroidx/compose/foundation/lazy/c;

    iput-object p4, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->d:Landroidx/compose/foundation/lazy/layout/p;

    return-void
.end method

.method public static final synthetic h(Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;)Landroidx/compose/foundation/lazy/LazyListIntervalContent;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->b:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->e()Landroidx/compose/foundation/lazy/layout/p;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/p;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public b(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->e()Landroidx/compose/foundation/lazy/layout/p;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/compose/foundation/lazy/layout/p;->b(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->b:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/layout/j;->e(I)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public c(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->b:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {v0, p1}, Landroidx/compose/foundation/lazy/layout/j;->b(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d()Landroidx/compose/foundation/lazy/c;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->c:Landroidx/compose/foundation/lazy/c;

    return-object v0
.end method

.method public e()Landroidx/compose/foundation/lazy/layout/p;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->d:Landroidx/compose/foundation/lazy/layout/p;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->b:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;

    iget-object p1, p1, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->b:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->b:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public g(ILjava/lang/Object;Landroidx/compose/runtime/i;I)V
    .locals 7

    const v0, -0x1b900aca

    invoke-interface {p3, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object p3

    and-int/lit8 v1, p4, 0x6

    if-nez v1, :cond_1

    invoke-interface {p3, p1}, Landroidx/compose/runtime/i;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, p4

    goto :goto_1

    :cond_1
    move v1, p4

    :goto_1
    and-int/lit8 v2, p4, 0x30

    if-nez v2, :cond_3

    invoke-interface {p3, p2}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x20

    goto :goto_2

    :cond_2
    const/16 v2, 0x10

    :goto_2
    or-int/2addr v1, v2

    :cond_3
    and-int/lit16 v2, p4, 0x180

    if-nez v2, :cond_5

    invoke-interface {p3, p0}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x100

    goto :goto_3

    :cond_4
    const/16 v2, 0x80

    :goto_3
    or-int/2addr v1, v2

    :cond_5
    and-int/lit16 v2, v1, 0x93

    const/16 v3, 0x92

    if-ne v2, v3, :cond_7

    invoke-interface {p3}, Landroidx/compose/runtime/i;->h()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-interface {p3}, Landroidx/compose/runtime/i;->G()V

    goto :goto_5

    :cond_7
    :goto_4
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    const-string v3, "androidx.compose.foundation.lazy.LazyListItemProviderImpl.Item (LazyListItemProvider.kt:75)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_8
    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->a:Landroidx/compose/foundation/lazy/LazyListState;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/LazyListState;->w()Landroidx/compose/foundation/lazy/layout/w;

    move-result-object v3

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$Item$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$Item$1;-><init>(Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;I)V

    const/16 v2, 0x36

    const v4, -0x3128503e

    const/4 v5, 0x1

    invoke-static {v4, v5, v0, p3, v2}, Landroidx/compose/runtime/internal/b;->d(IZLjava/lang/Object;Landroidx/compose/runtime/i;I)Landroidx/compose/runtime/internal/a;

    move-result-object v4

    shr-int/lit8 v0, v1, 0x3

    and-int/lit8 v0, v0, 0xe

    or-int/lit16 v0, v0, 0xc00

    shl-int/lit8 v1, v1, 0x3

    and-int/lit8 v1, v1, 0x70

    or-int v6, v0, v1

    move-object v1, p2

    move v2, p1

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnableItemKt;->a(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/layout/w;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/i;I)V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_9
    :goto_5
    invoke-interface {p3}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object p3

    if-eqz p3, :cond_a

    new-instance v0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$Item$2;

    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl$Item$2;-><init>(Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;ILjava/lang/Object;I)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_a
    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->b:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/layout/j;->d()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/lazy/LazyListItemProviderImpl;->b:Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
