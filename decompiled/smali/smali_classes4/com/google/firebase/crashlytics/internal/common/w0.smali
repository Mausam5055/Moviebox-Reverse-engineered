.class public Lcom/google/firebase/crashlytics/internal/common/w0;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/firebase/crashlytics/internal/common/z;

.field private final b:Lvb/e;

.field private final c:Lcom/google/firebase/crashlytics/internal/send/b;

.field private final d:Lrb/e;

.field private final e:Lrb/o;

.field private final f:Lcom/google/firebase/crashlytics/internal/common/g0;

.field private final g:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/z;Lvb/e;Lcom/google/firebase/crashlytics/internal/send/b;Lrb/e;Lrb/o;Lcom/google/firebase/crashlytics/internal/common/g0;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->a:Lcom/google/firebase/crashlytics/internal/common/z;

    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->b:Lvb/e;

    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->c:Lcom/google/firebase/crashlytics/internal/send/b;

    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->d:Lrb/e;

    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->e:Lrb/o;

    iput-object p6, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->f:Lcom/google/firebase/crashlytics/internal/common/g0;

    iput-object p7, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->g:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/crashlytics/internal/common/w0;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/common/w0;->q(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/google/firebase/crashlytics/internal/common/w0;Lcom/google/android/gms/tasks/Task;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/w0;->t(Lcom/google/android/gms/tasks/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/w0;->p(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;)I

    move-result p0

    return p0
.end method

.method private d(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;Lrb/e;Lrb/o;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;
    .locals 2

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;->h()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$b;

    move-result-object v0

    invoke-virtual {p2}, Lrb/e;->c()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$d;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$d$a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$d$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$d$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$d$a;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$d;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$b;->d(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$d;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$b;

    goto :goto_0

    :cond_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p2

    const-string v1, "No log data to include with this event."

    invoke-virtual {p2, v1}, Lob/g;->i(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p3}, Lrb/o;->g()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/w0;->n(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p3}, Lrb/o;->h()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3}, Lcom/google/firebase/crashlytics/internal/common/w0;->n(Ljava/util/Map;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;->b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a;->i()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$a;->e(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$a;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$a;->g(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a$a;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$b;->b(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$a;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$b;

    :cond_2
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$b;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;

    move-result-object p1

    return-object p1
.end method

.method private e(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->d:Lrb/e;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->e:Lrb/o;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/w0;->d(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;Lrb/e;Lrb/o;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->e:Lrb/o;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/common/w0;->f(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;Lrb/o;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;

    move-result-object p1

    return-object p1
.end method

.method private f(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;Lrb/o;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;
    .locals 1

    invoke-virtual {p2}, Lrb/o;->i()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;->h()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$b;

    move-result-object p1

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$f;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$f$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$f$a;->b(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$f$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$f$a;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$b;->e(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$f;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$b;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d$b;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;

    move-result-object p1

    return-object p1
.end method

.method private static g(Landroid/app/ApplicationExitInfo;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/m0;->a(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/w0;->h(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get input trace in application exit info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/n0;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lob/g;->k(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object v1

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/o0;->a(Landroid/app/ApplicationExitInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->c(I)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object v1

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/p0;->a(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->e(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object v1

    invoke-static {p0}, Landroidx/work/impl/utils/j;->a(Landroid/app/ApplicationExitInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->g(I)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object v1

    invoke-static {p0}, Landroidx/work/impl/utils/k;->a(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->i(J)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object v1

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/q0;->a(Landroid/app/ApplicationExitInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->d(I)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object v1

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/r0;->a(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->f(J)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object v1

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/s0;->a(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->h(J)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->j(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a$b;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/g0;Lvb/g;Lcom/google/firebase/crashlytics/internal/common/a;Lrb/e;Lrb/o;Lxb/d;Lwb/b;Lcom/google/firebase/crashlytics/internal/common/l0;Lcom/google/firebase/crashlytics/internal/common/k;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)Lcom/google/firebase/crashlytics/internal/common/w0;
    .locals 9

    move-object/from16 v6, p7

    new-instance v7, Lcom/google/firebase/crashlytics/internal/common/z;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/crashlytics/internal/common/z;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/g0;Lcom/google/firebase/crashlytics/internal/common/a;Lxb/d;Lwb/b;)V

    new-instance v2, Lvb/e;

    move-object v0, p2

    move-object/from16 v1, p9

    invoke-direct {v2, p2, v6, v1}, Lvb/e;-><init>(Lvb/g;Lwb/b;Lcom/google/firebase/crashlytics/internal/common/k;)V

    move-object v0, p0

    move-object/from16 v1, p8

    invoke-static {p0, v6, v1}, Lcom/google/firebase/crashlytics/internal/send/b;->b(Landroid/content/Context;Lwb/b;Lcom/google/firebase/crashlytics/internal/common/l0;)Lcom/google/firebase/crashlytics/internal/send/b;

    move-result-object v3

    new-instance v8, Lcom/google/firebase/crashlytics/internal/common/w0;

    move-object v0, v8

    move-object v1, v7

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/crashlytics/internal/common/w0;-><init>(Lcom/google/firebase/crashlytics/internal/common/z;Lvb/e;Lcom/google/firebase/crashlytics/internal/send/b;Lrb/e;Lrb/o;Lcom/google/firebase/crashlytics/internal/common/g0;Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;)V

    return-object v8
.end method

.method private j(Lcom/google/firebase/crashlytics/internal/common/a0;)Lcom/google/firebase/crashlytics/internal/common/a0;
    .locals 3

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/a0;->b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/a0;->b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->f:Lcom/google/firebase/crashlytics/internal/common/g0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/common/g0;->d(Z)Lcom/google/firebase/crashlytics/internal/common/f0;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/a0;->b()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/f0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->t(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/f0;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->s(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/a0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/a0;->c()Ljava/io/File;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/common/a0;->a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;Ljava/lang/String;Ljava/io/File;)Lcom/google/firebase/crashlytics/internal/common/a0;

    move-result-object p1

    return-object p1
.end method

.method private m(Ljava/lang/String;Ljava/util/List;)Landroid/app/ApplicationExitInfo;
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->b:Lvb/e;

    invoke-virtual {v0, p1}, Lvb/e;->q(Ljava/lang/String;)J

    move-result-wide v0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/impl/utils/i;->a(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object p2

    invoke-static {p2}, Landroidx/work/impl/utils/k;->a(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-gez v3, :cond_0

    return-object v2

    :cond_0
    invoke-static {p2}, Landroidx/work/impl/utils/j;->a(Landroid/app/ApplicationExitInfo;)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    return-object v2
.end method

.method private static n(Ljava/util/Map;)Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c$a;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c$a;->b(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c$a;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c$a;->c(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c$a;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/v0;

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/common/v0;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic p(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private synthetic q(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;Ljava/lang/String;Z)V
    .locals 2

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "disk worker: log non-fatal event to persistence"

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->b:Lvb/e;

    invoke-virtual {v0, p1, p2, p3}, Lvb/e;->y(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;Ljava/lang/String;Z)V

    return-void
.end method

.method private t(Lcom/google/android/gms/tasks/Task;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/crashlytics/internal/common/a0;

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics report successfully enqueued to DataTransport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/a0;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/a0;->c()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted report file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lob/g;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics could not delete report file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lob/g;->k(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "Crashlytics report could not be enqueued to DataTransport"

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lob/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private u(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 12

    move-object v0, p0

    move-object v1, p3

    const-string v2, "crash"

    move-object/from16 v6, p4

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v0, Lcom/google/firebase/crashlytics/internal/common/w0;->a:Lcom/google/firebase/crashlytics/internal/common/z;

    const/4 v9, 0x4

    const/16 v10, 0x8

    move-object v4, p1

    move-object v5, p2

    move-wide/from16 v7, p5

    move/from16 v11, p7

    invoke-virtual/range {v3 .. v11}, Lcom/google/firebase/crashlytics/internal/common/z;->d(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;JIIZ)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/crashlytics/internal/common/w0;->e(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;

    move-result-object v3

    if-nez p7, :cond_0

    iget-object v4, v0, Lcom/google/firebase/crashlytics/internal/common/w0;->g:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    iget-object v4, v4, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->b:Lcom/google/firebase/crashlytics/internal/concurrency/e;

    new-instance v5, Lcom/google/firebase/crashlytics/internal/common/u0;

    invoke-direct {v5, p0, v3, p3, v2}, Lcom/google/firebase/crashlytics/internal/common/u0;-><init>(Lcom/google/firebase/crashlytics/internal/common/w0;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Lcom/google/firebase/crashlytics/internal/concurrency/e;->f(Ljava/lang/Runnable;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_0
    iget-object v4, v0, Lcom/google/firebase/crashlytics/internal/common/w0;->b:Lvb/e;

    invoke-virtual {v4, v3, p3, v2}, Lvb/e;->y(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public A(Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 5

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->b:Lvb/e;

    invoke-virtual {v0}, Lvb/e;->w()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/crashlytics/internal/common/a0;

    if-eqz p2, :cond_1

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/common/a0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->c:Lcom/google/firebase/crashlytics/internal/send/b;

    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/common/w0;->j(Lcom/google/firebase/crashlytics/internal/common/a0;)Lcom/google/firebase/crashlytics/internal/common/a0;

    move-result-object v2

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v2, v4}, Lcom/google/firebase/crashlytics/internal/send/b;->c(Lcom/google/firebase/crashlytics/internal/common/a0;Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/crashlytics/internal/common/t0;

    invoke-direct {v3, p0}, Lcom/google/firebase/crashlytics/internal/common/t0;-><init>(Lcom/google/firebase/crashlytics/internal/common/w0;)V

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->whenAll(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Ljava/util/List;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;)V
    .locals 2

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    const-string v1, "SessionReportingCoordinator#finalizeSessionWithNativeEvent"

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/crashlytics/internal/common/j0;

    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/common/j0;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->b:Lvb/e;

    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;->b(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d$a;->a()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;

    move-result-object v0

    invoke-virtual {p2, p1, v0, p3}, Lvb/e;->l(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;)V

    return-void
.end method

.method public l(JLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->b:Lvb/e;

    invoke-virtual {v0, p3, p1, p2}, Lvb/e;->k(Ljava/lang/String;J)V

    return-void
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->b:Lvb/e;

    invoke-virtual {v0}, Lvb/e;->r()Z

    move-result v0

    return v0
.end method

.method public r()Ljava/util/SortedSet;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->b:Lvb/e;

    invoke-virtual {v0}, Lvb/e;->p()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public s(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->a:Lcom/google/firebase/crashlytics/internal/common/z;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/common/z;->e(Ljava/lang/String;J)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->b:Lvb/e;

    invoke-virtual {p2, p1}, Lvb/e;->z(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)V

    return-void
.end method

.method public v(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .locals 10

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting fatal event for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lob/g;->i(Ljava/lang/String;)V

    const-string v6, "crash"

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/internal/common/w0;->u(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public w(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .locals 10

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting non-fatal event for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lob/g;->i(Ljava/lang/String;)V

    const-string v6, "error"

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/internal/common/w0;->u(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public x(Ljava/lang/String;Ljava/util/List;Lrb/e;Lrb/o;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/w0;->m(Ljava/lang/String;Ljava/util/List;)Landroid/app/ApplicationExitInfo;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No relevant ApplicationExitInfo occurred during session: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lob/g;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->a:Lcom/google/firebase/crashlytics/internal/common/z;

    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/w0;->g(Landroid/app/ApplicationExitInfo;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/internal/common/z;->c(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;

    move-result-object p2

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting anr for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lob/g;->b(Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/common/w0;->d(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;Lrb/e;Lrb/o;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;

    move-result-object p2

    invoke-direct {p0, p2, p4}, Lcom/google/firebase/crashlytics/internal/common/w0;->f(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;Lrb/o;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;

    move-result-object p2

    iget-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->b:Lvb/e;

    const/4 p4, 0x1

    invoke-virtual {p3, p2, p1, p4}, Lvb/e;->y(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;Ljava/lang/String;Z)V

    return-void
.end method

.method public y()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/w0;->b:Lvb/e;

    invoke-virtual {v0}, Lvb/e;->i()V

    return-void
.end method

.method public z(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/crashlytics/internal/common/w0;->A(Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
