.class public final Lom/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lom/e;

.field private static final b:Lkotlin/Lazy;

.field private static final c:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lom/e;

    invoke-direct {v0}, Lom/e;-><init>()V

    sput-object v0, Lom/e;->a:Lom/e;

    new-instance v0, Lom/c;

    invoke-direct {v0}, Lom/c;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lom/e;->b:Lkotlin/Lazy;

    new-instance v0, Lom/d;

    invoke-direct {v0}, Lom/d;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lom/e;->c:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lom/a;
    .locals 1

    invoke-static {}, Lom/e;->c()Lom/a;

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic b()Lcom/tencent/mmkv/MMKV;
    .locals 1

    invoke-static {}, Lom/e;->e()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method

.method private static final c()Lom/a;
    .locals 2

    sget-object v0, Lzg/c;->e:Lzg/c$a;

    invoke-virtual {v0}, Lzg/c$a;->a()Lzg/c;

    move-result-object v0

    const-class v1, Lom/a;

    invoke-virtual {v0, v1}, Lzg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static final e()Lcom/tencent/mmkv/MMKV;
    .locals 1

    const-string v0, "mb_web_res"

    invoke-static {v0}, Lcom/tencent/mmkv/MMKV;->I(Ljava/lang/String;)Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 1

    sget-object v0, Lom/b;->a:Lom/b;

    invoke-virtual {v0}, Lom/b;->b()V

    return-void
.end method
