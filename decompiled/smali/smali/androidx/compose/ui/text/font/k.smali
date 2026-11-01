.class public abstract Landroidx/compose/ui/text/font/k;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroid/content/Context;)Landroidx/compose/ui/text/font/h$b;
    .locals 9

    new-instance v8, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;

    new-instance v1, Landroidx/compose/ui/text/font/a;

    invoke-direct {v1, p0}, Landroidx/compose/ui/text/font/a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroidx/compose/ui/text/font/c;->a(Landroid/content/Context;)Landroidx/compose/ui/text/font/b;

    move-result-object v2

    const/16 v6, 0x1c

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;-><init>(Landroidx/compose/ui/text/font/u;Landroidx/compose/ui/text/font/w;Landroidx/compose/ui/text/font/TypefaceRequestCache;Landroidx/compose/ui/text/font/l;Landroidx/compose/ui/text/font/t;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8
.end method
