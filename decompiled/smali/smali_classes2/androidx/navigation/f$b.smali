.class public final Landroidx/navigation/f$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/navigation/f$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/x0;)Landroidx/navigation/f;
    .locals 2

    const-string v0, "viewModelStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/v0;

    invoke-static {}, Landroidx/navigation/f;->b()Landroidx/lifecycle/v0$c;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/x0;Landroidx/lifecycle/v0$c;)V

    const-class p1, Landroidx/navigation/f;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    move-result-object p1

    const-string v0, "get(VM::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/navigation/f;

    return-object p1
.end method
