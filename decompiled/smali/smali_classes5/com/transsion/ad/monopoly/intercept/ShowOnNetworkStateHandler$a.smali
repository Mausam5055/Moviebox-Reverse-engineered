.class public final Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler;->g()Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a$a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a$a;->b()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a$a;->a()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object p1, Lnh/m;->a:Lnh/m;

    invoke-virtual {p1}, Lnh/m;->e()Z

    move-result p1

    new-instance v2, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a$a;

    invoke-direct {v2, p1, v0, v1}, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a$a;-><init>(ZJ)V

    invoke-static {v2}, Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler;->h(Lcom/transsion/ad/monopoly/intercept/ShowOnNetworkStateHandler$a$a;)V

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
