.class public final Lcom/transsion/member/c0;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/transsion/member/c0;

.field private static final b:Lkotlin/Lazy;

.field public static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/member/c0;

    invoke-direct {v0}, Lcom/transsion/member/c0;-><init>()V

    sput-object v0, Lcom/transsion/member/c0;->a:Lcom/transsion/member/c0;

    new-instance v0, Lcom/transsion/member/b0;

    invoke-direct {v0}, Lcom/transsion/member/b0;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/transsion/member/c0;->b:Lkotlin/Lazy;

    const/16 v0, 0x8

    sput v0, Lcom/transsion/member/c0;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lcom/transsion/member/c0;->c()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method private static final c()Lcom/tencent/mmkv/MMKV;
    .locals 1

    const-string v0, "member_kv"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/tencent/mmkv/MMKV;
    .locals 1

    sget-object v0, Lcom/transsion/member/c0;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/mmkv/MMKV;

    return-object v0
.end method
