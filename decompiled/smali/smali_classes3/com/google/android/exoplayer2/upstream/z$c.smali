.class public final Lcom/google/android/exoplayer2/upstream/z$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/upstream/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lt9/h;

.field public final b:Lt9/i;

.field public final c:Ljava/io/IOException;

.field public final d:I


# direct methods
.method public constructor <init>(Lt9/h;Lt9/i;Ljava/io/IOException;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/z$c;->a:Lt9/h;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/z$c;->b:Lt9/i;

    iput-object p3, p0, Lcom/google/android/exoplayer2/upstream/z$c;->c:Ljava/io/IOException;

    iput p4, p0, Lcom/google/android/exoplayer2/upstream/z$c;->d:I

    return-void
.end method
