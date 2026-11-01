.class public final Landroidx/compose/ui/text/font/FontFamilyResolverImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/compose/ui/text/font/h$b;


# instance fields
.field private final a:Landroidx/compose/ui/text/font/u;

.field private final b:Landroidx/compose/ui/text/font/w;

.field private final c:Landroidx/compose/ui/text/font/TypefaceRequestCache;

.field private final d:Landroidx/compose/ui/text/font/l;

.field private final e:Landroidx/compose/ui/text/font/t;

.field private final f:Lkotlin/jvm/functions/Function1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/font/u;Landroidx/compose/ui/text/font/w;Landroidx/compose/ui/text/font/TypefaceRequestCache;Landroidx/compose/ui/text/font/l;Landroidx/compose/ui/text/font/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->a:Landroidx/compose/ui/text/font/u;

    iput-object p2, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->b:Landroidx/compose/ui/text/font/w;

    iput-object p3, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->c:Landroidx/compose/ui/text/font/TypefaceRequestCache;

    iput-object p4, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->d:Landroidx/compose/ui/text/font/l;

    iput-object p5, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->e:Landroidx/compose/ui/text/font/t;

    new-instance p1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$createDefaultTypeface$1;

    invoke-direct {p1, p0}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$createDefaultTypeface$1;-><init>(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)V

    iput-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->f:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/text/font/u;Landroidx/compose/ui/text/font/w;Landroidx/compose/ui/text/font/TypefaceRequestCache;Landroidx/compose/ui/text/font/l;Landroidx/compose/ui/text/font/t;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    sget-object p2, Landroidx/compose/ui/text/font/w;->a:Landroidx/compose/ui/text/font/w$a;

    invoke-virtual {p2}, Landroidx/compose/ui/text/font/w$a;->a()Landroidx/compose/ui/text/font/w;

    move-result-object p2

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    invoke-static {}, Landroidx/compose/ui/text/font/j;->b()Landroidx/compose/ui/text/font/TypefaceRequestCache;

    move-result-object p3

    :cond_1
    move-object v3, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    new-instance p4, Landroidx/compose/ui/text/font/l;

    invoke-static {}, Landroidx/compose/ui/text/font/j;->a()Landroidx/compose/ui/text/font/e;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p7, 0x2

    invoke-direct {p4, p2, p3, p7, p3}, Landroidx/compose/ui/text/font/l;-><init>(Landroidx/compose/ui/text/font/e;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_2
    move-object v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    new-instance p5, Landroidx/compose/ui/text/font/t;

    invoke-direct {p5}, Landroidx/compose/ui/text/font/t;-><init>()V

    :cond_3
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;-><init>(Landroidx/compose/ui/text/font/u;Landroidx/compose/ui/text/font/w;Landroidx/compose/ui/text/font/TypefaceRequestCache;Landroidx/compose/ui/text/font/l;Landroidx/compose/ui/text/font/t;)V

    return-void
.end method

.method public static final synthetic b(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->f:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)Landroidx/compose/ui/text/font/l;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->d:Landroidx/compose/ui/text/font/l;

    return-object p0
.end method

.method public static final synthetic d(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;)Landroidx/compose/ui/text/font/t;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->e:Landroidx/compose/ui/text/font/t;

    return-object p0
.end method

.method public static final synthetic e(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;Landroidx/compose/ui/text/font/d0;)Landroidx/compose/runtime/a3;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->g(Landroidx/compose/ui/text/font/d0;)Landroidx/compose/runtime/a3;

    move-result-object p0

    return-object p0
.end method

.method private final g(Landroidx/compose/ui/text/font/d0;)Landroidx/compose/runtime/a3;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->c:Landroidx/compose/ui/text/font/TypefaceRequestCache;

    new-instance v1, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;

    invoke-direct {v1, p0, p1}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl$resolve$result$1;-><init>(Landroidx/compose/ui/text/font/FontFamilyResolverImpl;Landroidx/compose/ui/text/font/d0;)V

    invoke-virtual {v0, p1, v1}, Landroidx/compose/ui/text/font/TypefaceRequestCache;->c(Landroidx/compose/ui/text/font/d0;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/a3;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Landroidx/compose/ui/text/font/h;Landroidx/compose/ui/text/font/p;II)Landroidx/compose/runtime/a3;
    .locals 8

    new-instance v7, Landroidx/compose/ui/text/font/d0;

    iget-object v0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->b:Landroidx/compose/ui/text/font/w;

    invoke-interface {v0, p1}, Landroidx/compose/ui/text/font/w;->d(Landroidx/compose/ui/text/font/h;)Landroidx/compose/ui/text/font/h;

    move-result-object v1

    iget-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->b:Landroidx/compose/ui/text/font/w;

    invoke-interface {p1, p2}, Landroidx/compose/ui/text/font/w;->a(Landroidx/compose/ui/text/font/p;)Landroidx/compose/ui/text/font/p;

    move-result-object v2

    iget-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->b:Landroidx/compose/ui/text/font/w;

    invoke-interface {p1, p3}, Landroidx/compose/ui/text/font/w;->b(I)I

    move-result v3

    iget-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->b:Landroidx/compose/ui/text/font/w;

    invoke-interface {p1, p4}, Landroidx/compose/ui/text/font/w;->c(I)I

    move-result v4

    iget-object p1, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->a:Landroidx/compose/ui/text/font/u;

    invoke-interface {p1}, Landroidx/compose/ui/text/font/u;->a()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroidx/compose/ui/text/font/d0;-><init>(Landroidx/compose/ui/text/font/h;Landroidx/compose/ui/text/font/p;IILjava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p0, v7}, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->g(Landroidx/compose/ui/text/font/d0;)Landroidx/compose/runtime/a3;

    move-result-object p1

    return-object p1
.end method

.method public final f()Landroidx/compose/ui/text/font/u;
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/text/font/FontFamilyResolverImpl;->a:Landroidx/compose/ui/text/font/u;

    return-object v0
.end method
