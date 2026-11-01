.class public final Lcom/transsion/base/image/blurhash/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/base/image/blurhash/e;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/base/image/blurhash/e;

    invoke-direct {v0}, Lcom/transsion/base/image/blurhash/e;-><init>()V

    sput-object v0, Lcom/transsion/base/image/blurhash/e;->a:Lcom/transsion/base/image/blurhash/e;

    new-instance v0, Lcom/transsion/base/image/blurhash/d;

    invoke-direct {v0}, Lcom/transsion/base/image/blurhash/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/base/image/blurhash/e;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/base/image/blurhash/BlurHash;
    .locals 1

    invoke-static {}, Lcom/transsion/base/image/blurhash/e;->b()Lcom/transsion/base/image/blurhash/BlurHash;

    move-result-object v0

    return-object v0
.end method

.method private static final b()Lcom/transsion/base/image/blurhash/BlurHash;
    .locals 4

    new-instance v0, Lcom/transsion/base/image/blurhash/BlurHash;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xa

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2, v3}, Lcom/transsion/base/image/blurhash/BlurHash;-><init>(Landroid/content/Context;IF)V

    return-object v0
.end method

.method public static synthetic d(Lcom/transsion/base/image/blurhash/e;Ljava/lang/String;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/16 v0, 0x14

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/base/image/blurhash/e;->c(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private final e()Lcom/transsion/base/image/blurhash/BlurHash;
    .locals 1

    sget-object v0, Lcom/transsion/base/image/blurhash/e;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/base/image/blurhash/BlurHash;

    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "blurString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/transsion/base/image/blurhash/e;->e()Lcom/transsion/base/image/blurhash/BlurHash;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/transsion/base/image/blurhash/BlurHash;->f(Ljava/lang/String;IILkotlin/jvm/functions/Function1;)V

    return-void
.end method
