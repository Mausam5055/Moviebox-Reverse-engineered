.class public Ld6/a;
.super Landroid/media/MediaDataSource;


# static fields
.field public static final e:Ljava/util/concurrent/ConcurrentHashMap;


# instance fields
.field private final a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/a;

.field private b:J

.field private final c:Landroid/content/Context;

.field private final d:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Ld6/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 2

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Ld6/a;->b:J

    iput-object p1, p0, Ld6/a;->c:Landroid/content/Context;

    iput-object p2, p0, Ld6/a;->d:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;

    invoke-direct {v0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/b;-><init>(Landroid/content/Context;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    iput-object v0, p0, Ld6/a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/a;

    return-void
.end method

.method public static h(Landroid/content/Context;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Ld6/a;
    .locals 1

    new-instance v0, Ld6/a;

    invoke-direct {v0, p0, p1}, Ld6/a;-><init>(Landroid/content/Context;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    sget-object p0, Ld6/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-object v0, p0, Ld6/a;->d:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    iget-object v0, p0, Ld6/a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/a;->sP()V

    :cond_0
    sget-object v0, Ld6/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Ld6/a;->d:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d()Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;
    .locals 1

    iget-object v0, p0, Ld6/a;->d:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    return-object v0
.end method

.method public getSize()J
    .locals 4

    iget-wide v0, p0, Ld6/a;->b:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Ld6/a;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld6/a;->d:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ld6/a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/a;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/a;->TKC()J

    move-result-wide v0

    iput-wide v0, p0, Ld6/a;->b:J

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_2
    :goto_1
    iget-wide v0, p0, Ld6/a;->b:J

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6

    iget-object v0, p0, Ld6/a;->a:Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/a;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/Sj/Sj/a;->a(J[BII)I

    move-result p1

    array-length p2, p3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return p1
.end method
