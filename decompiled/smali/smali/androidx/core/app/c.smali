.class public abstract Landroidx/core/app/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/c$a;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;II)Landroidx/core/app/c;
    .locals 1

    new-instance v0, Landroidx/core/app/c$a;

    invoke-static {p0, p1, p2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/app/c$a;-><init>(Landroid/app/ActivityOptions;)V

    return-object v0
.end method

.method public static varargs b(Landroid/app/Activity;[Landroidx/core/util/e;)Landroidx/core/app/c;
    .locals 4

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [Landroid/util/Pair;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    iget-object v3, v2, Landroidx/core/util/e;->a:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    iget-object v2, v2, Landroidx/core/util/e;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    new-instance p1, Landroidx/core/app/c$a;

    invoke-static {p0, v0}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/core/app/c$a;-><init>(Landroid/app/ActivityOptions;)V

    return-object p1
.end method


# virtual methods
.method public abstract c()Landroid/os/Bundle;
.end method
