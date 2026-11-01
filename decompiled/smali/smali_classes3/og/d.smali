.class public final Log/d;
.super Ljava/lang/Object;

# interfaces
.implements Lmg/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Log/d$a;
    }
.end annotation


# static fields
.field public static final b:Log/d$a;

.field private static final c:Lkotlin/Lazy;


# instance fields
.field private a:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Log/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Log/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Log/d;->b:Log/d$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Log/c;

    invoke-direct {v1}, Log/c;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Log/d;->c:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Log/d;->a:Lcom/google/gson/Gson;

    return-void
.end method

.method public static synthetic i()Log/d;
    .locals 1

    invoke-static {}, Log/d;->k()Log/d;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic j()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Log/d;->c:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final k()Log/d;
    .locals 1

    new-instance v0, Log/d;

    invoke-direct {v0}, Log/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lq7/e;->d(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lq7/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lq7/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lq7/e;->g(Ljava/lang/String;)Lq7/d$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lq7/d$a;->w([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lq7/e;->g(Ljava/lang/String;)Lq7/d$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lq7/d$a;->u([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs f(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lq7/e;->g(Ljava/lang/String;)Lq7/d$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lq7/d$a;->z([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs g(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lq7/e;->g(Ljava/lang/String;)Lq7/d$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lq7/d$a;->v([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs h(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lq7/e;->g(Ljava/lang/String;)Lq7/d$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lq7/d$a;->y([Ljava/lang/Object;)V

    return-void
.end method
