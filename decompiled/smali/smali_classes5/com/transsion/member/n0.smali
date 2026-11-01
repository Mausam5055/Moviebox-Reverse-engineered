.class public final Lcom/transsion/member/n0;
.super Landroidx/lifecycle/b;


# instance fields
.field private final b:Lkotlin/Lazy;

.field private final c:Landroidx/lifecycle/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    new-instance p1, Lcom/transsion/member/m0;

    invoke-direct {p1}, Lcom/transsion/member/m0;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/member/n0;->b:Lkotlin/Lazy;

    new-instance p1, Landroidx/lifecycle/b0;

    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    iput-object p1, p0, Lcom/transsion/member/n0;->c:Landroidx/lifecycle/b0;

    return-void
.end method

.method public static synthetic c()Lvm/a;
    .locals 1

    invoke-static {}, Lcom/transsion/member/n0;->g()Lvm/a;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/member/n0;)Landroidx/lifecycle/b0;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/n0;->c:Landroidx/lifecycle/b0;

    return-object p0
.end method

.method private final f()Lvm/a;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/n0;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvm/a;

    return-object v0
.end method

.method private static final g()Lvm/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lvm/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvm/a;

    return-object v0
.end method


# virtual methods
.method public final e()Landroidx/lifecycle/LiveData;
    .locals 1

    iget-object v0, p0, Lcom/transsion/member/n0;->c:Landroidx/lifecycle/b0;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 3

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/member/n0;->f()Lvm/a;

    move-result-object v0

    new-instance v1, Lcom/transsion/member/bean/request/MemberPromoCodeReq;

    invoke-direct {v1, p1}, Lcom/transsion/member/bean/request/MemberPromoCodeReq;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, p1, v2}, Lvm/a$a;->l(Lvm/a;Ljava/lang/String;Lcom/transsion/member/bean/request/MemberPromoCodeReq;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    sget-object v0, Lsg/d;->a:Lsg/d;

    invoke-virtual {v0}, Lsg/d;->c()Lio/reactivex/rxjava3/core/n;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    move-result-object p1

    new-instance v0, Lcom/transsion/member/n0$a;

    invoke-direct {v0, p0}, Lcom/transsion/member/n0$a;-><init>(Lcom/transsion/member/n0;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    return-void
.end method
