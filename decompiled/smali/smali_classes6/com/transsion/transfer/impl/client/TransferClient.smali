.class public final Lcom/transsion/transfer/impl/client/TransferClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/transfer/impl/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/transfer/impl/client/TransferClient$a;
    }
.end annotation


# static fields
.field public static final t:Lcom/transsion/transfer/impl/client/TransferClient$a;

.field private static final u:Ljava/lang/String;

.field private static volatile v:Lcom/transsion/transfer/impl/e;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;

.field private static y:Ljava/lang/String;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlin/Lazy;

.field private final g:Lkotlin/Lazy;

.field private volatile h:Lcom/transsion/transfer/androidasync/http/b0;

.field private i:Z

.field private final j:Lkotlin/Lazy;

.field private k:Lcom/transsion/transfer/impl/PingPongHelper;

.field private final l:Lkotlin/Lazy;

.field private m:Ljava/lang/String;

.field private n:Lkotlin/jvm/functions/Function3;

.field private o:Z

.field private final p:Lcom/transsion/transfer/impl/PingPongHelper$a;

.field private final q:Lcom/transsion/transfer/impl/client/TransferClient$b;

.field private final r:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final s:Lcom/transsion/transfer/impl/client/TransferClient$h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/transfer/impl/client/TransferClient$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/transfer/impl/client/TransferClient$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    const-class v0, Lcom/transsion/transfer/impl/client/TransferClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->u:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    new-instance p1, Lcom/transsion/transfer/impl/client/a;

    invoke-direct {p1}, Lcom/transsion/transfer/impl/client/a;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->d:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/transfer/impl/client/b;

    invoke-direct {p1}, Lcom/transsion/transfer/impl/client/b;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->e:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/transfer/impl/client/c;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/client/c;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->f:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/transfer/impl/client/d;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/client/d;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->g:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/transfer/impl/client/e;

    invoke-direct {p1}, Lcom/transsion/transfer/impl/client/e;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->j:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/transfer/impl/client/f;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/client/f;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;)V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->l:Lkotlin/Lazy;

    new-instance p1, Lcom/transsion/transfer/impl/client/TransferClient$g;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/client/TransferClient$g;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;)V

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->p:Lcom/transsion/transfer/impl/PingPongHelper$a;

    new-instance p1, Lcom/transsion/transfer/impl/client/TransferClient$b;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/client/TransferClient$b;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;)V

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->q:Lcom/transsion/transfer/impl/client/TransferClient$b;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance p1, Lcom/transsion/transfer/impl/client/TransferClient$h;

    invoke-direct {p1, p0}, Lcom/transsion/transfer/impl/client/TransferClient$h;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;)V

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->s:Lcom/transsion/transfer/impl/client/TransferClient$h;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/transfer/impl/client/TransferClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic A(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/google/gson/Gson;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->f0()Lcom/google/gson/Gson;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic B()Lcom/transsion/transfer/impl/e;
    .locals 1

    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->v:Lcom/transsion/transfer/impl/e;

    return-object v0
.end method

.method public static final synthetic C(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/PingPongHelper;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->k:Lcom/transsion/transfer/impl/PingPongHelper;

    return-object p0
.end method

.method public static final synthetic D(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/TransferClient$h;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->s:Lcom/transsion/transfer/impl/client/TransferClient$h;

    return-object p0
.end method

.method public static final synthetic E()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->w:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic F(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic G()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->u:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic H()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->y:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic I(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic J(Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/transfer/impl/client/TransferClient;->n0(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic K(Lcom/transsion/transfer/impl/client/TransferClient;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->o0(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic L(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/transsion/transfer/impl/client/TransferClient;->x:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic M(Lcom/transsion/transfer/impl/e;)V
    .locals 0

    sput-object p0, Lcom/transsion/transfer/impl/client/TransferClient;->v:Lcom/transsion/transfer/impl/e;

    return-void
.end method

.method public static final synthetic N(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/impl/PingPongHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->k:Lcom/transsion/transfer/impl/PingPongHelper;

    return-void
.end method

.method public static final synthetic O(Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->m:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic P(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/transsion/transfer/impl/client/TransferClient;->w:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic Q(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/androidasync/http/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    return-void
.end method

.method public static final synthetic R(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/transsion/transfer/impl/client/TransferClient;->y:Ljava/lang/String;

    return-void
.end method

.method private static final S()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;
    .locals 1

    invoke-static {}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->w()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    move-result-object v0

    return-object v0
.end method

.method private static final T(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/n;
    .locals 7

    new-instance v6, Lcom/transsion/transfer/impl/client/n;

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    move-result-object v1

    const-string v0, "<get-client>(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->g0()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/transfer/impl/client/TransferClient;->s:Lcom/transsion/transfer/impl/client/TransferClient$h;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/impl/client/n;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/f;)V

    return-object v6
.end method

.method private static final U()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private static final V(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/p;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->i:Z

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->k:Lcom/transsion/transfer/impl/PingPongHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/transfer/impl/PingPongHelper;->o()V

    :cond_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->e0()Lcom/transsion/transfer/impl/client/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/transfer/impl/client/o;->q()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private final W(Lkotlin/jvm/functions/Function2;)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->o:Z

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->d0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<get-deviceName>(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljv/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/pingpong?clientIp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&transferId="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&deviceName="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/transsion/transfer/impl/client/TransferClient;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/transfer/impl/client/h;

    invoke-direct {v2, p0, p1}, Lcom/transsion/transfer/impl/client/h;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function2;)V

    const-string p1, "socket_connect"

    invoke-virtual {v0, v1, p1, v2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->L(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$k;)Lcom/transsion/transfer/androidasync/future/f;

    return-void
.end method

.method private static final X(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function2;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/b0;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->i:Z

    if-nez p2, :cond_2

    iput-object p3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    iget-object v1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/transsion/transfer/impl/client/i;

    invoke-direct {v2, p0}, Lcom/transsion/transfer/impl/client/i;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;)V

    invoke-interface {v1, v2}, Lcom/transsion/transfer/androidasync/http/b0;->J(Lcom/transsion/transfer/androidasync/http/b0$c;)V

    :cond_0
    iget-object v1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/transsion/transfer/impl/client/j;

    invoke-direct {v2, p0, p3}, Lcom/transsion/transfer/impl/client/j;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/androidasync/http/b0;)V

    invoke-interface {v1, v2}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    :cond_1
    new-instance v1, Lcom/transsion/transfer/impl/PingPongHelper;

    iget-object v2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->a:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->p:Lcom/transsion/transfer/impl/PingPongHelper$a;

    invoke-direct {v1, v2, v0, p3, v3}, Lcom/transsion/transfer/impl/PingPongHelper;-><init>(Ljava/lang/String;ZLcom/transsion/transfer/androidasync/http/b0;Lcom/transsion/transfer/impl/PingPongHelper$a;)V

    invoke-virtual {v1}, Lcom/transsion/transfer/impl/PingPongHelper;->n()V

    iput-object v1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->k:Lcom/transsion/transfer/impl/PingPongHelper;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serverIP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " connect error: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-nez p2, :cond_3

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    invoke-interface {p1, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final Y(Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->j0(Ljava/lang/String;)Z

    return-void
.end method

.method private static final Z(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/Exception;)V
    .locals 0

    iget-object p2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->k:Lcom/transsion/transfer/impl/PingPongHelper;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/transfer/impl/PingPongHelper;->o()V

    :cond_0
    iget-object p2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->p:Lcom/transsion/transfer/impl/PingPongHelper$a;

    iget-object p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->a:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {p2, p0, p1}, Lcom/transsion/transfer/impl/PingPongHelper$a;->a(Ljava/lang/String;Lcom/transsion/transfer/androidasync/http/b0;)V

    return-void
.end method

.method private static final a0(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/o;
    .locals 8

    new-instance v7, Lcom/transsion/transfer/impl/client/o;

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    move-result-object v1

    const-string v0, "<get-client>(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->g0()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/transfer/impl/client/TransferClient;->s:Lcom/transsion/transfer/impl/client/TransferClient$h;

    iget-object v6, p0, Lcom/transsion/transfer/impl/client/TransferClient;->q:Lcom/transsion/transfer/impl/client/TransferClient$b;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/transsion/transfer/impl/client/o;-><init>(Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/transfer/impl/f;Lkotlin/jvm/functions/Function2;)V

    return-object v7
.end method

.method private final b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    return-object v0
.end method

.method private final c0()Lcom/transsion/transfer/impl/client/n;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/impl/client/n;

    return-object v0
.end method

.method private final d0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->d:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final e0()Lcom/transsion/transfer/impl/client/o;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->f:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/transfer/impl/client/o;

    return-object v0
.end method

.method private final f0()Lcom/google/gson/Gson;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method private final g0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->l:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final h0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->g0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getUrl baseUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method private static final i0()Lcom/google/gson/Gson;
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    return-object v0
.end method

.method private final j0(Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "cmd"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->W(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "?"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/CharSequence;

    const-string v1, "="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    const-string p1, "&"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gez v1, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->k0(ILjava/util/List;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->s:Lcom/transsion/transfer/impl/client/TransferClient$h;

    invoke-virtual {p1, v1}, Lcom/transsion/transfer/impl/client/TransferClient$h;->j(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return v0

    :cond_2
    return v3
.end method

.method private final k0(ILjava/util/List;)V
    .locals 7

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/transsion/transfer/androidasync/p;->close()V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    const-string v0, "="

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->S0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljv/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string p2, "deviceName"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->m:Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->n:Lkotlin/jvm/functions/Function3;

    if-eqz p2, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "client"

    invoke-interface {p2, p1, v0, v1}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic l(Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->Y(Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;)V

    return-void
.end method

.method private static final l0(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":9890"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m()Lcom/google/gson/Gson;
    .locals 1

    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->i0()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method private final m0(Lkotlin/jvm/functions/Function0;)V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    move-result-object v0

    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    const-string v2, "/client/notifyClientClose"

    invoke-direct {p0, v2}, Lcom/transsion/transfer/impl/client/TransferClient;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/transfer/impl/client/TransferClient$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/h;

    move-result-object v1

    new-instance v2, Lcom/transsion/transfer/impl/client/TransferClient$c;

    invoke-direct {v2, p1}, Lcom/transsion/transfer/impl/client/TransferClient$c;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->v(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;)Lcom/transsion/transfer/androidasync/future/f;

    return-void
.end method

.method public static synthetic n(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->l0(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final n0(Ljava/lang/String;I)V
    .locals 5

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    move-result-object v0

    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    const-string v2, "/client/notifyFileTaskError"

    invoke-direct {p0, v2}, Lcom/transsion/transfer/impl/client/TransferClient;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/transfer/impl/client/TransferClient$a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/i;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lkotlin/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v3, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcv/f;

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->f0()Lcom/google/gson/Gson;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcv/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/transsion/transfer/androidasync/http/j;->w(Lcv/a;)V

    new-instance p1, Lcom/transsion/transfer/impl/client/TransferClient$e;

    invoke-direct {p1}, Lcom/transsion/transfer/impl/client/TransferClient$e;-><init>()V

    invoke-virtual {v0, v1, p1}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->v(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;)Lcom/transsion/transfer/androidasync/future/f;

    return-void
.end method

.method public static synthetic o(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->V(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final o0(Ljava/util/List;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    move-result-object v0

    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    const-string v2, "/client/notifyFileTaskFinish"

    invoke-direct {p0, v2}, Lcom/transsion/transfer/impl/client/TransferClient;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/transfer/impl/client/TransferClient$a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/i;

    move-result-object v1

    new-instance v2, Lcv/f;

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->f0()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcv/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/transsion/transfer/androidasync/http/j;->w(Lcv/a;)V

    new-instance v2, Lcom/transsion/transfer/impl/client/TransferClient$f;

    invoke-direct {v2, p1}, Lcom/transsion/transfer/impl/client/TransferClient$f;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->v(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;)Lcom/transsion/transfer/androidasync/future/f;

    return-void
.end method

.method public static synthetic p(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/o;
    .locals 0

    invoke-static {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->a0(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/o;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/impl/client/TransferClient;->Z(Lcom/transsion/transfer/impl/client/TransferClient;Lcom/transsion/transfer/androidasync/http/b0;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic r()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;
    .locals 1

    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->S()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic s()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/transsion/transfer/impl/client/TransferClient;->U()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic t(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/n;
    .locals 0

    invoke-static {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->T(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/n;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function2;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/b0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/transsion/transfer/impl/client/TransferClient;->X(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function2;Ljava/lang/Exception;Lcom/transsion/transfer/androidasync/http/b0;)V

    return-void
.end method

.method public static final synthetic v(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->W(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static final synthetic w()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/transsion/transfer/impl/client/TransferClient;->x:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic x(Lcom/transsion/transfer/impl/client/TransferClient;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic y(Lcom/transsion/transfer/impl/client/TransferClient;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->o:Z

    return p0
.end method

.method public static final synthetic z(Lcom/transsion/transfer/impl/client/TransferClient;)Lcom/transsion/transfer/impl/client/o;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->e0()Lcom/transsion/transfer/impl/client/o;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lkotlin/jvm/functions/Function1;)V
    .locals 5

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    move-result-object v0

    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    const-string v2, "/client/notifyServerCreate"

    invoke-direct {p0, v2}, Lcom/transsion/transfer/impl/client/TransferClient;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/transfer/impl/client/TransferClient$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/h;

    move-result-object v1

    new-instance v2, Lcom/transsion/transfer/impl/client/TransferClient$d;

    invoke-direct {v2, p1}, Lcom/transsion/transfer/impl/client/TransferClient$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->v(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;)Lcom/transsion/transfer/androidasync/future/f;

    return-void
.end method

.method public b(Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->n:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public c(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->o:Z

    new-instance v0, Lcom/transsion/transfer/impl/client/g;

    invoke-direct {v0, p0, p1}, Lcom/transsion/transfer/impl/client/g;-><init>(Lcom/transsion/transfer/impl/client/TransferClient;Lkotlin/jvm/functions/Function0;)V

    invoke-direct {p0, v0}, Lcom/transsion/transfer/impl/client/TransferClient;->m0(Lkotlin/jvm/functions/Function0;)V

    iget-object p1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public d(Lkotlin/jvm/functions/Function2;)V
    .locals 6

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->isOpen()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->i:Z

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    iget-object v2, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/transsion/transfer/androidasync/s;->isOpen()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-boolean v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->i:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect: socket:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", socket#isOpen:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", socketConnecting:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->isOpen()Z

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "connect is process"

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/transsion/transfer/impl/client/TransferClient;->i:Z

    invoke-direct {p0, p1}, Lcom/transsion/transfer/impl/client/TransferClient;->W(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 5

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->b0()Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;

    move-result-object v0

    sget-object v1, Lcom/transsion/transfer/impl/client/TransferClient;->t:Lcom/transsion/transfer/impl/client/TransferClient$a;

    const-string v2, "/client/getTransferFilesList"

    invoke-direct {p0, v2}, Lcom/transsion/transfer/impl/client/TransferClient;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/transsion/transfer/impl/client/TransferClient;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/transfer/impl/client/TransferClient;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/transsion/transfer/impl/client/TransferClient$a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/transfer/androidasync/http/h;

    move-result-object v1

    new-instance v2, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;

    invoke-direct {v2, p2, p0, p1}, Lcom/transsion/transfer/impl/client/TransferClient$fetchList$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/transsion/transfer/impl/client/TransferClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/transfer/androidasync/http/AsyncHttpClient;->v(Lcom/transsion/transfer/androidasync/http/j;Lcom/transsion/transfer/androidasync/http/AsyncHttpClient$j;)Lcom/transsion/transfer/androidasync/future/f;

    return-void
.end method

.method public f(Lcom/transsion/transfer/impl/entity/FileData;)V
    .locals 1

    const-string v0, "fileData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/transfer/impl/client/TransferClient;->e0()Lcom/transsion/transfer/impl/client/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/transsion/transfer/impl/client/o;->t(Lcom/transsion/transfer/impl/entity/FileData;)V

    return-void
.end method

.method public g(Lcom/transsion/transfer/impl/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public h()Z
    .locals 3

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->h:Lcom/transsion/transfer/androidasync/http/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/transsion/transfer/androidasync/s;->isOpen()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public i(Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "root"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "files"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "notifyFileListener"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/transsion/transfer/impl/client/TransferClient;->c0()Lcom/transsion/transfer/impl/client/n;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/transsion/transfer/impl/client/n;->e(Ljava/util/List;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/transsion/transfer/impl/entity/FileData;

    invoke-virtual {v6}, Lcom/transsion/transfer/impl/entity/FileData;->verifyFile()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v8, v0, Lcom/transsion/transfer/impl/client/TransferClient;->s:Lcom/transsion/transfer/impl/client/TransferClient$h;

    invoke-virtual {v6}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/transsion/transfer/impl/TaskState;->FINISH:Lcom/transsion/transfer/impl/TaskState;

    invoke-virtual {v6}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    move-result-wide v11

    invoke-virtual {v6}, Lcom/transsion/transfer/impl/entity/FileData;->getFileSize()J

    move-result-wide v13

    const-wide/16 v15, -0x1

    const/16 v17, 0x0

    invoke-virtual/range {v8 .. v17}, Lcom/transsion/transfer/impl/client/TransferClient$h;->I(Ljava/lang/String;Lcom/transsion/transfer/impl/TaskState;JJJLjava/lang/String;)V

    invoke-virtual {v6}, Lcom/transsion/transfer/impl/entity/FileData;->getFileRemotePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-nez v7, :cond_0

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v3}, Lcom/transsion/transfer/impl/client/TransferClient;->o0(Ljava/util/List;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transferFiles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/transsion/transfer/impl/client/TransferClient;->e0()Lcom/transsion/transfer/impl/client/o;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/transsion/transfer/impl/client/o;->p(Ljava/util/List;)V

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->m:Ljava/lang/String;

    return-object v0
.end method

.method public k(Lcom/transsion/transfer/impl/f;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/transsion/transfer/impl/client/TransferClient;->r:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
