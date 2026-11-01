.class public final Lzm/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lzm/i;

.field private static final b:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzm/i;

    invoke-direct {v0}, Lzm/i;-><init>()V

    sput-object v0, Lzm/i;->a:Lzm/i;

    new-instance v0, Lzm/h;

    invoke-direct {v0}, Lzm/h;-><init>()V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lzm/i;->b:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Landroidx/lifecycle/b0;
    .locals 1

    invoke-static {}, Lzm/i;->c()Landroidx/lifecycle/b0;

    move-result-object v0

    return-object v0
.end method

.method private static final c()Landroidx/lifecycle/b0;
    .locals 1

    new-instance v0, Landroidx/lifecycle/b0;

    invoke-direct {v0}, Landroidx/lifecycle/b0;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Landroidx/lifecycle/b0;
    .locals 1

    sget-object v0, Lzm/i;->b:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/b0;

    return-object v0
.end method
