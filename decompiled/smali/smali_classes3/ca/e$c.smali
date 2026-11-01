.class final Lca/e$c;
.super Lba/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private f:Lcom/google/android/exoplayer2/decoder/f$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/decoder/f$a;)V
    .locals 0

    invoke-direct {p0}, Lba/n;-><init>()V

    iput-object p1, p0, Lca/e$c;->f:Lcom/google/android/exoplayer2/decoder/f$a;

    return-void
.end method


# virtual methods
.method public final l()V
    .locals 1

    iget-object v0, p0, Lca/e$c;->f:Lcom/google/android/exoplayer2/decoder/f$a;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/decoder/f$a;->a(Lcom/google/android/exoplayer2/decoder/f;)V

    return-void
.end method
