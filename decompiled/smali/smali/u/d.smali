.class public Lu/d;
.super Lkotlin/collections/AbstractMap;

# interfaces
.implements Lt/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/d$a;
    }
.end annotation


# static fields
.field public static final f:Lu/d$a;

.field public static final g:I

.field private static final h:Lu/d;


# instance fields
.field private final d:Lu/t;

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lu/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lu/d;->f:Lu/d$a;

    const/16 v0, 0x8

    sput v0, Lu/d;->g:I

    new-instance v0, Lu/d;

    sget-object v1, Lu/t;->e:Lu/t$a;

    invoke-virtual {v1}, Lu/t$a;->a()Lu/t;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu/d;-><init>(Lu/t;I)V

    sput-object v0, Lu/d;->h:Lu/d;

    return-void
.end method

.method public constructor <init>(Lu/t;I)V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/AbstractMap;-><init>()V

    iput-object p1, p0, Lu/d;->d:Lu/t;

    iput p2, p0, Lu/d;->e:I

    return-void
.end method

.method public static final synthetic q()Lu/d;
    .locals 1

    sget-object v0, Lu/d;->h:Lu/d;

    return-object v0
.end method

.method private final s()Lt/e;
    .locals 1

    new-instance v0, Lu/n;

    invoke-direct {v0, p0}, Lu/n;-><init>(Lu/d;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic builder()Lt/g$a;
    .locals 1

    invoke-virtual {p0}, Lu/d;->r()Lu/f;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lu/d;->d:Lu/t;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, p1, v1}, Lu/t;->k(ILjava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lu/d;->d:Lu/t;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, p1, v1}, Lu/t;->o(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h()Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lu/d;->s()Lt/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic i()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lu/d;->t()Lt/e;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lu/d;->e:I

    return v0
.end method

.method public bridge synthetic l()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lu/d;->v()Lt/b;

    move-result-object v0

    return-object v0
.end method

.method public r()Lu/f;
    .locals 1

    new-instance v0, Lu/f;

    invoke-direct {v0, p0}, Lu/f;-><init>(Lu/d;)V

    return-object v0
.end method

.method public t()Lt/e;
    .locals 1

    new-instance v0, Lu/p;

    invoke-direct {v0, p0}, Lu/p;-><init>(Lu/d;)V

    return-object v0
.end method

.method public final u()Lu/t;
    .locals 1

    iget-object v0, p0, Lu/d;->d:Lu/t;

    return-object v0
.end method

.method public v()Lt/b;
    .locals 1

    new-instance v0, Lu/r;

    invoke-direct {v0, p0}, Lu/r;-><init>(Lu/d;)V

    return-object v0
.end method

.method public w(Ljava/lang/Object;Ljava/lang/Object;)Lu/d;
    .locals 3

    iget-object v0, p0, Lu/d;->d:Lu/t;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, p1, p2, v1}, Lu/t;->P(ILjava/lang/Object;Ljava/lang/Object;I)Lu/t$b;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance p2, Lu/d;

    invoke-virtual {p1}, Lu/t$b;->a()Lu/t;

    move-result-object v0

    invoke-virtual {p0}, Lkotlin/collections/AbstractMap;->size()I

    move-result v1

    invoke-virtual {p1}, Lu/t$b;->b()I

    move-result p1

    add-int/2addr v1, p1

    invoke-direct {p2, v0, v1}, Lu/d;-><init>(Lu/t;I)V

    return-object p2
.end method

.method public x(Ljava/lang/Object;)Lu/d;
    .locals 3

    iget-object v0, p0, Lu/d;->d:Lu/t;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2, p1, v1}, Lu/t;->Q(ILjava/lang/Object;I)Lu/t;

    move-result-object p1

    iget-object v0, p0, Lu/d;->d:Lu/t;

    if-ne v0, p1, :cond_1

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    sget-object p1, Lu/d;->f:Lu/d$a;

    invoke-virtual {p1}, Lu/d$a;->a()Lu/d;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Lu/d;

    invoke-virtual {p0}, Lkotlin/collections/AbstractMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, p1, v1}, Lu/d;-><init>(Lu/t;I)V

    return-object v0
.end method
