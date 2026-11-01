.class public Lrc/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/firebase/f;

.field private final b:Ljc/e;

.field private final c:Lic/b;

.field private final d:Lic/b;


# direct methods
.method public constructor <init>(Lcom/google/firebase/f;Ljc/e;Lic/b;Lic/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrc/a;->a:Lcom/google/firebase/f;

    iput-object p2, p0, Lrc/a;->b:Ljc/e;

    iput-object p3, p0, Lrc/a;->c:Lic/b;

    iput-object p4, p0, Lrc/a;->d:Lic/b;

    return-void
.end method


# virtual methods
.method a()Lcom/google/firebase/perf/config/a;
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/config/a;->g()Lcom/google/firebase/perf/config/a;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/google/firebase/f;
    .locals 1

    iget-object v0, p0, Lrc/a;->a:Lcom/google/firebase/f;

    return-object v0
.end method

.method c()Ljc/e;
    .locals 1

    iget-object v0, p0, Lrc/a;->b:Ljc/e;

    return-object v0
.end method

.method d()Lic/b;
    .locals 1

    iget-object v0, p0, Lrc/a;->c:Lic/b;

    return-object v0
.end method

.method e()Lcom/google/firebase/perf/config/RemoteConfigManager;
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getInstance()Lcom/google/firebase/perf/config/RemoteConfigManager;

    move-result-object v0

    return-object v0
.end method

.method f()Lcom/google/firebase/perf/session/SessionManager;
    .locals 1

    invoke-static {}, Lcom/google/firebase/perf/session/SessionManager;->getInstance()Lcom/google/firebase/perf/session/SessionManager;

    move-result-object v0

    return-object v0
.end method

.method g()Lic/b;
    .locals 1

    iget-object v0, p0, Lrc/a;->d:Lic/b;

    return-object v0
.end method
