.class public final Lcom/transsion/payment/lib/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/payment/lib/f$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/transsion/payment/lib/f$a;

.field private static final c:Lkotlin/Lazy;


# instance fields
.field private a:Lcom/transsion/payment/lib/strategy/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/transsion/payment/lib/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/payment/lib/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/payment/lib/f;->b:Lcom/transsion/payment/lib/f$a;

    new-instance v0, Lcom/transsion/payment/lib/e;

    invoke-direct {v0}, Lcom/transsion/payment/lib/e;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/payment/lib/f;->c:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lyg/b;->a:Lyg/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lyg/b$a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gp"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/transsion/payment/lib/strategy/GoogleStrategy;

    invoke-direct {v1}, Lcom/transsion/payment/lib/strategy/GoogleStrategy;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;

    invoke-direct {v1}, Lcom/transsion/payment/lib/strategy/PaynicornStrategy;-><init>()V

    :goto_0
    iput-object v1, p0, Lcom/transsion/payment/lib/f;->a:Lcom/transsion/payment/lib/strategy/g;

    sget-object v2, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PaymentManager() --> init{} --> channel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -- payStrategy = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/payment/lib/f;
    .locals 1

    invoke-static {}, Lcom/transsion/payment/lib/f;->d()Lcom/transsion/payment/lib/f;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic b()Lkotlin/Lazy;
    .locals 1

    sget-object v0, Lcom/transsion/payment/lib/f;->c:Lkotlin/Lazy;

    return-object v0
.end method

.method private final c()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/transsion/payment/lib/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSimpleName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final d()Lcom/transsion/payment/lib/f;
    .locals 1

    new-instance v0, Lcom/transsion/payment/lib/f;

    invoke-direct {v0}, Lcom/transsion/payment/lib/f;-><init>()V

    return-object v0
.end method

.method public static synthetic f(Lcom/transsion/payment/lib/f;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLjava/util/Map;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    move v8, v1

    goto :goto_2

    :cond_2
    move/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    move-object v11, v2

    goto :goto_4

    :cond_4
    move-object/from16 v11, p8

    :goto_4
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v10, p7

    invoke-virtual/range {v3 .. v11}, Lcom/transsion/payment/lib/f;->e(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLjava/util/Map;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final e(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;ZLjava/util/Map;Lcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payCallback"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/transsion/payment/lib/bean/CreateOrderReq;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/transsion/payment/lib/bean/CreateOrderReq;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/Double;)V

    sget-object p2, Lyg/b;->a:Lyg/b$a;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object p3

    const-string p4, "getApp(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lyg/b$a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/transsion/payment/lib/d;->a:Lcom/transsion/payment/lib/d;

    invoke-direct {p0}, Lcom/transsion/payment/lib/f;->c()Ljava/lang/String;

    move-result-object p4

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " --> requestPay() --> channel = "

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " --> orderReq = "

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/transsion/payment/lib/d;->a(Ljava/lang/String;)V

    const-string p3, "gp"

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/transsion/payment/lib/f;->a:Lcom/transsion/payment/lib/strategy/g;

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, v0

    move v4, p5

    move-object v5, p7

    move-object v6, p8

    invoke-interface/range {v1 .. v6}, Lcom/transsion/payment/lib/strategy/g;->b(Landroidx/appcompat/app/AppCompatActivity;Lcom/transsion/payment/lib/bean/CreateOrderReq;ZLcom/transsion/payment/lib/b;Lkotlin/jvm/functions/Function1;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;

    invoke-direct {p2}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;-><init>()V

    invoke-virtual {p2, p7}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->S0(Lcom/transsion/payment/lib/b;)V

    invoke-virtual {p2, v0}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->U0(Lcom/transsion/payment/lib/bean/CreateOrderReq;)V

    invoke-virtual {p2, p8}, Lcom/transsion/payment/lib/dialog/PaynicornDuringThePaymentDialog;->T0(Lkotlin/jvm/functions/Function1;)V

    const-string p3, "PaynicornDuringThePaymentDialog"

    invoke-virtual {p2, p1, p3}, Lcom/transsion/baseui/dialog/BaseDialog;->k0(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/payment/lib/f;->a:Lcom/transsion/payment/lib/strategy/g;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    invoke-interface {v1, v0}, Lcom/transsion/payment/lib/strategy/g;->init(Landroid/app/Application;)V

    :cond_0
    return-void
.end method
