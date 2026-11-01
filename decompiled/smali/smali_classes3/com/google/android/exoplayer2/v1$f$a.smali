.class public final Lcom/google/android/exoplayer2/v1$f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/v1$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/UUID;

.field private b:Landroid/net/Uri;

.field private c:Lcom/google/common/collect/ImmutableMap;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/google/common/collect/ImmutableList;

.field private h:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/v1$f$a;->c:Lcom/google/common/collect/ImmutableMap;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/v1$f$a;->g:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/v1$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/v1$f$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/v1$f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/exoplayer2/v1$f;->a:Ljava/util/UUID;

    iput-object v0, p0, Lcom/google/android/exoplayer2/v1$f$a;->a:Ljava/util/UUID;

    iget-object v0, p1, Lcom/google/android/exoplayer2/v1$f;->c:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/v1$f$a;->b:Landroid/net/Uri;

    iget-object v0, p1, Lcom/google/android/exoplayer2/v1$f;->e:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lcom/google/android/exoplayer2/v1$f$a;->c:Lcom/google/common/collect/ImmutableMap;

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/v1$f;->f:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/v1$f$a;->d:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/v1$f;->g:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/v1$f$a;->e:Z

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/v1$f;->h:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/v1$f$a;->f:Z

    iget-object v0, p1, Lcom/google/android/exoplayer2/v1$f;->j:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplayer2/v1$f$a;->g:Lcom/google/common/collect/ImmutableList;

    invoke-static {p1}, Lcom/google/android/exoplayer2/v1$f;->a(Lcom/google/android/exoplayer2/v1$f;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/v1$f$a;->h:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/v1$f;Lcom/google/android/exoplayer2/v1$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/v1$f$a;-><init>(Lcom/google/android/exoplayer2/v1$f;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/v1$f$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/v1$f$a;->d:Z

    return p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/v1$f$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/v1$f$a;->e:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/v1$f$a;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/v1$f$a;->g:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/v1$f$a;)[B
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/v1$f$a;->h:[B

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/v1$f$a;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/v1$f$a;->b:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/v1$f$a;)Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/v1$f$a;->a:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/v1$f$a;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/v1$f$a;->f:Z

    return p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/v1$f$a;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/v1$f$a;->c:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method


# virtual methods
.method public i()Lcom/google/android/exoplayer2/v1$f;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/v1$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/v1$f;-><init>(Lcom/google/android/exoplayer2/v1$f$a;Lcom/google/android/exoplayer2/v1$a;)V

    return-object v0
.end method
