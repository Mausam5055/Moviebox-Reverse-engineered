.class final Lcom/google/firebase/sessions/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/google/firebase/sessions/c$a;

.field private static final b:Lbc/b;

.field private static final c:Lbc/b;

.field private static final d:Lbc/b;

.field private static final e:Lbc/b;

.field private static final f:Lbc/b;

.field private static final g:Lbc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/c$a;

    invoke-direct {v0}, Lcom/google/firebase/sessions/c$a;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/c$a;->a:Lcom/google/firebase/sessions/c$a;

    const-string v0, "packageName"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$a;->b:Lbc/b;

    const-string v0, "versionName"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$a;->c:Lbc/b;

    const-string v0, "appBuildVersion"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$a;->d:Lbc/b;

    const-string v0, "deviceManufacturer"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$a;->e:Lbc/b;

    const-string v0, "currentProcessDetails"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$a;->f:Lbc/b;

    const-string v0, "appProcessDetails"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$a;->g:Lbc/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/firebase/sessions/a;

    check-cast p2, Lbc/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/c$a;->b(Lcom/google/firebase/sessions/a;Lbc/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/sessions/a;Lbc/d;)V
    .locals 2

    sget-object v0, Lcom/google/firebase/sessions/c$a;->b:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$a;->c:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$a;->d:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$a;->e:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$a;->f:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/a;->c()Lcom/google/firebase/sessions/p;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$a;->g:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/a;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    return-void
.end method
