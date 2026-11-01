.class public final Lq1/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq1/g$a;
    }
.end annotation


# static fields
.field public static final a:Lq1/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq1/g;

    invoke-direct {v0}, Lq1/g;-><init>()V

    sput-object v0, Lq1/g;->a:Lq1/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/y0;)Lp1/a;
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroidx/lifecycle/m;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/lifecycle/m;

    invoke-interface {p1}, Landroidx/lifecycle/m;->getDefaultViewModelCreationExtras()Lp1/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lp1/a$a;->b:Lp1/a$a;

    :goto_0
    return-object p1
.end method

.method public final b(Landroidx/lifecycle/y0;)Landroidx/lifecycle/v0$c;
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Landroidx/lifecycle/m;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/lifecycle/m;

    invoke-interface {p1}, Landroidx/lifecycle/m;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/v0$c;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lq1/c;->a:Lq1/c;

    :goto_0
    return-object p1
.end method

.method public final c(Lkotlin/reflect/KClass;)Ljava/lang/String;
    .locals 2

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lq1/h;->a(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Landroidx/lifecycle/t0;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
