.class public Lj7/a;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lj7/a;


# instance fields
.field private a:Lj7/b;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj7/a;

    invoke-direct {v0}, Lj7/a;-><init>()V

    sput-object v0, Lj7/a;->c:Lj7/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const-string v0, "AdxPreferencesHelper"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lj7/a;->b:Z

    :try_start_0
    invoke-direct {p0}, Lj7/a;->a()Z

    move-result v1

    iput-boolean v1, p0, Lj7/a;->b:Z

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mmkv is available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lj7/a;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lj7/a;->b:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lj7/b;->c()Lj7/b;

    move-result-object v1

    iput-object v1, p0, Lj7/a;->a:Lj7/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v1

    const-string v2, "init mmkv error, com.tencent.mmkv.MMKV not found!"

    invoke-virtual {v1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lj7/a;->a:Lj7/b;

    :goto_0
    return-void
.end method

.method private a()Z
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    sget v1, Lcom/tencent/mmkv/MMKV;->j:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x23

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lj7/b;->c()Lj7/b;

    move-result-object v1

    invoke-virtual {v1}, Lj7/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mmkvVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdxPreferencesHelper"

    invoke-virtual {v2, v5, v4}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "v0."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    :try_start_1
    const-string v2, "v1."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v6, 0x2

    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v2, v4, :cond_2

    if-ne v2, v4, :cond_3

    const/16 v2, 0xe

    if-lt v1, v2, :cond_3

    :cond_2
    move v0, v3

    :cond_3
    return v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    return v3

    :goto_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMMKVAvailable error, e= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v5, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    :catch_0
    return v0
.end method

.method public static e()Lj7/a;
    .locals 1

    sget-object v0, Lj7/a;->c:Lj7/a;

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    iget-object v0, p0, Lj7/a;->a:Lj7/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lj7/b;->a()V

    goto :goto_0

    :cond_0
    const-string v0, "hisavana_sdk"

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cloud/sdk/commonutil/util/i;->b()V

    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lj7/a;->d(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lj7/a;->a:Lj7/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lj7/b;->b(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "hisavana_sdk"

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/i;->c(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lj7/a;->g(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public g(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lj7/a;->a:Lj7/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lj7/b;->d(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    const-string v0, "hisavana_sdk"

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/i;->e(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public h(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lj7/a;->i(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public i(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lj7/a;->a:Lj7/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lj7/b;->e(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-string v0, "hisavana_sdk"

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/i;->f(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lj7/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj7/a;->a:Lj7/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lj7/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "hisavana_sdk"

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/i;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)Ljava/util/Set;
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p1, v0}, Lj7/a;->m(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lj7/a;->a:Lj7/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lj7/b;->g(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "hisavana_sdk"

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/i;->h(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lj7/a;->b:Z

    return v0
.end method

.method public o(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lj7/a;->a:Lj7/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lj7/b;->i(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "hisavana_sdk"

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/i;->i(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public p(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lj7/a;->a:Lj7/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lj7/b;->j(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v0, "hisavana_sdk"

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/i;->j(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public q(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lj7/a;->a:Lj7/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lj7/b;->k(Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string v0, "hisavana_sdk"

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/i;->k(Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lj7/a;->a:Lj7/b;

    if-nez v0, :cond_0

    const-string v0, "hisavana_sdk"

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/i;->l(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lj7/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lj7/a;->a:Lj7/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lj7/b;->m(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "hisavana_sdk"

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloud/sdk/commonutil/util/i;->m(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
