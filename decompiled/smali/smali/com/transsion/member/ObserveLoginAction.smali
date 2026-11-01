.class public final Lcom/transsion/member/ObserveLoginAction;
.super Ljava/lang/Object;

# interfaces
.implements Ldz/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/member/ObserveLoginAction$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/member/ObserveLoginAction$a;

.field public static final d:I

.field private static final e:Lcom/transsion/member/ObserveLoginAction;


# instance fields
.field private final a:Lkotlin/Lazy;

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/member/ObserveLoginAction$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/member/ObserveLoginAction$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/member/ObserveLoginAction;->c:Lcom/transsion/member/ObserveLoginAction$a;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/member/ObserveLoginAction;->d:I

    new-instance v0, Lcom/transsion/member/ObserveLoginAction;

    invoke-direct {v0}, Lcom/transsion/member/ObserveLoginAction;-><init>()V

    sput-object v0, Lcom/transsion/member/ObserveLoginAction;->e:Lcom/transsion/member/ObserveLoginAction;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/transsion/member/w0;

    invoke-direct {v0}, Lcom/transsion/member/w0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/member/ObserveLoginAction;->a:Lkotlin/Lazy;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/member/ObserveLoginAction;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static synthetic a()Lcom/transsnet/loginapi/ILoginApi;
    .locals 1

    invoke-static {}, Lcom/transsion/member/ObserveLoginAction;->k()Lcom/transsnet/loginapi/ILoginApi;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b(Lcom/transsion/member/ObserveLoginAction;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/transsion/member/ObserveLoginAction;->l(Lcom/transsion/member/ObserveLoginAction;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()Lcom/transsion/member/ObserveLoginAction;
    .locals 1

    sget-object v0, Lcom/transsion/member/ObserveLoginAction;->e:Lcom/transsion/member/ObserveLoginAction;

    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/member/ObserveLoginAction;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/transsion/member/ObserveLoginAction;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method private final native f()V
.end method

.method private final native g()Ljava/lang/String;
.end method

.method private final native h()Lcom/transsnet/loginapi/ILoginApi;
.end method

.method private static final native k()Lcom/transsnet/loginapi/ILoginApi;
.end method

.method private static final native l(Lcom/transsion/member/ObserveLoginAction;)Lkotlin/Unit;
.end method

.method private final native m()V
.end method


# virtual methods
.method public final native e(Lzm/e;)V
.end method

.method public final native i()V
.end method

.method public final native j()V
.end method

.method public final native n(Lzm/e;)V
.end method

.method public native onLogin(Lcom/transsnet/loginapi/bean/UserInfo;)V
.end method

.method public native onLogout()V
.end method

.method public native onUpdateUserInfo(Lcom/transsnet/loginapi/bean/UserInfo;)V
.end method
