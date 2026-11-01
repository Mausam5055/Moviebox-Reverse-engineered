.class public final Lkotlinx/coroutines/flow/g1$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/flow/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final synthetic a:Lkotlinx/coroutines/flow/g1$a;

.field private static final b:Lkotlinx/coroutines/flow/g1;

.field private static final c:Lkotlinx/coroutines/flow/g1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/g1$a;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/g1$a;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/g1$a;->a:Lkotlinx/coroutines/flow/g1$a;

    new-instance v0, Lkotlinx/coroutines/flow/h1;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/h1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/g1$a;->b:Lkotlinx/coroutines/flow/g1;

    new-instance v0, Lkotlinx/coroutines/flow/StartedLazily;

    invoke-direct {v0}, Lkotlinx/coroutines/flow/StartedLazily;-><init>()V

    sput-object v0, Lkotlinx/coroutines/flow/g1$a;->c:Lkotlinx/coroutines/flow/g1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lkotlinx/coroutines/flow/g1$a;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/g1;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    const-wide p3, 0x7fffffffffffffffL

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/coroutines/flow/g1$a;->a(JJ)Lkotlinx/coroutines/flow/g1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(JJ)Lkotlinx/coroutines/flow/g1;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    invoke-direct {v0, p1, p2, p3, p4}, Lkotlinx/coroutines/flow/StartedWhileSubscribed;-><init>(JJ)V

    return-object v0
.end method

.method public final c()Lkotlinx/coroutines/flow/g1;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/flow/g1$a;->b:Lkotlinx/coroutines/flow/g1;

    return-object v0
.end method

.method public final d()Lkotlinx/coroutines/flow/g1;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/flow/g1$a;->c:Lkotlinx/coroutines/flow/g1;

    return-object v0
.end method
