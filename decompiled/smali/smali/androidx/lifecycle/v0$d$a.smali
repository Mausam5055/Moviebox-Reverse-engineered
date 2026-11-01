.class public final Landroidx/lifecycle/v0$d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/v0$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/v0$d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/v0$d;
    .locals 1

    invoke-static {}, Landroidx/lifecycle/v0$d;->a()Landroidx/lifecycle/v0$d;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/v0$d;

    invoke-direct {v0}, Landroidx/lifecycle/v0$d;-><init>()V

    invoke-static {v0}, Landroidx/lifecycle/v0$d;->b(Landroidx/lifecycle/v0$d;)V

    :cond_0
    invoke-static {}, Landroidx/lifecycle/v0$d;->a()Landroidx/lifecycle/v0$d;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    return-object v0
.end method
