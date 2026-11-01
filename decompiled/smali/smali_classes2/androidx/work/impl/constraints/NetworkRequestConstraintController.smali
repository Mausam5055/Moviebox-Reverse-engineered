.class public final Landroidx/work/impl/constraints/NetworkRequestConstraintController;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/work/impl/constraints/controllers/d;


# instance fields
.field private final a:Landroid/net/ConnectivityManager;

.field private final b:J


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;J)V
    .locals 1

    const-string v0, "connManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController;->a:Landroid/net/ConnectivityManager;

    iput-wide p2, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/ConnectivityManager;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x3e8

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/work/impl/constraints/NetworkRequestConstraintController;-><init>(Landroid/net/ConnectivityManager;J)V

    return-void
.end method

.method public static final synthetic d(Landroidx/work/impl/constraints/NetworkRequestConstraintController;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController;->a:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static final synthetic e(Landroidx/work/impl/constraints/NetworkRequestConstraintController;)J
    .locals 2

    iget-wide v0, p0, Landroidx/work/impl/constraints/NetworkRequestConstraintController;->b:J

    return-wide v0
.end method


# virtual methods
.method public a(Landroidx/work/impl/model/j0;)Z
    .locals 1

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/work/impl/constraints/NetworkRequestConstraintController;->c(Landroidx/work/impl/model/j0;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "isCurrentlyConstrained() must never be called onNetworkRequestConstraintController. isCurrentlyConstrained() is called only on older platforms where NetworkRequest isn\'t supported"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Landroidx/work/d;)Lkotlinx/coroutines/flow/b;
    .locals 2

    const-string v0, "constraints"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Landroidx/work/impl/constraints/NetworkRequestConstraintController$track$1;-><init>(Landroidx/work/d;Landroidx/work/impl/constraints/NetworkRequestConstraintController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/d;->e(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroidx/work/impl/model/j0;)Z
    .locals 1

    const-string v0, "workSpec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/work/impl/model/j0;->j:Landroidx/work/d;

    invoke-virtual {v0}, Landroidx/work/d;->d()Landroid/net/NetworkRequest;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p1, Landroidx/work/impl/model/j0;->j:Landroidx/work/d;

    invoke-virtual {p1}, Landroidx/work/d;->f()Landroidx/work/NetworkType;

    move-result-object p1

    sget-object v0, Landroidx/work/NetworkType;->NOT_REQUIRED:Landroidx/work/NetworkType;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
