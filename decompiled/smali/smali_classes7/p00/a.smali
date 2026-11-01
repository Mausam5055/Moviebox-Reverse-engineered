.class public Lp00/a;
.super Ljava/lang/Object;

# interfaces
.implements Lo00/a;


# static fields
.field private static final w:[Lp00/a;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Z

.field private c:I

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:Z

.field private i:B

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:I

.field private q:Z

.field private r:J

.field private s:Z

.field private t:Z

.field private final u:Ljava/io/File;

.field private final v:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lp00/a;

    sput-object v0, Lp00/a;->w:[Lp00/a;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lp00/a;->a:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lp00/a;->d:J

    iput-wide v1, p0, Lp00/a;->e:J

    iput-wide v1, p0, Lp00/a;->f:J

    iput-object v0, p0, Lp00/a;->j:Ljava/lang/String;

    const-string v1, "ustar\u0000"

    iput-object v1, p0, Lp00/a;->k:Ljava/lang/String;

    const-string v1, "00"

    iput-object v1, p0, Lp00/a;->l:Ljava/lang/String;

    iput-object v0, p0, Lp00/a;->n:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lp00/a;->o:I

    iput v1, p0, Lp00/a;->p:I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lp00/a;->v:Ljava/util/Map;

    const-string v2, "user.name"

    invoke-static {v2, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lp00/a;->m:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lp00/a;->u:Ljava/io/File;

    iput-boolean p1, p0, Lp00/a;->b:Z

    return-void
.end method

.method public constructor <init>([BLorg/apache/commons/compress/archivers/zip/r;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lp00/a;-><init>(Z)V

    invoke-direct {p0, p1, p2, v0, p3}, Lp00/a;->q([BLorg/apache/commons/compress/archivers/zip/r;ZZ)V

    return-void
.end method

.method private b([B)I
    .locals 3

    const-string v0, "ustar "

    const/16 v1, 0x101

    const/4 v2, 0x6

    invoke-static {v0, p1, v1, v2}, Lq00/a;->c(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const-string v0, "ustar\u0000"

    invoke-static {v0, p1, v1, v2}, Lq00/a;->c(Ljava/lang/String;[BII)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "tar\u0000"

    const/16 v1, 0x1fc

    const/4 v2, 0x4

    invoke-static {v0, p1, v1, v2}, Lq00/a;->c(Ljava/lang/String;[BII)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private static o(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    if-nez p1, :cond_3

    const-string v1, "os.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "windows"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x3a

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_3

    const/16 v3, 0x61

    if-lt v1, v3, :cond_0

    const/16 v3, 0x7a

    if-le v1, v3, :cond_1

    :cond_0
    const/16 v3, 0x41

    if-lt v1, v3, :cond_3

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_3

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const-string v2, "netware"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_3
    :goto_0
    sget-char v1, Ljava/io/File;->separatorChar:C

    const/16 v2, 0x2f

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-nez p1, :cond_4

    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method private p([BIIZ)J
    .locals 0

    if-eqz p4, :cond_0

    :try_start_0
    invoke-static {p1, p2, p3}, Lp00/d;->h([BII)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    const-wide/16 p1, -0x1

    return-wide p1

    :cond_0
    invoke-static {p1, p2, p3}, Lp00/d;->h([BII)J

    move-result-wide p1

    return-wide p1
.end method

.method private q([BLorg/apache/commons/compress/archivers/zip/r;ZZ)V
    .locals 6

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    invoke-static {p1, v1, v0}, Lp00/d;->e([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p1, v1, v0, p2}, Lp00/d;->f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lp00/a;->a:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-direct {p0, p1, v0, v1, p4}, Lp00/a;->p([BIIZ)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lp00/a;->c:I

    const/16 v2, 0x6c

    invoke-direct {p0, p1, v2, v1, p4}, Lp00/a;->p([BIIZ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lp00/a;->d:J

    const/16 v2, 0x74

    invoke-direct {p0, p1, v2, v1, p4}, Lp00/a;->p([BIIZ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lp00/a;->e:J

    const/16 v2, 0x7c

    const/16 v3, 0xc

    invoke-static {p1, v2, v3}, Lp00/d;->h([BII)J

    move-result-wide v4

    iput-wide v4, p0, Lp00/a;->f:J

    const/16 v2, 0x88

    invoke-direct {p0, p1, v2, v3, p4}, Lp00/a;->p([BIIZ)J

    move-result-wide v4

    iput-wide v4, p0, Lp00/a;->g:J

    invoke-static {p1}, Lp00/d;->i([B)Z

    move-result v2

    iput-boolean v2, p0, Lp00/a;->h:Z

    const/16 v2, 0x9c

    aget-byte v2, p1, v2

    iput-byte v2, p0, Lp00/a;->i:B

    const/16 v2, 0x9d

    if-eqz p3, :cond_1

    invoke-static {p1, v2, v0}, Lp00/d;->e([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {p1, v2, v0, p2}, Lp00/d;->f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lp00/a;->j:Ljava/lang/String;

    const/16 v0, 0x101

    const/4 v2, 0x6

    invoke-static {p1, v0, v2}, Lp00/d;->e([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp00/a;->k:Ljava/lang/String;

    const/16 v0, 0x107

    const/4 v2, 0x2

    invoke-static {p1, v0, v2}, Lp00/d;->e([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lp00/a;->l:Ljava/lang/String;

    const/16 v0, 0x20

    const/16 v4, 0x109

    if-eqz p3, :cond_2

    invoke-static {p1, v4, v0}, Lp00/d;->e([BII)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    invoke-static {p1, v4, v0, p2}, Lp00/d;->f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, p0, Lp00/a;->m:Ljava/lang/String;

    const/16 v4, 0x129

    if-eqz p3, :cond_3

    invoke-static {p1, v4, v0}, Lp00/d;->e([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-static {p1, v4, v0, p2}, Lp00/d;->f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lp00/a;->n:Ljava/lang/String;

    iget-byte v0, p0, Lp00/a;->i:B

    const/16 v4, 0x33

    if-eq v0, v4, :cond_4

    const/16 v4, 0x34

    if-ne v0, v4, :cond_5

    :cond_4
    const/16 v0, 0x149

    invoke-direct {p0, p1, v0, v1, p4}, Lp00/a;->p([BIIZ)J

    move-result-wide v4

    long-to-int v0, v4

    iput v0, p0, Lp00/a;->o:I

    const/16 v0, 0x151

    invoke-direct {p0, p1, v0, v1, p4}, Lp00/a;->p([BIIZ)J

    move-result-wide v0

    long-to-int p4, v0

    iput p4, p0, Lp00/a;->p:I

    :cond_5
    invoke-direct {p0, p1}, Lp00/a;->b([B)I

    move-result p4

    if-eq p4, v2, :cond_a

    const/4 v0, 0x4

    const-string v1, "/"

    const/16 v2, 0x159

    if-eq p4, v0, :cond_8

    const/16 p4, 0x9b

    if-eqz p3, :cond_6

    invoke-static {p1, v2, p4}, Lp00/d;->e([BII)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    invoke-static {p1, v2, p4, p2}, Lp00/d;->f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    invoke-virtual {p0}, Lp00/a;->h()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lp00/a;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lp00/a;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lp00/a;->a:Ljava/lang/String;

    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lp00/a;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lp00/a;->a:Ljava/lang/String;

    goto :goto_6

    :cond_8
    const/16 p4, 0x83

    if-eqz p3, :cond_9

    invoke-static {p1, v2, p4}, Lp00/d;->e([BII)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_9
    invoke-static {p1, v2, p4, p2}, Lp00/d;->f([BIILorg/apache/commons/compress/archivers/zip/r;)Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lp00/a;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lp00/a;->a:Ljava/lang/String;

    goto :goto_6

    :cond_a
    const/16 p2, 0x1e2

    invoke-static {p1, p2}, Lp00/d;->d([BI)Z

    move-result p2

    iput-boolean p2, p0, Lp00/a;->q:Z

    const/16 p2, 0x1e3

    invoke-static {p1, p2, v3}, Lp00/d;->g([BII)J

    move-result-wide p1

    iput-wide p1, p0, Lp00/a;->r:J

    :cond_b
    :goto_6
    return-void
.end method

.method private r(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "linkpath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0xc

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "SCHILY.filetype"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0xb

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "uname"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v0, 0xa

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "mtime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x9

    goto/16 :goto_0

    :sswitch_4
    const-string v1, "gname"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_6
    const-string v1, "path"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_7
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_8
    const-string v1, "gid"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_9
    const-string v1, "GNU.sparse.size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_a
    const-string v1, "GNU.sparse.realsize"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_b
    const-string v1, "SCHILY.devminor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :cond_b
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_c
    const-string v1, "SCHILY.devmajor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_0

    :cond_c
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object p3, p0, Lp00/a;->v:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p2}, Lp00/a;->w(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string p1, "sparse"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0, p3}, Lp00/a;->e(Ljava/util/Map;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p2}, Lp00/a;->B(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr p1, v0

    double-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lp00/a;->x(J)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p2}, Lp00/a;->v(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lp00/a;->z(J)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p2}, Lp00/a;->y(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_7
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lp00/a;->A(J)V

    goto :goto_1

    :pswitch_8
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lp00/a;->u(J)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, p3}, Lp00/a;->c(Ljava/util/Map;)V

    goto :goto_1

    :pswitch_a
    invoke-virtual {p0, p3}, Lp00/a;->d(Ljava/util/Map;)V

    goto :goto_1

    :pswitch_b
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lp00/a;->t(I)V

    goto :goto_1

    :pswitch_c
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lp00/a;->s(I)V

    :cond_d
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7240fdec -> :sswitch_c
        -0x723d4bf0 -> :sswitch_b
        -0x108a42f3 -> :sswitch_a
        -0x98f3691 -> :sswitch_9
        0x18fc2 -> :sswitch_8
        0x1c450 -> :sswitch_7
        0x346425 -> :sswitch_6
        0x35e001 -> :sswitch_5
        0x5deef72 -> :sswitch_4
        0x63654ba -> :sswitch_3
        0x6a43880 -> :sswitch_2
        0x1fa1f206 -> :sswitch_1
        0x473a871f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public A(J)V
    .locals 0

    iput-wide p1, p0, Lp00/a;->d:J

    return-void
.end method

.method public B(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lp00/a;->m:Ljava/lang/String;

    return-void
.end method

.method C(Ljava/util/Map;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v2, v1, p1}, Lp00/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Lp00/a;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lp00/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lp00/a;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method c(Ljava/util/Map;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp00/a;->s:Z

    const-string v0, "GNU.sparse.size"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lp00/a;->r:J

    const-string v0, "GNU.sparse.name"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lp00/a;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method d(Ljava/util/Map;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp00/a;->s:Z

    const-string v0, "GNU.sparse.realsize"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lp00/a;->r:J

    const-string v0, "GNU.sparse.name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lp00/a;->a:Ljava/lang/String;

    return-void
.end method

.method e(Ljava/util/Map;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp00/a;->t:Z

    const-string v0, "SCHILY.realsize"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lp00/a;->r:J

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lp00/a;

    invoke-virtual {p0, p1}, Lp00/a;->a(Lp00/a;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lp00/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lp00/a;->f:J

    return-wide v0
.end method

.method public h()Z
    .locals 3

    iget-object v0, p0, Lp00/a;->u:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    return v0

    :cond_0
    iget-byte v0, p0, Lp00/a;->i:B

    const/16 v1, 0x35

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lp00/a;->n()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lp00/a;->l()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lp00/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lp00/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lp00/a;->q:Z

    return v0
.end method

.method public j()Z
    .locals 2

    iget-byte v0, p0, Lp00/a;->i:B

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 2

    iget-byte v0, p0, Lp00/a;->i:B

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 2

    iget-byte v0, p0, Lp00/a;->i:B

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 2

    iget-byte v0, p0, Lp00/a;->i:B

    const/16 v1, 0x53

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n()Z
    .locals 2

    iget-byte v0, p0, Lp00/a;->i:B

    const/16 v1, 0x78

    if-eq v0, v1, :cond_1

    const/16 v1, 0x58

    if-ne v0, v1, :cond_0

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

.method public s(I)V
    .locals 3

    if-ltz p1, :cond_0

    iput p1, p0, Lp00/a;->o:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Major device number is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t(I)V
    .locals 3

    if-ltz p1, :cond_0

    iput p1, p0, Lp00/a;->p:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minor device number is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public u(J)V
    .locals 0

    iput-wide p1, p0, Lp00/a;->e:J

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lp00/a;->n:Ljava/lang/String;

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lp00/a;->j:Ljava/lang/String;

    return-void
.end method

.method public x(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lp00/a;->g:J

    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lp00/a;->b:Z

    invoke-static {p1, v0}, Lp00/a;->o(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lp00/a;->a:Ljava/lang/String;

    return-void
.end method

.method public z(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iput-wide p1, p0, Lp00/a;->f:J

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Size is out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
