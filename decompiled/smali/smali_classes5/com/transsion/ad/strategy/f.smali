.class public final Lcom/transsion/ad/strategy/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/ad/strategy/f;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/ad/strategy/f;

    invoke-direct {v0}, Lcom/transsion/ad/strategy/f;-><init>()V

    sput-object v0, Lcom/transsion/ad/strategy/f;->a:Lcom/transsion/ad/strategy/f;

    new-instance v0, Lcom/transsion/ad/strategy/e;

    invoke-direct {v0}, Lcom/transsion/ad/strategy/e;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/ad/strategy/f;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lcom/transsion/ad/strategy/f;->d()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method private static final d()Lcom/tencent/mmkv/MMKV;
    .locals 2

    const-string v0, "one_room_advertising"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "mmkvWithID(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/ad/strategy/f;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/tencent/mmkv/MMKV;
    .locals 1

    sget-object v0, Lcom/transsion/ad/strategy/f;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method
