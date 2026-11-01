.class public Ltc/a;
.super Ltc/e;


# static fields
.field private static final b:Lsc/a;


# instance fields
.field private final a:Lcom/google/firebase/perf/v1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsc/a;->e()Lsc/a;

    move-result-object v0

    sput-object v0, Ltc/a;->b:Lsc/a;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/perf/v1/c;)V
    .locals 0

    invoke-direct {p0}, Ltc/e;-><init>()V

    iput-object p1, p0, Ltc/a;->a:Lcom/google/firebase/perf/v1/c;

    return-void
.end method

.method private g()Z
    .locals 3

    iget-object v0, p0, Ltc/a;->a:Lcom/google/firebase/perf/v1/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Ltc/a;->b:Lsc/a;

    const-string v2, "ApplicationInfo is null"

    invoke-virtual {v0, v2}, Lsc/a;->j(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c;->s()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ltc/a;->b:Lsc/a;

    const-string v2, "GoogleAppId is null"

    invoke-virtual {v0, v2}, Lsc/a;->j(Ljava/lang/String;)V

    return v1

    :cond_1
    iget-object v0, p0, Ltc/a;->a:Lcom/google/firebase/perf/v1/c;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c;->q()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ltc/a;->b:Lsc/a;

    const-string v2, "AppInstanceId is null"

    invoke-virtual {v0, v2}, Lsc/a;->j(Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object v0, p0, Ltc/a;->a:Lcom/google/firebase/perf/v1/c;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c;->r()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ltc/a;->b:Lsc/a;

    const-string v2, "ApplicationProcessState is null"

    invoke-virtual {v0, v2}, Lsc/a;->j(Ljava/lang/String;)V

    return v1

    :cond_3
    iget-object v0, p0, Ltc/a;->a:Lcom/google/firebase/perf/v1/c;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltc/a;->a:Lcom/google/firebase/perf/v1/c;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c;->m()Lcom/google/firebase/perf/v1/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/a;->l()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ltc/a;->b:Lsc/a;

    const-string v2, "AndroidAppInfo.packageName is null"

    invoke-virtual {v0, v2}, Lsc/a;->j(Ljava/lang/String;)V

    return v1

    :cond_4
    iget-object v0, p0, Ltc/a;->a:Lcom/google/firebase/perf/v1/c;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/c;->m()Lcom/google/firebase/perf/v1/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/a;->m()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Ltc/a;->b:Lsc/a;

    const-string v2, "AndroidAppInfo.sdkVersion is null"

    invoke-virtual {v0, v2}, Lsc/a;->j(Ljava/lang/String;)V

    return v1

    :cond_5
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public c()Z
    .locals 2

    invoke-direct {p0}, Ltc/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ltc/a;->b:Lsc/a;

    const-string v1, "ApplicationInfo is invalid"

    invoke-virtual {v0, v1}, Lsc/a;->j(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
