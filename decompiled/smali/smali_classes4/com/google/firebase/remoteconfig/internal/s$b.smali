.class public Lcom/google/firebase/remoteconfig/internal/s$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/remoteconfig/internal/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:Lyc/j;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/remoteconfig/internal/s$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/remoteconfig/internal/s$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/remoteconfig/internal/s;
    .locals 7

    new-instance v6, Lcom/google/firebase/remoteconfig/internal/s;

    iget-wide v1, p0, Lcom/google/firebase/remoteconfig/internal/s$b;->a:J

    iget v3, p0, Lcom/google/firebase/remoteconfig/internal/s$b;->b:I

    iget-object v4, p0, Lcom/google/firebase/remoteconfig/internal/s$b;->c:Lyc/j;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/remoteconfig/internal/s;-><init>(JILyc/j;Lcom/google/firebase/remoteconfig/internal/s$a;)V

    return-object v6
.end method

.method b(Lyc/j;)Lcom/google/firebase/remoteconfig/internal/s$b;
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/s$b;->c:Lyc/j;

    return-object p0
.end method

.method c(I)Lcom/google/firebase/remoteconfig/internal/s$b;
    .locals 0

    iput p1, p0, Lcom/google/firebase/remoteconfig/internal/s$b;->b:I

    return-object p0
.end method

.method public d(J)Lcom/google/firebase/remoteconfig/internal/s$b;
    .locals 0

    iput-wide p1, p0, Lcom/google/firebase/remoteconfig/internal/s$b;->a:J

    return-object p0
.end method
