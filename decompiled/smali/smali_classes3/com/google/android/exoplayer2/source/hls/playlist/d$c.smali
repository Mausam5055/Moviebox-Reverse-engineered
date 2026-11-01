.class public final Lcom/google/android/exoplayer2/source/hls/playlist/d$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/playlist/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:J

.field public final c:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/playlist/d$c;->a:Landroid/net/Uri;

    iput-wide p2, p0, Lcom/google/android/exoplayer2/source/hls/playlist/d$c;->b:J

    iput p4, p0, Lcom/google/android/exoplayer2/source/hls/playlist/d$c;->c:I

    return-void
.end method
