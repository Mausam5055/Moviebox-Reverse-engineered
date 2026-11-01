.class public Lcom/android/volley/toolbox/o;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/android/volley/h;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/o;->c(Landroid/content/Context;Lcom/android/volley/toolbox/a;)Lcom/android/volley/h;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Lcom/android/volley/f;)Lcom/android/volley/h;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/android/volley/toolbox/o$a;

    invoke-direct {v0, p0}, Lcom/android/volley/toolbox/o$a;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/android/volley/h;

    new-instance v1, Lcom/android/volley/toolbox/c;

    invoke-direct {v1, v0}, Lcom/android/volley/toolbox/c;-><init>(Lcom/android/volley/toolbox/c$c;)V

    invoke-direct {p0, v1, p1}, Lcom/android/volley/h;-><init>(Lcom/android/volley/c;Lcom/android/volley/f;)V

    invoke-virtual {p0}, Lcom/android/volley/h;->g()V

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/android/volley/toolbox/a;)Lcom/android/volley/h;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/volley/toolbox/b;

    new-instance v0, Lcom/android/volley/toolbox/g;

    invoke-direct {v0}, Lcom/android/volley/toolbox/g;-><init>()V

    invoke-direct {p1, v0}, Lcom/android/volley/toolbox/b;-><init>(Lcom/android/volley/toolbox/a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/volley/toolbox/b;

    invoke-direct {v0, p1}, Lcom/android/volley/toolbox/b;-><init>(Lcom/android/volley/toolbox/a;)V

    move-object p1, v0

    :goto_0
    invoke-static {p0, p1}, Lcom/android/volley/toolbox/o;->b(Landroid/content/Context;Lcom/android/volley/f;)Lcom/android/volley/h;

    move-result-object p0

    return-object p0
.end method
