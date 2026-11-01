.class public final Lwt/d;
.super Ljava/lang/Object;

# interfaces
.implements Lwt/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwt/d$a;
    }
.end annotation


# static fields
.field public static final g:Lwt/d$a;


# instance fields
.field private b:Ljava/util/Set;

.field private final c:Ljava/lang/String;

.field private final d:Lkotlinx/coroutines/n0;

.field private final e:Lkotlin/Lazy;

.field private final f:Lwt/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lwt/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwt/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lwt/d;->g:Lwt/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lwt/d;->b:Ljava/util/Set;

    const-class v0, Lwt/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwt/d;->c:Ljava/lang/String;

    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Lwt/d;->d:Lkotlinx/coroutines/n0;

    new-instance v0, Lwt/c;

    invoke-direct {v0}, Lwt/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lwt/d;->e:Lkotlin/Lazy;

    new-instance v0, Lwt/d$b;

    invoke-direct {v0, p0}, Lwt/d$b;-><init>(Lwt/d;)V

    iput-object v0, p0, Lwt/d;->f:Lwt/d$b;

    return-void
.end method

.method public static synthetic a()Lst/c;
    .locals 1

    invoke-static {}, Lwt/d;->b()Lst/c;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Lst/c;
    .locals 1

    sget-object v0, Lys/a;->a:Lys/a;

    invoke-virtual {v0}, Lys/a;->b()Ltt/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ltt/a;->b()Lst/c;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 0

    return-void
.end method
