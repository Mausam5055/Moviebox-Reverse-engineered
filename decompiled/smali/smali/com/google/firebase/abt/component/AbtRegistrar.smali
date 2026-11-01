.class public Lcom/google/firebase/abt/component/AbtRegistrar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-abt"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lmb/e;)Lcom/google/firebase/abt/component/a;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/abt/component/AbtRegistrar;->lambda$getComponents$0(Lmb/e;)Lcom/google/firebase/abt/component/a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lmb/e;)Lcom/google/firebase/abt/component/a;
    .locals 3

    new-instance v0, Lcom/google/firebase/abt/component/a;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, Lmb/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lkb/a;

    invoke-interface {p0, v2}, Lmb/e;->f(Ljava/lang/Class;)Lic/b;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/firebase/abt/component/a;-><init>(Landroid/content/Context;Lic/b;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmb/c;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/google/firebase/abt/component/a;

    invoke-static {v0}, Lmb/c;->c(Ljava/lang/Class;)Lmb/c$b;

    move-result-object v0

    const-string v1, "fire-abt"

    invoke-virtual {v0, v1}, Lmb/c$b;->h(Ljava/lang/String;)Lmb/c$b;

    move-result-object v0

    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Lmb/r;->k(Ljava/lang/Class;)Lmb/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    const-class v2, Lkb/a;

    invoke-static {v2}, Lmb/r;->i(Ljava/lang/Class;)Lmb/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmb/c$b;->b(Lmb/r;)Lmb/c$b;

    move-result-object v0

    new-instance v2, Lib/a;

    invoke-direct {v2}, Lib/a;-><init>()V

    invoke-virtual {v0, v2}, Lmb/c$b;->f(Lmb/h;)Lmb/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lmb/c$b;->d()Lmb/c;

    move-result-object v0

    const-string v2, "21.1.1"

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
