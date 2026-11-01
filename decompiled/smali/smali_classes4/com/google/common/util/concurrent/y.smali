.class public final Lcom/google/common/util/concurrent/y;
.super Lcom/google/common/util/concurrent/AbstractFuture$h;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$h;-><init>()V

    return-void
.end method

.method public static s()Lcom/google/common/util/concurrent/y;
    .locals 1

    new-instance v0, Lcom/google/common/util/concurrent/y;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/y;-><init>()V

    return-object v0
.end method


# virtual methods
.method public set(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setException(Ljava/lang/Throwable;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public setFuture(Lcom/google/common/util/concurrent/r;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->setFuture(Lcom/google/common/util/concurrent/r;)Z

    move-result p1

    return p1
.end method
