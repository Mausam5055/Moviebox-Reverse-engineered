.class public Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/sP;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/TzV;


# instance fields
.field private EjP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/TKC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/TKC<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private Sj:J

.field private TKC:I

.field private sP:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x100000

    iput-wide v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/sP;->Sj:J

    iput p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/sP;->TKC:I

    iput p2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/sP;->sP:I

    new-instance p1, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/TKC;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/TKC;-><init>(I)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/sP;->EjP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/TKC;

    return-void
.end method


# virtual methods
.method public bridge synthetic Sj(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/sP;->Sj(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Sj(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/sP;->Sj(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public Sj(Ljava/lang/String;[B)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    array-length v1, p2

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/sP;->Sj:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/sP;->EjP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/TKC;

    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/TKC;->Sj(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_2
    :goto_0
    return v0
.end method

.method public Sj(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/sP;->EjP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/TKC;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/TKC;->Sj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic sP(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/sP;->sP(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public sP(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP/sP;->EjP:Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/TKC;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/TKC;->Sj(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_0
    return v0
.end method
