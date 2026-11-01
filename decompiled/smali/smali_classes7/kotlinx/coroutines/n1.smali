.class public final Lkotlinx/coroutines/n1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/coroutines/n0;


# static fields
.field public static final a:Lkotlinx/coroutines/n1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/coroutines/n1;

    invoke-direct {v0}, Lkotlinx/coroutines/n1;-><init>()V

    sput-object v0, Lkotlinx/coroutines/n1;->a:Lkotlinx/coroutines/n1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    return-object v0
.end method
