.class public Lcom/transsion/athena/hatnea/taaneh;
.super Lcom/transsion/athena/hatnea/anateh;


# instance fields
.field private final c:J

.field private d:Ljava/io/File;

.field private final e:Lcom/transsion/athena/config/data/model/aethna;


# direct methods
.method public constructor <init>(JLjava/io/File;Lcom/transsion/athena/config/data/model/aethna;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/athena/hatnea/anateh;-><init>()V

    iput-wide p1, p0, Lcom/transsion/athena/hatnea/taaneh;->c:J

    iput-object p3, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    iput-object p4, p0, Lcom/transsion/athena/hatnea/taaneh;->e:Lcom/transsion/athena/config/data/model/aethna;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "upload"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/transsion/athena/anateh/aethna;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/transsion/athena/anateh/aethna;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/transsion/athena/anateh/aethna;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :goto_0
    const-string v1, ""

    :goto_1
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    move v2, v0

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    if-lez v2, :cond_3

    iget-wide v3, p0, Lcom/transsion/athena/hatnea/taaneh;->c:J

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v5, p0, Lcom/transsion/athena/hatnea/taaneh;->e:Lcom/transsion/athena/config/data/model/aethna;

    invoke-static {v3, v4, v1, v2, v5}, Lcom/transsion/athena/hatnea/anehat;->a(J[BILcom/transsion/athena/config/data/model/aethna;)Lcom/transsion/athena/hatnea/ehanat;

    move-result-object v1

    iget v1, v1, Lcom/transsion/athena/hatnea/ehanat;->a:I

    if-eqz v1, :cond_2

    const-string v0, "PostEventFileTask requestByPost error"

    invoke-static {v0}, Lcom/transsion/athena/taaneh/aethna;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/transsion/ga/AthenaAnalytics;->J()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/athena/hatnea/taaneh;->d:Ljava/io/File;

    invoke-static {v1, v3}, Lcom/transsion/athena/taaneh/athena;->b(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    iget-wide v3, p0, Lcom/transsion/athena/hatnea/taaneh;->c:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v0, "PostEventFileTask lines : %d, deleteFile : %s"

    invoke-static {v0, v4}, Lcom/transsion/athena/taaneh/aethna;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "Upload-File"

    return-object v0
.end method
