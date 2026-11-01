.class public final Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;->f(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;->e(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler$a;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final d(Ljava/lang/String;)Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler;->g()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler;->h()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-static {v0, v1}, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler;->i(J)V

    :cond_0
    invoke-static {}, Lcom/transsion/ad/monopoly/intercept/AdResourceDownloadedHandler;->h()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    new-instance v1, Lcom/transsion/ad/monopoly/intercept/d;

    invoke-direct {v1}, Lcom/transsion/ad/monopoly/intercept/d;-><init>()V

    new-instance v2, Lcom/transsion/ad/monopoly/intercept/e;

    invoke-direct {v2, v1}, Lcom/transsion/ad/monopoly/intercept/e;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-static {v0, p1, v2}, Lcom/transsion/ad/monopoly/intercept/c;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "computeIfAbsent(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method private static final e(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lti/h;->a:Lti/h;

    invoke-virtual {v0, p0}, Lti/h;->h(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static final f(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method
