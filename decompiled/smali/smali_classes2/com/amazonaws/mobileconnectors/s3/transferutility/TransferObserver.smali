.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field private h:Ljava/lang/String;

.field private i:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

.field private j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;


# direct methods
.method constructor <init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->d:Ljava/lang/String;

    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->h:Ljava/lang/String;

    invoke-virtual {p5}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->e:J

    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->g:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-void
.end method

.method constructor <init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;-><init>(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, p6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->g(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->g:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-object p1
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;J)J
    .locals 0

    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->f:J

    return-wide p1
.end method

.method static synthetic c(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;J)J
    .locals 0

    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->e:J

    return-wide p1
.end method


# virtual methods
.method public d()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->i:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    invoke-static {v2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->j(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->i:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    invoke-static {v2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->j(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    iput-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    return v0
.end method

.method public g(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V
    .locals 2

    if-eqz p1, :cond_0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->d()V

    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$1;)V

    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->j:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver$TransferStatusListener;

    iget v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    invoke-static {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->g(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->i:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    invoke-static {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->g(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferListener;)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransferObserver{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bucket=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", key=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bytesTotal="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", bytesTransferred="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", transferState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->g:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", filePath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferObserver;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
