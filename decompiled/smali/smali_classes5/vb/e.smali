.class public Lvb/e;
.super Ljava/lang/Object;


# static fields
.field private static final e:Ljava/nio/charset/Charset;

.field private static final f:I

.field private static final g:Ltb/j;

.field private static final h:Ljava/util/Comparator;

.field private static final i:Ljava/io/FilenameFilter;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final b:Lvb/g;

.field private final c:Lwb/b;

.field private final d:Lcom/google/firebase/crashlytics/internal/common/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lvb/e;->e:Ljava/nio/charset/Charset;

    const/16 v0, 0xf

    sput v0, Lvb/e;->f:I

    new-instance v0, Ltb/j;

    invoke-direct {v0}, Ltb/j;-><init>()V

    sput-object v0, Lvb/e;->g:Ltb/j;

    new-instance v0, Lvb/a;

    invoke-direct {v0}, Lvb/a;-><init>()V

    sput-object v0, Lvb/e;->h:Ljava/util/Comparator;

    new-instance v0, Lvb/b;

    invoke-direct {v0}, Lvb/b;-><init>()V

    sput-object v0, Lvb/e;->i:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Lvb/g;Lwb/b;Lcom/google/firebase/crashlytics/internal/common/k;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lvb/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lvb/e;->b:Lvb/g;

    iput-object p2, p0, Lvb/e;->c:Lwb/b;

    iput-object p3, p0, Lvb/e;->d:Lcom/google/firebase/crashlytics/internal/common/k;

    return-void
.end method

