.class public final Lcom/google/android/exoplayer2/source/dash/c$c;
.super Lv9/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "c"
.end annotation


# instance fields
.field private final e:Lcom/google/android/exoplayer2/source/dash/c$b;

.field private final f:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/c$b;JJJ)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p5}, Lv9/b;-><init>(JJ)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->e:Lcom/google/android/exoplayer2/source/dash/c$b;

    iput-wide p6, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->f:J

    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    invoke-virtual {p0}, Lv9/b;->c()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->e:Lcom/google/android/exoplayer2/source/dash/c$b;

    invoke-virtual {p0}, Lv9/b;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/c$b;->k(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 3

    invoke-virtual {p0}, Lv9/b;->c()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/c$c;->e:Lcom/google/android/exoplayer2/source/dash/c$b;

    invoke-virtual {p0}, Lv9/b;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/dash/c$b;->i(J)J

    move-result-wide v0

    return-wide v0
.end method
