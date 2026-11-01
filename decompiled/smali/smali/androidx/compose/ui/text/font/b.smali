.class public final Landroidx/compose/ui/text/font/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/text/font/w;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/font/b;->b:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/font/p;)Landroidx/compose/ui/text/font/p;
    .locals 2

    iget v0, p0, Landroidx/compose/ui/text/font/b;->b:I

    if-eqz v0, :cond_1

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/p;->h()I

    move-result p1

    iget v0, p0, Landroidx/compose/ui/text/font/b;->b:I

    add-int/2addr p1, v0

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->m(III)I

    move-result p1

    new-instance v0, Landroidx/compose/ui/text/font/p;

    invoke-direct {v0, p1}, Landroidx/compose/ui/text/font/p;-><init>(I)V

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public synthetic b(I)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/font/v;->b(Landroidx/compose/ui/text/font/w;I)I

    move-result p1

    return p1
.end method

.method public synthetic c(I)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/font/v;->c(Landroidx/compose/ui/text/font/w;I)I

    move-result p1

    return p1
.end method

.method public synthetic d(Landroidx/compose/ui/text/font/h;)Landroidx/compose/ui/text/font/h;
    .locals 0

    invoke-static {p0, p1}, Landroidx/compose/ui/text/font/v;->a(Landroidx/compose/ui/text/font/w;Landroidx/compose/ui/text/font/h;)Landroidx/compose/ui/text/font/h;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/font/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/font/b;

    iget v1, p0, Landroidx/compose/ui/text/font/b;->b:I

    iget p1, p1, Landroidx/compose/ui/text/font/b;->b:I

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/compose/ui/text/font/b;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidFontResolveInterceptor(fontWeightAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/text/font/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
