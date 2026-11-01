.class final Lcom/google/firebase/sessions/c$f;
.super Ljava/lang/Object;

# interfaces
.implements Lbc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# static fields
.field static final a:Lcom/google/firebase/sessions/c$f;

.field private static final b:Lbc/b;

.field private static final c:Lbc/b;

.field private static final d:Lbc/b;

.field private static final e:Lbc/b;

.field private static final f:Lbc/b;

.field private static final g:Lbc/b;

.field private static final h:Lbc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/c$f;

    invoke-direct {v0}, Lcom/google/firebase/sessions/c$f;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/c$f;->a:Lcom/google/firebase/sessions/c$f;

    const-string v0, "sessionId"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$f;->b:Lbc/b;

    const-string v0, "firstSessionId"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$f;->c:Lbc/b;

    const-string v0, "sessionIndex"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$f;->d:Lbc/b;

    const-string v0, "eventTimestampUs"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$f;->e:Lbc/b;

    const-string v0, "dataCollectionStatus"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$f;->f:Lbc/b;

    const-string v0, "firebaseInstallationId"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$f;->g:Lbc/b;

    const-string v0, "firebaseAuthenticationToken"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$f;->h:Lbc/b;

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

    check-cast p1, Lcom/google/firebase/sessions/x;

    check-cast p2, Lbc/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/c$f;->b(Lcom/google/firebase/sessions/x;Lbc/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/sessions/x;Lbc/d;)V
    .locals 3

    sget-object v0, Lcom/google/firebase/sessions/c$f;->b:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/x;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$f;->c:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/x;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$f;->d:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/x;->g()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lbc/d;->b(Lbc/b;I)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$f;->e:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/x;->b()J

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lbc/d;->a(Lbc/b;J)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$f;->f:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/x;->a()Lcom/google/firebase/sessions/d;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$f;->g:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/x;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$f;->h:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/x;->c()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    return-void
.end method
