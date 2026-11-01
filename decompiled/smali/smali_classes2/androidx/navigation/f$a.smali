.class public final Landroidx/navigation/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/v0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/t0;
    .locals 1

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Landroidx/navigation/f;

    invoke-direct {p1}, Landroidx/navigation/f;-><init>()V

    return-object p1
.end method

.method public synthetic create(Ljava/lang/Class;Lp1/a;)Landroidx/lifecycle/t0;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/lifecycle/w0;->b(Landroidx/lifecycle/v0$c;Ljava/lang/Class;Lp1/a;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1
.end method

.method public synthetic create(Lkotlin/reflect/KClass;Lp1/a;)Landroidx/lifecycle/t0;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/lifecycle/w0;->c(Landroidx/lifecycle/v0$c;Lkotlin/reflect/KClass;Lp1/a;)Landroidx/lifecycle/t0;

    move-result-object p1

    return-object p1
.end method
