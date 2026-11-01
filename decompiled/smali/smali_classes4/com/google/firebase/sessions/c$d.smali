.class final Lcom/google/firebase/sessions/c$d;
.super Ljava/lang/Object;

# interfaces
.implements Lbc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field static final a:Lcom/google/firebase/sessions/c$d;

.field private static final b:Lbc/b;

.field private static final c:Lbc/b;

.field private static final d:Lbc/b;

.field private static final e:Lbc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/c$d;

    invoke-direct {v0}, Lcom/google/firebase/sessions/c$d;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/c$d;->a:Lcom/google/firebase/sessions/c$d;

    const-string v0, "processName"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$d;->b:Lbc/b;

    const-string v0, "pid"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$d;->c:Lbc/b;

    const-string v0, "importance"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$d;->d:Lbc/b;

    const-string v0, "defaultProcess"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$d;->e:Lbc/b;

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

    check-cast p1, Lcom/google/firebase/sessions/p;

    check-cast p2, Lbc/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/c$d;->b(Lcom/google/firebase/sessions/p;Lbc/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/sessions/p;Lbc/d;)V
    .locals 2

    sget-object v0, Lcom/google/firebase/sessions/c$d;->b:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$d;->c:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/p;->b()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lbc/d;->b(Lbc/b;I)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$d;->d:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/p;->a()I

    move-result v1

    invoke-interface {p2, v0, v1}, Lbc/d;->b(Lbc/b;I)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$d;->e:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/p;->d()Z

    move-result p1

    invoke-interface {p2, v0, p1}, Lbc/d;->d(Lbc/b;Z)Lbc/d;

    return-void
.end method
