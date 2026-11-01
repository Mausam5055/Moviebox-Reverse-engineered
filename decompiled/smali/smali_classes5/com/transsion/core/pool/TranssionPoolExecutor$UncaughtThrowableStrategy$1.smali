.class final enum Lcom/transsion/core/pool/TranssionPoolExecutor$UncaughtThrowableStrategy$1;
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
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Request threw uncaught throwable"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "ZeroPoolExecutor"

    invoke-static {p1, v0}, Lcom/transsion/core/log/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
