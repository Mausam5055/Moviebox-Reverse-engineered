.class final Lcom/google/firebase/sessions/c$c;
.super Ljava/lang/Object;

# interfaces
.implements Lbc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final a:Lcom/google/firebase/sessions/c$c;

.field private static final b:Lbc/b;

.field private static final c:Lbc/b;

.field private static final d:Lbc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/sessions/c$c;

    invoke-direct {v0}, Lcom/google/firebase/sessions/c$c;-><init>()V

    sput-object v0, Lcom/google/firebase/sessions/c$c;->a:Lcom/google/firebase/sessions/c$c;

    const-string v0, "performance"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$c;->b:Lbc/b;

    const-string v0, "crashlytics"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$c;->c:Lbc/b;

    const-string v0, "sessionSamplingRate"

    invoke-static {v0}, Lbc/b;->d(Ljava/lang/String;)Lbc/b;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/sessions/c$c;->d:Lbc/b;

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

    check-cast p1, Lcom/google/firebase/sessions/d;

    check-cast p2, Lbc/d;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/sessions/c$c;->b(Lcom/google/firebase/sessions/d;Lbc/d;)V

    return-void
.end method

.method public b(Lcom/google/firebase/sessions/d;Lbc/d;)V
    .locals 3

    sget-object v0, Lcom/google/firebase/sessions/c$c;->b:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/d;->b()Lcom/google/firebase/sessions/DataCollectionState;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$c;->c:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/d;->a()Lcom/google/firebase/sessions/DataCollectionState;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lbc/d;->e(Lbc/b;Ljava/lang/Object;)Lbc/d;

    sget-object v0, Lcom/google/firebase/sessions/c$c;->d:Lbc/b;

    invoke-virtual {p1}, Lcom/google/firebase/sessions/d;->c()D

    move-result-wide v1

    invoke-interface {p2, v0, v1, v2}, Lbc/d;->c(Lbc/b;D)Lbc/d;

    return-void
.end method
