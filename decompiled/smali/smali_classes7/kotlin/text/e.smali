.class final Lkotlin/text/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/text/e$a;
    }
.end annotation


# static fields
.field private static final f:Lkotlin/text/e$a;


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/text/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/text/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/text/e;->f:Lkotlin/text/e$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/e;->a:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lkotlin/text/e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lkotlin/text/e;->b:I

    iget v0, p0, Lkotlin/text/e;->d:I

    iget v1, p0, Lkotlin/text/e;->c:I

    iget v2, p0, Lkotlin/text/e;->e:I

    add-int/2addr v2, v0

    iput v2, p0, Lkotlin/text/e;->c:I

    iget-object v2, p0, Lkotlin/text/e;->a:Ljava/lang/CharSequence;

    invoke-interface {v2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 8

    iget v0, p0, Lkotlin/text/e;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lkotlin/text/e;->e:I

    const/4 v3, 0x2

    if-gez v0, :cond_2

    iput v3, p0, Lkotlin/text/e;->b:I

    return v1

    :cond_2
    iget-object v0, p0, Lkotlin/text/e;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lkotlin/text/e;->c:I

    iget-object v4, p0, Lkotlin/text/e;->a:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_0
    if-ge v1, v4, :cond_5

    iget-object v5, p0, Lkotlin/text/e;->a:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xd

    const/16 v7, 0xa

    if-eq v5, v7, :cond_3

    if-eq v5, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-ne v5, v6, :cond_4

    add-int/lit8 v0, v1, 0x1

    iget-object v4, p0, Lkotlin/text/e;->a:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lkotlin/text/e;->a:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_4

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_5
    const/4 v3, -0x1

    :goto_2
    iput v2, p0, Lkotlin/text/e;->b:I

    iput v3, p0, Lkotlin/text/e;->e:I

    iput v0, p0, Lkotlin/text/e;->d:I

    return v2
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlin/text/e;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
