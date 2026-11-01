.class public abstract Landroidx/compose/ui/graphics/colorspace/i;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/collection/e0;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->w()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/c;->b()I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->w()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/c;->b()I

    move-result v2

    sget-object v3, Landroidx/compose/ui/graphics/colorspace/n;->a:Landroidx/compose/ui/graphics/colorspace/n$a;

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/n$a;->b()I

    move-result v4

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    shl-int/lit8 v2, v4, 0xc

    or-int v4, v1, v2

    sget-object v1, Landroidx/compose/ui/graphics/colorspace/h;->g:Landroidx/compose/ui/graphics/colorspace/h$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->w()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/colorspace/h$a;->c(Landroidx/compose/ui/graphics/colorspace/c;)Landroidx/compose/ui/graphics/colorspace/h;

    move-result-object v5

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->w()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/c;->b()I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->t()Landroidx/compose/ui/graphics/colorspace/c;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/c;->b()I

    move-result v2

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/n$a;->b()I

    move-result v6

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    shl-int/lit8 v2, v6, 0xc

    or-int v6, v1, v2

    new-instance v7, Landroidx/compose/ui/graphics/colorspace/h;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->w()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->t()Landroidx/compose/ui/graphics/colorspace/c;

    move-result-object v2

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/n$a;->b()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v7, v1, v2, v8, v9}, Landroidx/compose/ui/graphics/colorspace/h;-><init>(Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/c;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->t()Landroidx/compose/ui/graphics/colorspace/c;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/c;->b()I

    move-result v1

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->w()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/c;->b()I

    move-result v2

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/n$a;->b()I

    move-result v8

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v1, v2

    shl-int/lit8 v2, v8, 0xc

    or-int v8, v1, v2

    new-instance v1, Landroidx/compose/ui/graphics/colorspace/h;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->t()Landroidx/compose/ui/graphics/colorspace/c;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/g;->w()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object v0

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/n$a;->b()I

    move-result v3

    invoke-direct {v1, v2, v0, v3, v9}, Landroidx/compose/ui/graphics/colorspace/h;-><init>(Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/c;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v1

    invoke-static/range {v4 .. v9}, Landroidx/collection/p;->c(ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)Landroidx/collection/e0;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/graphics/colorspace/i;->a:Landroidx/collection/e0;

    return-void
.end method

.method public static final a()Landroidx/collection/e0;
    .locals 1

    sget-object v0, Landroidx/compose/ui/graphics/colorspace/i;->a:Landroidx/collection/e0;

    return-object v0
.end method