.method private static A(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x2000

    new-array v0, v0, [B

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v1, Lvb/e;->e:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method private B(Ljava/io/File;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;)V
    .locals 3

    iget-object v0, p0, Lvb/e;->d:Lcom/google/firebase/crashlytics/internal/common/k;

    invoke-virtual {v0, p3}, Lcom/google/firebase/crashlytics/internal/common/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    sget-object v1, Lvb/e;->g:Ltb/j;

    invoke-static {p1}, Lvb/e;->A(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltb/j;->L(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->u(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->q(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->p(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object p2

    iget-object p4, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {p4, p3}, Lvb/g;->i(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-virtual {v1, p2}, Ltb/j;->M(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lvb/e;->F(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not synthesize final native report file for "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lob/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private C(Ljava/lang/String;J)V
    .locals 9

    iget-object v0, p0, Lvb/e;->b:Lvb/g;

    sget-object v1, Lvb/e;->i:Ljava/io/FilenameFilter;

    invoke-virtual {v0, p1, v1}, Lvb/g;->r(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Session "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has no events."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lob/g;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    move v5, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    :try_start_0
    sget-object v4, Lvb/e;->g:Ltb/j;

    invoke-static {v3}, Lvb/e;->A(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ltb/j;->j(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v5, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lvb/e;->s(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    move v5, v3

    goto :goto_0

    :goto_2
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not add event to report for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3, v4}, Lob/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not parse event files for session "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lob/g;->k(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lvb/e;->b:Lvb/g;

    invoke-static {p1, v0}, Lrb/o;->n(Ljava/lang/String;Lvb/g;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lvb/e;->d:Lcom/google/firebase/crashlytics/internal/common/k;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lvb/e;->b:Lvb/g;

    const-string v1, "report"

    invoke-virtual {v0, p1, v1}, Lvb/g;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    move-object v0, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v7}, Lvb/e;->D(Ljava/io/File;Ljava/util/List;JZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private D(Ljava/io/File;Ljava/util/List;JZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lvb/e;->g:Ltb/j;

    invoke-static {p1}, Lvb/e;->A(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltb/j;->L(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object v1

    invoke-virtual {v1, p3, p4, p5, p6}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->v(JZLjava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object p3

    invoke-virtual {p3, p7}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->p(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->r(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->n()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p4

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appQualitySessionId: "

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p4, p6}, Lob/g;->b(Ljava/lang/String;)V

    if-eqz p5, :cond_1

    iget-object p4, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {p3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->i()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lvb/g;->l(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_1
    iget-object p4, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {p3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->i()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lvb/g;->n(Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    :goto_0
    invoke-virtual {v0, p2}, Ltb/j;->M(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lvb/e;->F(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Could not synthesize final report file for "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Lob/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private E(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lvb/e;->b:Lvb/g;

    new-instance v1, Lvb/c;

    invoke-direct {v1}, Lvb/c;-><init>()V

    invoke-virtual {v0, p1, v1}, Lvb/g;->r(Ljava/lang/String;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lvb/d;

    invoke-direct {v0}, Lvb/d;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {p1, p2}, Lvb/e;->f(Ljava/util/List;I)I

    move-result p1

    return p1
.end method

.method private static F(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p0, Lvb/e;->e:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method private static G(Ljava/io/File;Ljava/lang/String;J)V
    .locals 3

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lvb/e;->e:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p2, p3}, Lvb/e;->h(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method public static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lvb/e;->v(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lvb/e;->t(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    invoke-static {p0, p1}, Lvb/e;->x(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    invoke-static {p0, p1}, Lvb/e;->u(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method private e(Ljava/lang/String;)Ljava/util/SortedSet;
    .locals 5

    iget-object v0, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {v0}, Lvb/g;->d()V

    invoke-virtual {p0}, Lvb/e;->p()Ljava/util/SortedSet;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    const/16 v1, 0x8

    if-gt p1, v1, :cond_1

    return-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    if-le p1, v1, :cond_2

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing session over cap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lob/g;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {v2, p1}, Lvb/g;->e(Ljava/lang/String;)Z

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static f(Ljava/util/List;I)I
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-gt v0, p1, :cond_0

    return v0

    :cond_0
    invoke-static {v1}, Lvb/g;->v(Ljava/io/File;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lvb/e;->c:Lwb/b;

    invoke-interface {v0}, Lwb/b;->b()Lcom/google/firebase/crashlytics/internal/settings/c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/settings/c;->a:Lcom/google/firebase/crashlytics/internal/settings/c$b;

    iget v0, v0, Lcom/google/firebase/crashlytics/internal/settings/c$b;->b:I

    invoke-direct {p0}, Lvb/e;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static h(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method private j(Ljava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static m(IZ)Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%010d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "_"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private n()Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {v1}, Lvb/g;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {v1}, Lvb/g;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lvb/e;->h:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {v2}, Lvb/g;->o()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    sget v1, Lvb/e;->f:I

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static s(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "event"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static t(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "event"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic u(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic v(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "event"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static x(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lvb/e;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lvb/e;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public i()V
    .locals 1

    iget-object v0, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {v0}, Lvb/g;->o()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lvb/e;->j(Ljava/util/List;)V

    iget-object v0, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {v0}, Lvb/g;->m()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lvb/e;->j(Ljava/util/List;)V

    iget-object v0, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {v0}, Lvb/g;->j()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lvb/e;->j(Ljava/util/List;)V

    return-void
.end method

.method public k(Ljava/lang/String;J)V
    .locals 4

    invoke-direct {p0, p1}, Lvb/e;->e(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finalizing report for session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lob/g;->i(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lvb/e;->C(Ljava/lang/String;J)V

    iget-object v1, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {v1, v0}, Lvb/g;->e(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lvb/e;->g()V

    return-void
.end method

.method public l(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;)V
    .locals 4

    iget-object v0, p0, Lvb/e;->b:Lvb/g;

    const-string v1, "report"

    invoke-virtual {v0, p1, v1}, Lvb/g;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing native session report for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lob/g;->b(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p1, p3}, Lvb/e;->B(Ljava/io/File;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$d;Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$a;)V

    return-void
.end method

.method public p()Ljava/util/SortedSet;
    .locals 2

    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {v1}, Lvb/g;->f()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public q(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lvb/e;->b:Lvb/g;

    const-string v1, "start-time"

    invoke-virtual {v0, p1, v1}, Lvb/g;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {v0}, Lvb/g;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {v0}, Lvb/g;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {v0}, Lvb/g;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public w()Ljava/util/List;
    .locals 7

    invoke-direct {p0}, Lvb/e;->n()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    :try_start_0
    sget-object v3, Lvb/e;->g:Ltb/j;

    invoke-static {v2}, Lvb/e;->A(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltb/j;->L(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/google/firebase/crashlytics/internal/common/a0;->a(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;Ljava/lang/String;Ljava/io/File;)Lcom/google/firebase/crashlytics/internal/common/a0;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not load report file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "; deleting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lob/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public y(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lvb/e;->c:Lwb/b;

    invoke-interface {v0}, Lwb/b;->b()Lcom/google/firebase/crashlytics/internal/settings/c;

    move-result-object v0

    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/settings/c;->a:Lcom/google/firebase/crashlytics/internal/settings/c$b;

    iget v0, v0, Lcom/google/firebase/crashlytics/internal/settings/c$b;->a:I

    sget-object v1, Lvb/e;->g:Ltb/j;

    invoke-virtual {v1, p1}, Ltb/j;->k(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e$d;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lvb/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v1, p3}, Lvb/e;->m(IZ)Ljava/lang/String;

    move-result-object p3

    :try_start_0
    iget-object v1, p0, Lvb/e;->b:Lvb/g;

    invoke-virtual {v1, p2, p3}, Lvb/g;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    invoke-static {p3, p1}, Lvb/e;->F(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not persist event for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1, p1}, Lob/g;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-direct {p0, p2, v0}, Lvb/e;->E(Ljava/lang/String;I)I

    return-void
.end method

.method public z(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)V
    .locals 5

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->n()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object p1

    const-string v0, "Could not get session for report"

    invoke-virtual {p1, v0}, Lob/g;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->i()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    sget-object v2, Lvb/e;->g:Ltb/j;

    invoke-virtual {v2, p1}, Ltb/j;->M(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lvb/e;->b:Lvb/g;

    const-string v3, "report"

    invoke-virtual {v2, v1, v3}, Lvb/g;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, p1}, Lvb/e;->F(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, Lvb/e;->b:Lvb/g;

    const-string v2, "start-time"

    invoke-virtual {p1, v1, v2}, Lvb/g;->q(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$e;->l()J

    move-result-wide v3

    invoke-static {p1, v2, v3, v4}, Lvb/e;->G(Ljava/io/File;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lob/g;->f()Lob/g;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not persist report for session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lob/g;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
