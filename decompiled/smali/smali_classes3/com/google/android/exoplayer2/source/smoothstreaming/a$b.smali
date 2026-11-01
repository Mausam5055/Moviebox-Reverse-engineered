.class final Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;
.super Lv9/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final e:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

.field private final f:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;II)V
    .locals 4

    int-to-long v0, p3

    iget p3, p1, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->k:I

    add-int/lit8 p3, p3, -0x1

    int-to-long v2, p3

    invoke-direct {p0, v0, v1, v2, v3}, Lv9/b;-><init>(JJ)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;->e:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    iput p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;->f:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    invoke-virtual {p0}, Lv9/b;->c()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;->e:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    invoke-virtual {p0}, Lv9/b;->d()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/a$b;->e:Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;

    invoke-virtual {p0}, Lv9/b;->d()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/a$b;->c(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method
