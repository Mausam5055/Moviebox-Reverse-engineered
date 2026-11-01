.class public Ltu/a;
.super Lsf/a;


# instance fields
.field private final c:J

.field private final d:Ljava/lang/String;

.field private e:Lou/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lou/a;->s()Lou/a;

    move-result-object v0

    invoke-virtual {v0}, Lou/a;->D()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ltu/a;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lsf/a;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    move-wide p2, v0

    :goto_0
    iput-wide p2, p0, Ltu/a;->c:J

    iput-object p4, p0, Ltu/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lsf/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const-string v3, "Tinker.CustomPatchListener"

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    aput-object p1, v1, v0

    const-string p1, "base patchCheck rejected: code=%d, path=%s"

    invoke-static {v3, p1, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/tencent/tinker/loader/shareutil/SharePatchFileUtil;->getFileOrDirectorySize(Ljava/io/File;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object v6, v7, v0

    const-string p1, "patch check: path=%s, size=%d"

    invoke-static {v3, p1, v7}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v6, p0, Ltu/a;->c:J

    const-wide/16 v8, 0x0

    cmp-long p1, v6, v8

    if-lez p1, :cond_1

    cmp-long p1, v4, v6

    if-lez p1, :cond_1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v4, p0, Ltu/a;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v0

    const-string p1, "patch size %d exceeds limit %d"

    invoke-static {v3, p1, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, -0x65

    return p1

    :cond_1
    invoke-static {p2}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerInternals;->fastGetPatchPackageMeta(Ljava/io/File;)Ljava/util/Properties;

    move-result-object p1

    const/16 p2, -0x64

    if-nez p1, :cond_2

    const-string p1, "patch package meta not found"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v3, p1, v0}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    :cond_2
    iget-object v4, p0, Ltu/a;->d:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v4, "platform"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v4, p0, Ltu/a;->d:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-object v4, p0, Ltu/a;->d:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v2

    aput-object p1, v1, v0

    const-string p1, "channel mismatch: expected=%s, platform=%s"

    invoke-static {v3, p1, v1}, Lcom/tencent/tinker/loader/shareutil/ShareTinkerLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p2

    :cond_4
    return v2
.end method

.method public f(Lou/c;)V
    .locals 0

    iput-object p1, p0, Ltu/a;->e:Lou/c;

    return-void
.end method
