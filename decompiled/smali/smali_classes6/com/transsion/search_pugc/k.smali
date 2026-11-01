.class public final Lcom/transsion/search_pugc/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search_pugc/k$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/search_pugc/k;

.field private static final b:Lkotlinx/coroutines/flow/x0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/search_pugc/k;

    invoke-direct {v0}, Lcom/transsion/search_pugc/k;-><init>()V

    sput-object v0, Lcom/transsion/search_pugc/k;->a:Lcom/transsion/search_pugc/k;

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1, v0}, Lkotlinx/coroutines/flow/d1;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/x0;

    move-result-object v0

    sput-object v0, Lcom/transsion/search_pugc/k;->b:Lkotlinx/coroutines/flow/x0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/flow/x0;
    .locals 1

    sget-object v0, Lcom/transsion/search_pugc/k;->b:Lkotlinx/coroutines/flow/x0;

    return-object v0
.end method
