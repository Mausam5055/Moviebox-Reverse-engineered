.class public final Lkotlin/text/RegexKt$fromInt$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Enum<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic a:I


# virtual methods
.method public final a(Ljava/lang/Enum;)Ljava/lang/Boolean;
    .locals 2

    iget v0, p0, Lkotlin/text/RegexKt$fromInt$1$1;->a:I

    check-cast p1, Lkotlin/text/d;

    invoke-interface {p1}, Lkotlin/text/d;->getMask()I

    move-result v1

    and-int/2addr v0, v1

    invoke-interface {p1}, Lkotlin/text/d;->getValue()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lkotlin/text/RegexKt$fromInt$1$1;->a(Ljava/lang/Enum;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
