.class final Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "sP"
.end annotation


# instance fields
.field private EjP:Z

.field private HiB:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

.field final synthetic Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

.field private final TKC:[J

.field private final sP:Ljava/lang/String;

.field private vS:J


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->sP:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->HiB(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->TKC:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;-><init>(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->EjP:Z

    return p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->vS:J

    return-wide v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;J)J
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->vS:J

    return-wide p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->HiB:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;)Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->HiB:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$Sj;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj([Ljava/lang/String;)V

    return-void
.end method

.method private Sj([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->HiB(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->TKC:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->sP([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->sP([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->EjP:Z

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->sP:Ljava/lang/String;

    return-object p0
.end method

.method private sP([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;)[J
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->TKC:[J

    return-object p0
.end method


# virtual methods
.method public Sj(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->vS(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->sP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public Sj()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->TKC:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sP(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->Sj:Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;

    invoke-static {v1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;->vS(Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/Sj$sP;->sP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ".tmp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
