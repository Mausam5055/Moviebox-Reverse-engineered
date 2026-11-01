.class final Landroidx/window/layout/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/window/layout/y;


# static fields
.field public static final a:Landroidx/window/layout/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/layout/m;

    invoke-direct {v0}, Landroidx/window/layout/m;-><init>()V

    sput-object v0, Landroidx/window/layout/m;->a:Landroidx/window/layout/m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/window/layout/x;)Landroidx/window/layout/x;
    .locals 1

    const-string v0, "tracker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
