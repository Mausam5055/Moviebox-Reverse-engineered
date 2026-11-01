.class public Lrf/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Lrf/a;
    .locals 1

    invoke-static {p0}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object v0

    invoke-virtual {v0}, Lvf/a;->f()Lrf/a;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lvf/a;->x(Landroid/content/Context;)Lvf/a;

    move-result-object p0

    invoke-virtual {p0}, Lvf/a;->f()Lrf/a;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Lrf/b;

    invoke-direct {p0}, Lrf/b;-><init>()V

    return-object p0
.end method
