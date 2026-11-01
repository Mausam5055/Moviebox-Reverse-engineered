.class public final Lgk/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lgk/a;

.field private static b:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lgk/a;

    invoke-direct {v0}, Lgk/a;-><init>()V

    sput-object v0, Lgk/a;->a:Lgk/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)I
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lgk/a;->b:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    sput-object p1, Lgk/a;->b:Landroid/util/DisplayMetrics;

    :cond_0
    sget-object p1, Lgk/a;->b:Landroid/util/DisplayMetrics;

    if-eqz p1, :cond_1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
