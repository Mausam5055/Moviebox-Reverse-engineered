.class public final Lcom/transsion/startup/StartupManager;
.super Ljava/lang/Object;

# interfaces
.implements Ldz/a;
.implements Lnh/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/startup/StartupManager$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/transsion/startup/StartupManager$a;

.field private static final h:Lkotlin/Lazy;


# instance fields
.field private a:Z

.field private final b:Ljava/util/List;

.field private c:Landroid/app/Application;

.field private final d:Lkotlin/Lazy;

.field private final e:Lkotlin/Lazy;

.field private final f:Lkotlinx/coroutines/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/startup/StartupManager$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/startup/StartupManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/startup/StartupManager;->g:Lcom/transsion/startup/StartupManager$a;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/transsion/startup/b;

    invoke-direct {v1}, Lcom/transsion/startup/b;-><init>()V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/startup/StartupManager;->h:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/startup/StartupManager;->b:Ljava/util/List;

    new-instance v0, Lcom/transsion/startup/c;

    invoke-direct {v0}, Lcom/transsion/startup/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/startup/StartupManager;->d:Lkotlin/Lazy;

    new-instance v0, Lcom/transsion/startup/d;

    invoke-direct {v0}, Lcom/transsion/startup/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/startup/StartupManager;->e:Lkotlin/Lazy;

    invoke-static {}, Lkotlinx/coroutines/y0;->b()Lkotlinx/coroutines/i0;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v1}, Lkotlinx/coroutines/l2;->b(Lkotlinx/coroutines/t1;ILjava/lang/Object;)Lkotlinx/coroutines/z;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/o0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/n0;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/startup/StartupManager;->f:Lkotlinx/coroutines/n0;

    return-void
.end method

.method private final native B()V
.end method

.method private final native C(Landroid/content/Context;)V
.end method

.method private final native D()V
.end method

.method private static final native E()Lcom/transsion/startup/a;
.end method

.method private final native F(Ljava/util/List;)Ljava/lang/String;
.end method

.method private final native G()Lcom/transsion/startup/a;
.end method

.method private final native H()Lyt/a;
.end method

.method private final native I()V
.end method

.method private final native J()V
.end method

.method private final native K()V
.end method

.method private final native L()V
.end method

.method private static final native M(Lcom/transsion/startup/StartupManager;ZLcom/google/firebase/remoteconfig/a;)Lkotlin/Unit;
.end method

.method private final native N()V
.end method

.method private final native O()V
.end method

.method private final native P()V
.end method

.method private final native Q(Z)V
.end method

.method private final native R()V
.end method

.method private final native S()V
.end method

.method private final native T()V
.end method

.method private final native U()V
.end method

.method private final native W()V
.end method

.method private final native X()V
.end method

.method private final native Y()V
.end method

.method private final native Z(Landroid/app/Application;ZLhj/j;Ljava/lang/String;Z)V
.end method

.method public static synthetic a()Lyt/a;
    .locals 1

    invoke-static {}, Lcom/transsion/startup/StartupManager;->e0()Lyt/a;

    move-result-object v0

    return-object v0
.end method

.method private final native a0()V
.end method

.method public static synthetic b()Lcom/transsion/startup/a;
    .locals 1

    invoke-static {}, Lcom/transsion/startup/StartupManager;->E()Lcom/transsion/startup/a;

    move-result-object v0

    return-object v0
.end method

.method private final native b0()V
.end method

.method public static synthetic c(Lcom/transsion/startup/StartupManager;ZLcom/google/firebase/remoteconfig/a;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/transsion/startup/StartupManager;->M(Lcom/transsion/startup/StartupManager;ZLcom/google/firebase/remoteconfig/a;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d()Lcom/transsion/startup/StartupManager;
    .locals 1

    invoke-static {}, Lcom/transsion/startup/StartupManager;->e()Lcom/transsion/startup/StartupManager;

    move-result-object v0

    return-object v0
.end method

.method private static final native e()Lcom/transsion/startup/StartupManager;
.end method

.method private static final native e0()Lyt/a;
.end method

.method public static final synthetic f(Lcom/transsion/startup/StartupManager;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lcom/transsion/startup/StartupManager;->c:Landroid/app/Application;

    return-object p0
.end method

.method private final native f0()V
.end method

.method public static final synthetic g()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/startup/StartupManager;->h:Lkotlin/Lazy;

    return-object v0
.end method

.method private final native g0()V
.end method

.method public static final synthetic h(Lcom/transsion/startup/StartupManager;)Lyt/a;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->H()Lyt/a;

    move-result-object p0

    return-object p0
.end method

.method private final native h0()V
.end method

.method public static final synthetic i(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->I()V

    return-void
.end method

.method private final native i0()V
.end method

.method public static final synthetic j(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->K()V

    return-void
.end method

.method public static final synthetic k(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->P()V

    return-void
.end method

.method public static final synthetic l(Lcom/transsion/startup/StartupManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/startup/StartupManager;->Q(Z)V

    return-void
.end method

.method private final native l0(Lcom/google/firebase/remoteconfig/a;)V
.end method

.method public static final synthetic m(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->T()V

    return-void
.end method

.method private final native m0()V
.end method

.method public static final synthetic n(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->U()V

    return-void
.end method

.method private final native n0(Lokhttp3/OkHttpClient;)V
.end method

.method public static final synthetic o(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->W()V

    return-void
.end method

.method private final native o0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end method

.method public static final synthetic p(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->X()V

    return-void
.end method

.method public static final synthetic q(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->a0()V

    return-void
.end method

.method public static final synthetic r(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->f0()V

    return-void
.end method

.method public static final synthetic s(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->g0()V

    return-void
.end method

.method public static final synthetic t(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->h0()V

    return-void
.end method

.method public static final synthetic u(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->i0()V

    return-void
.end method

.method public static final synthetic v(Lcom/transsion/startup/StartupManager;Lcom/google/firebase/remoteconfig/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/startup/StartupManager;->l0(Lcom/google/firebase/remoteconfig/a;)V

    return-void
.end method

.method public static final synthetic w(Lcom/transsion/startup/StartupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/startup/StartupManager;->m0()V

    return-void
.end method

.method public static final synthetic x(Lcom/transsion/startup/StartupManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/startup/StartupManager;->a:Z

    return-void
.end method

.method public static final synthetic y(Lcom/transsion/startup/StartupManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/startup/StartupManager;->o0(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final native A(Landroid/content/Context;)V
.end method

.method public final native V(Landroid/app/Application;)V
.end method

.method public final native c0(Landroid/app/Application;)V
.end method

.method public final native d0()Z
.end method

.method public final native j0(IZ)V
.end method

.method public final native k0(Lkotlin/jvm/functions/Function0;)V
.end method

.method public native onConnected()V
.end method

.method public native onConnected(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
.end method

.method public native onDisconnected()V
.end method

.method public native onLogin(Lcom/transsnet/loginapi/bean/UserInfo;)V
.end method

.method public native onLogout()V
.end method

.method public native onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
.end method

.method public final native p0(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
.end method

.method public final native z(Lkotlin/jvm/functions/Function0;)V
.end method
