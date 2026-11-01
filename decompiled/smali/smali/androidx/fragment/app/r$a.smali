.class Landroidx/fragment/app/r$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/v0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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

    new-instance p1, Landroidx/fragment/app/r;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/fragment/app/r;-><init>(Z)V

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
