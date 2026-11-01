.class public abstract Lkotlinx/coroutines/selects/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lkotlin/jvm/functions/Function3;

.field private static final b:Lkotlinx/coroutines/internal/z;

.field private static final c:Lkotlinx/coroutines/internal/z;

.field private static final d:Lkotlinx/coroutines/internal/z;

.field private static final e:Lkotlinx/coroutines/internal/z;

.field private static final f:Lkotlinx/coroutines/internal/z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlinx/coroutines/selects/g$a;->a:Lkotlinx/coroutines/selects/g$a;

    sput-object v0, Lkotlinx/coroutines/selects/g;->a:Lkotlin/jvm/functions/Function3;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "STATE_REG"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/selects/g;->b:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "STATE_COMPLETED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/selects/g;->c:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "STATE_CANCELLED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/selects/g;->d:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "NO_RESULT"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/selects/g;->e:Lkotlinx/coroutines/internal/z;

    new-instance v0, Lkotlinx/coroutines/internal/z;

    const-string v1, "PARAM_CLAUSE_0"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/selects/g;->f:Lkotlinx/coroutines/internal/z;

    return-void
.end method

.method public static final synthetic a()Lkotlin/jvm/functions/Function3;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/selects/g;->a:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method
