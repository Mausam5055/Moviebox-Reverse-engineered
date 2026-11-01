.class public final Lkotlinx/coroutines/y0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkotlinx/coroutines/y0;

.field private static final b:Lkotlinx/coroutines/i0;

.field private static final c:Lkotlinx/coroutines/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/y0;

    invoke-direct {v0}, Lkotlinx/coroutines/y0;-><init>()V

    sput-object v0, Lkotlinx/coroutines/y0;->a:Lkotlinx/coroutines/y0;

    sget-object v0, Lkotlinx/coroutines/scheduling/b;->g:Lkotlinx/coroutines/scheduling/b;

    sput-object v0, Lkotlinx/coroutines/y0;->b:Lkotlinx/coroutines/i0;

    sget-object v0, Lkotlinx/coroutines/p2;->a:Lkotlinx/coroutines/p2;

    sput-object v0, Lkotlinx/coroutines/y0;->c:Lkotlinx/coroutines/i0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lkotlinx/coroutines/i0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/y0;->b:Lkotlinx/coroutines/i0;

    return-object v0
.end method

.method public static final b()Lkotlinx/coroutines/i0;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/scheduling/a;->b:Lkotlinx/coroutines/scheduling/a;

    return-object v0
.end method

.method public static final c()Lkotlinx/coroutines/a2;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/internal/o;->b:Lkotlinx/coroutines/a2;

    return-object v0
.end method
