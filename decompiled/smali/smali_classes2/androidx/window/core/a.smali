.class public final Landroidx/window/core/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/window/core/e;


# static fields
.field public static final a:Landroidx/window/core/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/core/a;

    invoke-direct {v0}, Landroidx/window/core/a;-><init>()V

    sput-object v0, Landroidx/window/core/a;->a:Landroidx/window/core/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "message"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
