.class Li9/b$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li9/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Li9/b$a;)V
    .locals 0

    invoke-direct {p0}, Li9/b$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->q()I

    move-result v0

    iput v0, p0, Li9/b$c;->a:I

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->q()I

    move-result p1

    iput p1, p0, Li9/b$c;->b:I

    const/4 p1, 0x0

    iput p1, p0, Li9/b$c;->c:I

    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/util/d0;)V
    .locals 2

    invoke-virtual {p0, p1}, Li9/b$c;->a(Lcom/google/android/exoplayer2/util/d0;)V

    iget v0, p0, Li9/b$c;->a:I

    const v1, 0x5453494c

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/d0;->q()I

    move-result p1

    iput p1, p0, Li9/b$c;->c:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "LIST expected, found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Li9/b$c;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p1

    throw p1
.end method
