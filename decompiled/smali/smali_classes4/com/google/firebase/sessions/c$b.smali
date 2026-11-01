.class final Lcom/google/firebase/sessions/c$b;
.super Ljava/lang/Object;

# interfaces
.implements Lbc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final a:Lcom/google/firebase/sessions/c$b;

.field private static final b:Lbc/b;

.field private static final c:Lbc/b;

.field private static final d:Lbc/b;

.field private static final e:Lbc/b;

.field private static final f:Lbc/b;

.field private static final g:Lbc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/c$b;

    invoke-direct {v0}, Lcom/google/firebase/sessions/c$b;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/c$b;->a:Lcom/google/firebase/sessions/c$b;

    const-string v0, "appId"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$b;->b:Lbc/b;

    const-string v0, "deviceModel"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$b;->c:Lbc/b;

    const-string v0, "sessionSdkVersion"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$b;->d:Lbc/b;

    const-string v0, "osVersion"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$b;->e:Lbc/b;

    const-string v0, "logEnvironment"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$b;->f:Lbc/b;

    const-string v0, "androidAppInfo"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$b;->g:Lbc/b;

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

    check-cast p1, Lcom/google/firebase/sessions/b;

    check-cast p2, Lbc/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/c$b;->b(Lcom/google/firebase/sessions/b;Lbc/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/sessions/b;Lbc/d;)V
    .locals 2

    sget-object v0, Lcom/google/firebase/sessions/c$b;->b:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$b;->c:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$b;->d:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$b;->e:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$b;->f:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/b;->d()Lcom/google/firebase/sessions/LogEnvironment;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$b;->g:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/b;->a()Lcom/google/firebase/sessions/a;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    return-void
.end method
