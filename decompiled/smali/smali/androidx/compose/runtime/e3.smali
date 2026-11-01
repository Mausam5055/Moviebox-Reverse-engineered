.class public final Landroidx/compose/runtime/e3;
.super Ljava/lang/Object;


# static fields
.field public static final a:Landroidx/compose/runtime/e3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/e3;

    invoke-direct {v0}, Landroidx/compose/runtime/e3;-><init>()V

    sput-object v0, Landroidx/compose/runtime/e3;->a:Landroidx/compose/runtime/e3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
