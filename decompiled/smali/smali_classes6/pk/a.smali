.class public final Lpk/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lpk/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lpk/a;

    invoke-direct {v0}, Lpk/a;-><init>()V

    sput-object v0, Lpk/a;->a:Lpk/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/transsion/compressor/image/h$a;
    .locals 1

    invoke-static {p1}, Lcom/transsion/compressor/image/h;->h(Landroid/content/Context;)Lcom/transsion/compressor/image/h$a;

    move-result-object p1

    const-string v0, "with(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
