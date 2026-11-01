.class public Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;Lmb/e;)Lob/a;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;->b(Lmb/e;)Lob/a;

    move-result-object p0

    return-object p0
.end method

.method private b(Lmb/e;)Lob/a;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p1, v0}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lob/f;->g(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/ndk/c;->f(Landroid/content/Context;Z)Lcom/google/firebase/crashlytics/ndk/c;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4

    const-class v0, Lob/a;

    invoke-static {v0}, Lmb/c;->c(Ljava/lang/Class;)Lmb/c$b;

    move-result-object v0

    const-string v1, "fire-cls-ndk"

    invoke-virtual {v0, v1}, Lmb/c$b;->h(Ljava/lang/String;)Lmb/c$b;

    move-result-object v0

    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    new-instance v2, Lyb/a;

    invoke-direct {v2, p0}, Lyb/a;-><init>(Lcom/google/firebase/crashlytics/ndk/CrashlyticsNdkRegistrar;)V

    invoke-virtual {v0, v2}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->e()Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->d()Lmb/c;

    move-result-object v0

    const-string v2, "19.3.0"

    invoke-static {v1, v2}, Lxc/h;->b(Ljava/lang/String;Ljava/lang/String;)Lmb/c;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lmb/c;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
