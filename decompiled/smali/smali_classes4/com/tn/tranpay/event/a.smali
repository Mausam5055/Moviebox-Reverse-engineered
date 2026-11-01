.class public final Lcom/tn/tranpay/event/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/tn/tranpay/event/a;

.field private static b:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tn/tranpay/event/a;

    invoke-direct {v0}, Lcom/tn/tranpay/event/a;-><init>()V

    sput-object v0, Lcom/tn/tranpay/event/a;->a:Lcom/tn/tranpay/event/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Application;
    .locals 2

    sget-object v0, Lcom/tn/tranpay/event/a;->b:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TranPay SDK must be initialized by calling TranPay.configure() first! Please ensure TranPay.configure() is called in Application.onCreate() for each process that uses the SDK."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/tn/tranpay/event/a;->b:Landroid/app/Application;

    return-void
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Lcom/tn/tranpay/event/a;->b:Landroid/app/Application;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
