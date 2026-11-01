.class public final Landroidx/media3/exoplayer/mediacodec/t$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/mediacodec/w;

.field public final b:Landroid/media/MediaFormat;

.field public final c:Landroidx/media3/common/r;

.field public final d:Landroid/view/Surface;

.field public final e:Landroid/media/MediaCrypto;

.field public final f:Landroidx/media3/exoplayer/mediacodec/p;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/mediacodec/w;Landroid/media/MediaFormat;Landroidx/media3/common/r;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroidx/media3/exoplayer/mediacodec/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/t$a;->a:Landroidx/media3/exoplayer/mediacodec/w;

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/t$a;->b:Landroid/media/MediaFormat;

    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/t$a;->c:Landroidx/media3/common/r;

    iput-object p4, p0, Landroidx/media3/exoplayer/mediacodec/t$a;->d:Landroid/view/Surface;

    iput-object p5, p0, Landroidx/media3/exoplayer/mediacodec/t$a;->e:Landroid/media/MediaCrypto;

    iput-object p6, p0, Landroidx/media3/exoplayer/mediacodec/t$a;->f:Landroidx/media3/exoplayer/mediacodec/p;

    return-void
.end method

.method public static a(Landroidx/media3/exoplayer/mediacodec/w;Landroid/media/MediaFormat;Landroidx/media3/common/r;Landroid/media/MediaCrypto;Landroidx/media3/exoplayer/mediacodec/p;)Landroidx/media3/exoplayer/mediacodec/t$a;
    .locals 8

    new-instance v7, Landroidx/media3/exoplayer/mediacodec/t$a;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/t$a;-><init>(Landroidx/media3/exoplayer/mediacodec/w;Landroid/media/MediaFormat;Landroidx/media3/common/r;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroidx/media3/exoplayer/mediacodec/p;)V

    return-object v7
.end method

.method public static b(Landroidx/media3/exoplayer/mediacodec/w;Landroid/media/MediaFormat;Landroidx/media3/common/r;Landroid/view/Surface;Landroid/media/MediaCrypto;)Landroidx/media3/exoplayer/mediacodec/t$a;
    .locals 8

    new-instance v7, Landroidx/media3/exoplayer/mediacodec/t$a;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/t$a;-><init>(Landroidx/media3/exoplayer/mediacodec/w;Landroid/media/MediaFormat;Landroidx/media3/common/r;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroidx/media3/exoplayer/mediacodec/p;)V

    return-object v7
.end method
