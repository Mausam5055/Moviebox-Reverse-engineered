.class public final Lcom/transsion/search_pugc/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/search_pugc/j$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/search_pugc/j$a;

.field private static final c:Lkotlin/Lazy;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/search_pugc/j$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/search_pugc/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/search_pugc/j;->b:Lcom/transsion/search_pugc/j$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/transsion/search_pugc/i;

    invoke-direct {v1}, Lcom/transsion/search_pugc/i;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/search_pugc/j;->c:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/search_pugc/j;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic a()Lcom/transsion/search_pugc/j;
    .locals 1

    invoke-static {}, Lcom/transsion/search_pugc/j;->b()Lcom/transsion/search_pugc/j;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Lcom/transsion/search_pugc/j;
    .locals 1

    new-instance v0, Lcom/transsion/search_pugc/j;

    invoke-direct {v0}, Lcom/transsion/search_pugc/j;-><init>()V

    return-object v0
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/search_pugc/j;->c:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final d(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/search_pugc/j;->a:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method
