.class public abstract Landroidx/compose/ui/text/font/j;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroidx/compose/ui/text/font/TypefaceRequestCache;

.field private static final b:Landroidx/compose/ui/text/font/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/font/TypefaceRequestCache;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/TypefaceRequestCache;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/j;->a:Landroidx/compose/ui/text/font/TypefaceRequestCache;

    new-instance v0, Landroidx/compose/ui/text/font/e;

    invoke-direct {v0}, Landroidx/compose/ui/text/font/e;-><init>()V

    sput-object v0, Landroidx/compose/ui/text/font/j;->b:Landroidx/compose/ui/text/font/e;

    return-void
.end method

.method public static final a()Landroidx/compose/ui/text/font/e;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/font/j;->b:Landroidx/compose/ui/text/font/e;

    return-object v0
.end method

.method public static final b()Landroidx/compose/ui/text/font/TypefaceRequestCache;
    .locals 1

    sget-object v0, Landroidx/compose/ui/text/font/j;->a:Landroidx/compose/ui/text/font/TypefaceRequestCache;

    return-object v0
.end method
