.class final Landroidx/work/impl/utils/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/work/impl/utils/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/utils/a;

    invoke-direct {v0}, Landroidx/work/impl/utils/a;-><init>()V

    sput-object v0, Landroidx/work/impl/utils/a;->a:Landroidx/work/impl/utils/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getProcessName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
