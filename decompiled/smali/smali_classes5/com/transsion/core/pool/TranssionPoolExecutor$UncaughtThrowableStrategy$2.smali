.class final enum Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy$2;
.super Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;-><init>(Ljava/lang/String;ILcom/transsion/core/pool/TranssionPoolExecutor$a;)V

    return-void
.end method


# virtual methods
.method protected handle(Ljava/lang/Throwable;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy;->handle(Ljava/lang/Throwable;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Request threw uncaught throwable"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
