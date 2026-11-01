.class public final Lpc/g;
.super Ljava/lang/Object;

# interfaces
.implements Luz/a;


# instance fields
.field private final a:Luz/a;

.field private final b:Luz/a;

.field private final c:Luz/a;

.field private final d:Luz/a;

.field private final e:Luz/a;

.field private final f:Luz/a;

.field private final g:Luz/a;


# direct methods
.method public constructor <init>(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpc/g;->a:Luz/a;

    iput-object p2, p0, Lpc/g;->b:Luz/a;

    iput-object p3, p0, Lpc/g;->c:Luz/a;

    iput-object p4, p0, Lpc/g;->d:Luz/a;

    iput-object p5, p0, Lpc/g;->e:Luz/a;

    iput-object p6, p0, Lpc/g;->f:Luz/a;

    iput-object p7, p0, Lpc/g;->g:Luz/a;

    return-void
.end method

.method public static a(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)Lpc/g;
    .locals 9

    new-instance v8, Lpc/g;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lpc/g;-><init>(Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;Luz/a;)V

    return-object v8
.end method

.method public static c(Lcom/google/firebase/f;Lic/b;Ljc/e;Lic/b;Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/config/a;Lcom/google/firebase/perf/session/SessionManager;)Lpc/e;
    .locals 9

    new-instance v8, Lpc/e;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lpc/e;-><init>(Lcom/google/firebase/f;Lic/b;Ljc/e;Lic/b;Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/config/a;Lcom/google/firebase/perf/session/SessionManager;)V

    return-object v8
.end method


# virtual methods
.method public b()Lpc/e;
    .locals 8

    iget-object v0, p0, Lpc/g;->a:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/firebase/f;

    iget-object v0, p0, Lpc/g;->b:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lic/b;

    iget-object v0, p0, Lpc/g;->c:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljc/e;

    iget-object v0, p0, Lpc/g;->d:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lic/b;

    iget-object v0, p0, Lpc/g;->e:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/firebase/perf/config/RemoteConfigManager;

    iget-object v0, p0, Lpc/g;->f:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/firebase/perf/config/a;

    iget-object v0, p0, Lpc/g;->g:Luz/a;

    invoke-interface {v0}, Luz/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/firebase/perf/session/SessionManager;

    invoke-static/range {v1 .. v7}, Lpc/g;->c(Lcom/google/firebase/f;Lic/b;Ljc/e;Lic/b;Lcom/google/firebase/perf/config/RemoteConfigManager;Lcom/google/firebase/perf/config/a;Lcom/google/firebase/perf/session/SessionManager;)Lpc/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lpc/g;->b()Lpc/e;

    move-result-object v0

    return-object v0
.end method
