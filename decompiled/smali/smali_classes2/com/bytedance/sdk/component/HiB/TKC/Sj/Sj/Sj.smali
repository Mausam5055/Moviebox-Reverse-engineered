.class public final Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;,
        Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;,
        Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$TKC;
    }
.end annotation


# static fields
.field static final Sj:Ljava/util/regex/Pattern;

.field public static final TKC:Ljava/io/OutputStream;


# instance fields
.field private final Dq:I

.field private final EjP:Ljava/io/File;

.field private final Fmk:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;",
            ">;"
        }
    .end annotation
.end field

.field private final HiB:Ljava/io/File;

.field private final Jcg:Ljava/io/File;

.field private final TEQ:I

.field private Ym:J

.field private Zq:J

.field private aa:Ljava/io/Writer;

.field private final dNu:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final sP:Ljava/util/concurrent/ExecutorService;

.field private sef:I

.field private uA:J

.field private uvD:J

.field private final vS:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$2;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$2;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TKC:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJLjava/util/concurrent/ExecutorService;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Ym:J

    new-instance v2, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Fmk:Ljava/util/LinkedHashMap;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Zq:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->uvD:J

    new-instance v0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;-><init>(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->dNu:Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->EjP:Ljava/io/File;

    iput p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Dq:I

    new-instance p2, Ljava/io/File;

    const-string v0, "journal"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->HiB:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    const-string v0, "journal.tmp"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->vS:Ljava/io/File;

    new-instance p2, Ljava/io/File;

    const-string v0, "journal.bkp"

    invoke-direct {p2, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Jcg:Ljava/io/File;

    iput p3, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TEQ:I

    iput-wide p4, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->uA:J

    iput-object p6, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->sP:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private Dq()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->uA:J

    iget-wide v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Zq:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    move-wide v0, v2

    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Ym:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Fmk:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TKC(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Zq:J

    return-void
.end method

.method private EjP()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->vS:Ljava/io/File;

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj(Ljava/io/File;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Fmk:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;

    invoke-static {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    :goto_1
    iget v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TEQ:I

    if-ge v3, v2, :cond_0

    iget-wide v4, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Ym:J

    invoke-static {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->sP(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Ym:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    :goto_2
    iget v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TEQ:I

    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj(Ljava/io/File;)V

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->sP(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->HiB()V

    return-void
.end method

.method private EjP(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    if-ne v1, v5, :cond_1

    const-string v5, "REMOVE"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Fmk:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_1
    iget-object v5, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Fmk:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;

    const/4 v6, 0x0

    if-nez v5, :cond_2

    new-instance v5, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;

    invoke-direct {v5, p0, v4, v6}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;-><init>(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;)V

    iget-object v7, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Fmk:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v4, 0x5

    if-eq v0, v3, :cond_3

    if-ne v1, v4, :cond_3

    const-string v7, "CLEAN"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;Z)Z

    invoke-static {v5, v6}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    invoke-static {v5, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;[Ljava/lang/String;)V

    return-void

    :cond_3
    if-ne v0, v3, :cond_4

    if-ne v1, v4, :cond_4

    const-string v4, "DIRTY"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance p1, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    invoke-direct {p1, p0, v5, v6}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;-><init>(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;)V

    invoke-static {v5, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    return-void

    :cond_4
    if-ne v0, v3, :cond_5

    const/4 v0, 0x4

    if-ne v1, v0, :cond_5

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;)I
    .locals 0

    iget p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TEQ:I

    return p0
.end method

.method private declared-synchronized HiB()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->aa:Ljava/io/Writer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->vS:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/EjP;->Sj:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Dq:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TEQ:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Fmk:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;

    invoke-static {v2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "DIRTY "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->TKC(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "CLEAN "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->TKC(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->HiB:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->HiB:Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Jcg:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj(Ljava/io/File;Ljava/io/File;Z)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->vS:Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->HiB:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Jcg:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->HiB:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/EjP;->Sj:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->aa:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1

    :goto_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private HiB(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private Jcg()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->aa:Ljava/io/Writer;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->sef:I

    return p1
.end method

.method private declared-synchronized Sj(Ljava/lang/String;J)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Jcg()V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->HiB(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Fmk:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->HiB(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p2, v3, p2

    if-eqz p2, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    if-nez v0, :cond_2

    :try_start_1
    new-instance v0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;

    invoke-direct {v0, p0, p1, v2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;-><init>(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;)V

    iget-object p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Fmk:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    monitor-exit p0

    return-object v2

    :cond_3
    :goto_1
    :try_start_2
    new-instance p2, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    invoke-direct {p2, p0, v0, v2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;-><init>(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;)V

    invoke-static {v0, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    iget-object p3, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->aa:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DIRTY "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->aa:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p2

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public static Sj(Ljava/io/File;IIJLjava/util/concurrent/ExecutorService;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_4

    if-lez p2, :cond_3

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj(Ljava/io/File;Ljava/io/File;Z)V

    :cond_1
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;-><init>(Ljava/io/File;IIJLjava/util/concurrent/ExecutorService;)V

    iget-object v1, v0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->HiB:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TKC()V

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->EjP()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removing"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DiskLruCache "

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->sP()V

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;-><init>(Ljava/io/File;IIJLjava/util/concurrent/ExecutorService;)V

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->HiB()V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;)Ljava/io/Writer;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->aa:Ljava/io/Writer;

    return-object p0
.end method

.method private declared-synchronized Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    move-result-object v1

    if-ne v1, p1, :cond_a

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->EjP(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TEQ:I

    if-ge v2, v3, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;->sP(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->sP(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;->sP()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;->sP()V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Newly created entry didn\'t create value for index "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    iget p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TEQ:I

    if-ge v1, p1, :cond_5

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->sP(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->sP(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->sP(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    iget-wide v7, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Ym:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Ym:J

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj(Ljava/io/File;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->sef:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->sef:I

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->EjP(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_6

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;Z)Z

    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->aa:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CLEAN "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->TKC(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_7

    iget-wide p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->uvD:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->uvD:J

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;J)J

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Fmk:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->TKC(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->aa:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "REMOVE "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->TKC(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->aa:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    iget-wide p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Ym:J

    iget-wide v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->uA:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_8

    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->vS()Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->sP:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->dNu:Ljava/util/concurrent/Callable;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    monitor-exit p0

    return-void

    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :goto_4
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;Z)V

    return-void
.end method

.method private static Sj(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static Sj(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj(Ljava/io/File;)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private TKC()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    new-instance v1, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/TKC;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->HiB:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/EjP;->Sj:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/TKC;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_0
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/TKC;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/TKC;->Sj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/TKC;->Sj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/TKC;->Sj()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/TKC;->Sj()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Dq:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TEQ:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/TKC;->Sj()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->EjP(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Fmk:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->sef:I

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/TKC;->sP()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->HiB()V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->HiB:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/EjP;->Sj:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->aa:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    return-void

    :cond_1
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal header: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    throw v0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;)Z
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->vS()Z

    move-result p0

    return p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Dq()V

    return-void
.end method

.method static synthetic vS(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->EjP:Ljava/io/File;

    return-object p0
.end method

.method private vS()Z
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->sef:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Fmk:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public declared-synchronized Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$TKC;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Jcg()V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->HiB(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Fmk:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->EjP(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    iget v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TEQ:I

    new-array v8, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_3
    iget v4, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TEQ:I

    if-ge v3, v4, :cond_2

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v8, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :try_start_4
    iget v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->sef:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->sef:I

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->aa:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "READ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->vS()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->sP:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->dNu:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_3
    new-instance v1, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$TKC;

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->HiB(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)J

    move-result-wide v6

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->sP(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)[J

    move-result-object v9

    const/4 v10, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$TKC;-><init>(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v1

    :catch_0
    :goto_1
    :try_start_5
    iget p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TEQ:I

    if-ge v2, p1, :cond_4

    aget-object p1, v8, v2

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-object v1

    :goto_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public declared-synchronized Sj()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Jcg()V

    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->aa:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized TKC(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Jcg()V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->HiB(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Fmk:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    iget v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->TEQ:I

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "failed to delete "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    iget-wide v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Ym:J

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->sP(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Ym:J

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->sP(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->sef:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->sef:I

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->aa:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "REMOVE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Fmk:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->vS()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->sP:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->dNu:Ljava/util/concurrent/Callable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return v1

    :cond_5
    :goto_2
    monitor-exit p0

    return v1

    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->aa:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Fmk:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;

    invoke-static {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;->sP()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->aa:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->aa:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->Sj(Ljava/lang/String;J)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    move-result-object p1

    return-object p1
.end method

.method public sP()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->close()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->EjP:Ljava/io/File;

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/EjP;->Sj(Ljava/io/File;)V

    return-void
.end method
