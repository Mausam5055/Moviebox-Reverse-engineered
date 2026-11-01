.class public final Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/media3/exoplayer/upstream/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;,
        Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/regex/Pattern;

.field private static final B:Ljava/util/regex/Pattern;

.field private static final C:Ljava/util/regex/Pattern;

.field private static final D:Ljava/util/regex/Pattern;

.field private static final E:Ljava/util/regex/Pattern;

.field private static final F:Ljava/util/regex/Pattern;

.field private static final G:Ljava/util/regex/Pattern;

.field private static final H:Ljava/util/regex/Pattern;

.field private static final I:Ljava/util/regex/Pattern;

.field private static final J:Ljava/util/regex/Pattern;

.field private static final K:Ljava/util/regex/Pattern;

.field private static final L:Ljava/util/regex/Pattern;

.field private static final M:Ljava/util/regex/Pattern;

.field private static final N:Ljava/util/regex/Pattern;

.field private static final O:Ljava/util/regex/Pattern;

.field private static final P:Ljava/util/regex/Pattern;

.field private static final Q:Ljava/util/regex/Pattern;

.field private static final R:Ljava/util/regex/Pattern;

.field private static final S:Ljava/util/regex/Pattern;

.field private static final T:Ljava/util/regex/Pattern;

.field private static final U:Ljava/util/regex/Pattern;

.field private static final V:Ljava/util/regex/Pattern;

.field private static final W:Ljava/util/regex/Pattern;

.field private static final X:Ljava/util/regex/Pattern;

.field private static final Y:Ljava/util/regex/Pattern;

.field private static final Z:Ljava/util/regex/Pattern;

.field private static final a0:Ljava/util/regex/Pattern;

.field private static final b0:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final c0:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final d0:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final e0:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final f0:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final g0:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final h0:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/regex/Pattern;

.field private static final i0:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;

.field private static final j0:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final k0:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final l0:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;

.field private static final m0:Ljava/util/regex/Pattern;

.field private static final n:Ljava/util/regex/Pattern;

.field private static final n0:Ljava/util/regex/Pattern;

.field private static final o:Ljava/util/regex/Pattern;

.field private static final o0:Ljava/util/regex/Pattern;

.field private static final p:Ljava/util/regex/Pattern;

.field private static final p0:Ljava/util/regex/Pattern;

.field private static final q:Ljava/util/regex/Pattern;

.field private static final q0:Ljava/util/regex/Pattern;

.field private static final r:Ljava/util/regex/Pattern;

.field private static final r0:Ljava/util/regex/Pattern;

.field private static final s:Ljava/util/regex/Pattern;

.field private static final s0:Ljava/util/regex/Pattern;

.field private static final t:Ljava/util/regex/Pattern;

.field private static final u:Ljava/util/regex/Pattern;

.field private static final v:Ljava/util/regex/Pattern;

.field private static final w:Ljava/util/regex/Pattern;

.field private static final x:Ljava/util/regex/Pattern;

.field private static final y:Ljava/util/regex/Pattern;

.field private static final z:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Landroidx/media3/exoplayer/hls/playlist/d;

.field private final b:Landroidx/media3/exoplayer/hls/playlist/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c:Ljava/util/regex/Pattern;

    const-string v0, "VIDEO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d:Ljava/util/regex/Pattern;

    const-string v0, "AUDIO=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->e:Ljava/util/regex/Pattern;

    const-string v0, "SUBTITLES=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->f:Ljava/util/regex/Pattern;

    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g:Ljava/util/regex/Pattern;

    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h:Ljava/util/regex/Pattern;

    const-string v0, "CHANNELS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i:Ljava/util/regex/Pattern;

    const-string v0, "VIDEO-RANGE=(SDR|PQ|HLG)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j:Ljava/util/regex/Pattern;

    const-string v0, "CODECS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k:Ljava/util/regex/Pattern;

    const-string v0, "SUPPLEMENTAL-CODECS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l:Ljava/util/regex/Pattern;

    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m:Ljava/util/regex/Pattern;

    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->o:Ljava/util/regex/Pattern;

    const-string v0, "DURATION=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p:Ljava/util/regex/Pattern;

    const-string v0, "[:,]DURATION=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q:Ljava/util/regex/Pattern;

    const-string v0, "PART-TARGET=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t:Ljava/util/regex/Pattern;

    const-string v0, "CAN-SKIP-UNTIL=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u:Ljava/util/regex/Pattern;

    const-string v0, "CAN-SKIP-DATERANGES"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v:Ljava/util/regex/Pattern;

    const-string v0, "SKIPPED-SEGMENTS=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w:Ljava/util/regex/Pattern;

    const-string v0, "[:|,]HOLD-BACK=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->x:Ljava/util/regex/Pattern;

    const-string v0, "PART-HOLD-BACK=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y:Ljava/util/regex/Pattern;

    const-string v0, "CAN-BLOCK-RELOAD"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->z:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->B:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->C:Ljava/util/regex/Pattern;

    const-string v0, "LAST-MSN=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->D:Ljava/util/regex/Pattern;

    const-string v0, "LAST-PART=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->E:Ljava/util/regex/Pattern;

    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->F:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->G:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->H:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE-START=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->I:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE-LENGTH=(\\d+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->J:Ljava/util/regex/Pattern;

    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->K:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMAT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->L:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->M:Ljava/util/regex/Pattern;

    const-string v0, "URI=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    const-string v0, "IV=([^,.*]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->O:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->P:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(PART|MAP)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Q:Ljava/util/regex/Pattern;

    const-string v0, "LANGUAGE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->R:Ljava/util/regex/Pattern;

    const-string v0, "NAME=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->S:Ljava/util/regex/Pattern;

    const-string v0, "GROUP-ID=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->T:Ljava/util/regex/Pattern;

    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->U:Ljava/util/regex/Pattern;

    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->V:Ljava/util/regex/Pattern;

    const-string v0, "AUTOSELECT"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->W:Ljava/util/regex/Pattern;

    const-string v0, "DEFAULT"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->X:Ljava/util/regex/Pattern;

    const-string v0, "FORCED"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Y:Ljava/util/regex/Pattern;

    const-string v0, "INDEPENDENT"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Z:Ljava/util/regex/Pattern;

    const-string v0, "GAP"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->a0:Ljava/util/regex/Pattern;

    const-string v0, "PRECISE"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b0:Ljava/util/regex/Pattern;

    const-string v0, "VALUE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c0:Ljava/util/regex/Pattern;

    const-string v0, "IMPORT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d0:Ljava/util/regex/Pattern;

    const-string v0, "[:,]ID=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->e0:Ljava/util/regex/Pattern;

    const-string v0, "CLASS=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->f0:Ljava/util/regex/Pattern;

    const-string v0, "START-DATE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g0:Ljava/util/regex/Pattern;

    const-string v0, "CUE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h0:Ljava/util/regex/Pattern;

    const-string v0, "END-DATE=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i0:Ljava/util/regex/Pattern;

    const-string v0, "PLANNED-DURATION=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j0:Ljava/util/regex/Pattern;

    const-string v0, "END-ON-NEXT"

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k0:Ljava/util/regex/Pattern;

    const-string v0, "X-ASSET-URI=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l0:Ljava/util/regex/Pattern;

    const-string v0, "X-ASSET-LIST=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m0:Ljava/util/regex/Pattern;

    const-string v0, "X-RESUME-OFFSET=(-?[\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n0:Ljava/util/regex/Pattern;

    const-string v0, "X-PLAYOUT-LIMIT=([\\d\\.]+)\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->o0:Ljava/util/regex/Pattern;

    const-string v0, "X-SNAP=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p0:Ljava/util/regex/Pattern;

    const-string v0, "X-RESTRICT=\"(.+?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q0:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r0:Ljava/util/regex/Pattern;

    const-string v0, "\\b(X-[A-Z0-9-]+)="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s0:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/d;->n:Landroidx/media3/exoplayer/hls/playlist/d;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;-><init>(Landroidx/media3/exoplayer/hls/playlist/d;Landroidx/media3/exoplayer/hls/playlist/c;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/hls/playlist/d;Landroidx/media3/exoplayer/hls/playlist/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->a:Landroidx/media3/exoplayer/hls/playlist/d;

    iput-object p2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b:Landroidx/media3/exoplayer/hls/playlist/c;

    return-void
.end method

.method private static A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t match "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static B(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/math/BigDecimal;

    const-wide/32 v0, 0xf4240

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;-><init>(J)V

    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static C(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r0:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static D(Ljava/io/BufferedReader;ZI)I
    .locals 1

    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {p2}, Landroidx/media3/common/util/a1;->I0(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_0

    :cond_1
    return p2
.end method

.method private static a(Ljava/io/BufferedReader;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v1, 0xef

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v1, 0xbf

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    return v2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->D(Ljava/io/BufferedReader;ZI)I

    move-result v0

    move v1, v2

    :goto_2
    const/4 v3, 0x7

    if-ge v1, v3, :cond_4

    const-string v3, "#EXTM3U"

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v0, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-static {p0, v2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->D(Ljava/io/BufferedReader;ZI)I

    move-result p0

    invoke-static {p0}, Landroidx/media3/common/util/a1;->I0(I)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "NO"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "YES"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;
    .locals 4

    array-length v0, p1

    new-array v0, v0, [Landroidx/media3/common/DrmInitData$SchemeData;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/media3/common/DrmInitData$SchemeData;->copyWithData([B)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/media3/common/DrmInitData;

    invoke-direct {p1, p0, v0}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    return-object p1
.end method

.method private static d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    return-object p3

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static e(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/d$b;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/d$b;

    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/d$b;->d:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static f(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/d$b;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/d$b;

    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/d$b;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static g(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/d$b;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/hls/playlist/d$b;

    iget-object v2, v1, Landroidx/media3/exoplayer/hls/playlist/d$b;->c:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1, p2}, Landroidx/media3/common/y;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    if-nez p2, :cond_1

    return p1

    :cond_1
    if-eqz p0, :cond_7

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "PQ"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "db1p"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_3
    const-string p2, "SDR"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "db2g"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    const-string p2, "HLG"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "db4"

    invoke-virtual {p3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    return v0

    :cond_6
    return p1

    :cond_7
    :goto_0
    return v0
.end method

.method private static j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/exoplayer/hls/playlist/c$b;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    add-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\"(.+?)\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Landroidx/media3/exoplayer/hls/playlist/c$b;

    const/4 v0, 0x0

    invoke-direct {p2, p1, p0, v0}, Landroidx/media3/exoplayer/hls/playlist/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p2

    :cond_1
    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "0X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=([\\d\\.]+)\\b"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/c$b;

    invoke-static {p0, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Landroidx/media3/exoplayer/hls/playlist/c$b;-><init>(Ljava/lang/String;D)V

    return-object v0

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=(0[xX][A-F0-9]+)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Landroidx/media3/exoplayer/hls/playlist/c$b;

    invoke-direct {p2, p1, p0, v3}, Landroidx/media3/exoplayer/hls/playlist/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-object p2
.end method

.method private static k(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/common/DrmInitData$SchemeData;
    .locals 6

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->M:Ljava/util/regex/Pattern;

    const-string v1, "1"

    invoke-static {p0, v0, v1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2c

    const-string v5, "video/mp4"

    if-eqz v2, :cond_0

    sget-object p1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object p2, Landroidx/media3/common/h;->d:Ljava/util/UUID;

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {p1, p2, v5, p0}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_0
    const-string v2, "com.widevine"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Landroidx/media3/common/DrmInitData$SchemeData;

    sget-object p2, Landroidx/media3/common/h;->d:Ljava/util/UUID;

    const-string v0, "hls"

    invoke-static {p0}, Landroidx/media3/common/util/a1;->u0(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_1
    const-string v2, "com.microsoft.playready"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    sget-object p1, Landroidx/media3/common/h;->e:Ljava/util/UUID;

    invoke-static {p1, p0}, Lf3/p;->a(Ljava/util/UUID;[B)[B

    move-result-object p0

    new-instance p2, Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-direct {p2, p1, v5, p0}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p2

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "SAMPLE-AES-CENC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SAMPLE-AES-CTR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "cbcs"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "cenc"

    :goto_1
    return-object p0
.end method

.method private static n(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static o(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static p(Landroidx/media3/exoplayer/hls/playlist/d;Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/c;
    .locals 117

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v4, v0, Lc2/d;->c:Z

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Landroidx/media3/exoplayer/hls/playlist/c$h;

    const-wide v22, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v24, 0x0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/16 v19, 0x0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v16, v9

    invoke-direct/range {v16 .. v24}, Landroidx/media3/exoplayer/hls/playlist/c$h;-><init>(JZJJZ)V

    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    const/4 v12, 0x0

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v18, 0x0

    const-string v3, ""

    move-object/from16 v23, v3

    move/from16 v38, v4

    move-object/from16 v59, v9

    move v4, v12

    move/from16 v26, v4

    move/from16 v29, v26

    move/from16 v30, v29

    move/from16 v39, v30

    move/from16 v57, v39

    move/from16 v83, v57

    move/from16 v88, v83

    move-wide/from16 v24, v16

    move-wide/from16 v34, v24

    move-wide/from16 v36, v34

    move-wide/from16 v27, v18

    move-wide/from16 v31, v27

    move-wide/from16 v41, v31

    move-wide/from16 v53, v41

    move-wide/from16 v84, v53

    move-wide/from16 v86, v84

    move-wide/from16 v90, v86

    move-wide/from16 v92, v90

    move-object/from16 v44, v23

    const/16 v33, 0x1

    const/16 v40, 0x0

    const/16 v43, 0x0

    const/16 v78, 0x0

    const-wide/16 v79, -0x1

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v89, 0x0

    move-object v9, v7

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;->a()Z

    move-result v45

    if-eqz v45, :cond_60

    invoke-virtual/range {p2 .. p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#EXT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v3, "#EXT-X-PLAYLIST-TYPE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t:Ljava/util/regex/Pattern;

    invoke-static {v2, v3, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VOD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "EVENT"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    const-string v3, "#EXT-X-I-FRAMES-ONLY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v88, 0x1

    goto :goto_0

    :cond_4
    const-string v3, "#EXT-X-START"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-wide v45, 0x412e848000000000L    # 1000000.0

    if-eqz v3, :cond_5

    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->F:Ljava/util/regex/Pattern;

    invoke-static {v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v24

    move-object v3, v14

    mul-double v13, v24, v45

    double-to-long v13, v13

    move-wide/from16 v24, v13

    sget-object v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b0:Ljava/util/regex/Pattern;

    invoke-static {v2, v13, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v26

    :goto_1
    move-object v14, v3

    goto :goto_0

    :cond_5
    move-object v3, v14

    const-string v13, "#EXT-X-SERVER-CONTROL"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->z(Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/c$h;

    move-result-object v59

    goto :goto_1

    :cond_6
    const-string v13, "#EXT-X-PART-INF"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    sget-object v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r:Ljava/util/regex/Pattern;

    invoke-static {v2, v13}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v13

    mul-double v13, v13, v45

    double-to-long v13, v13

    move-wide/from16 v36, v13

    goto :goto_1

    :cond_7
    const-string v13, "#EXT-X-MAP"

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    const-string v14, "@"

    if-eqz v13, :cond_d

    sget-object v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    invoke-static {v2, v13, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v46

    sget-object v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->H:Ljava/util/regex/Pattern;

    invoke-static {v2, v13, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v2, v14}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v13, v2, v12

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v79

    array-length v13, v2

    const/4 v14, 0x1

    if-le v13, v14, :cond_8

    aget-object v2, v2, v14

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v41

    :cond_8
    const-wide/16 v13, -0x1

    cmp-long v2, v79, v13

    if-nez v2, :cond_9

    move-wide/from16 v41, v18

    :cond_9
    move-object/from16 v13, v78

    if-eqz v13, :cond_a

    if-eqz v81, :cond_b

    :cond_a
    const/4 v14, 0x0

    goto :goto_2

    :cond_b
    const-string v0, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    const/4 v14, 0x0

    invoke-static {v0, v14}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :goto_2
    new-instance v89, Landroidx/media3/exoplayer/hls/playlist/c$f;

    move-object/from16 v45, v89

    move-wide/from16 v47, v41

    move-wide/from16 v49, v79

    move-object/from16 v51, v13

    move-object/from16 v52, v81

    invoke-direct/range {v45 .. v52}, Landroidx/media3/exoplayer/hls/playlist/c$f;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_c

    add-long v41, v41, v79

    :cond_c
    move-object v14, v3

    move-object/from16 v78, v13

    const-wide/16 v79, -0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v13, v78

    move-object/from16 v94, v81

    const/16 v22, 0x0

    const-string v12, "#EXT-X-TARGETDURATION"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->o:Ljava/util/regex/Pattern;

    invoke-static {v2, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v2

    move-object/from16 v81, v15

    int-to-long v14, v2

    const-wide/32 v34, 0xf4240

    mul-long v34, v34, v14

    :goto_3
    move-object v14, v3

    move-object/from16 v78, v13

    move-object/from16 v15, v81

    :goto_4
    move-object/from16 v81, v94

    :goto_5
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_e
    move-object/from16 v81, v15

    const-string v12, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A:Ljava/util/regex/Pattern;

    invoke-static {v2, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->o(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v86

    move-object v14, v3

    move-object/from16 v78, v13

    move-object/from16 v15, v81

    move-wide/from16 v31, v86

    goto :goto_4

    :cond_f
    const-string v12, "#EXT-X-VERSION"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s:Ljava/util/regex/Pattern;

    invoke-static {v2, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v33

    goto :goto_3

    :cond_10
    const-string v12, "#EXT-X-DEFINE"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d0:Ljava/util/regex/Pattern;

    invoke-static {v2, v12, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_11

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/d;->l:Ljava/util/Map;

    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-virtual {v5, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_11
    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->S:Ljava/util/regex/Pattern;

    invoke-static {v2, v12, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    sget-object v14, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c0:Ljava/util/regex/Pattern;

    invoke-static {v2, v14, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    :goto_6
    move-object v2, v3

    move-object/from16 v60, v8

    move-object v14, v9

    move-object/from16 v95, v10

    move-object/from16 v3, v81

    move-object/from16 v0, v82

    move-wide/from16 v45, v86

    move-object/from16 v10, v94

    move/from16 v82, v4

    :goto_7
    move-object/from16 v86, v7

    goto/16 :goto_34

    :cond_13
    const-string v12, "#EXTINF"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_14

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->B:Ljava/util/regex/Pattern;

    invoke-static {v2, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->B(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v90

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->C:Ljava/util/regex/Pattern;

    move-object/from16 v15, v23

    invoke-static {v2, v12, v15, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v44

    goto/16 :goto_3

    :cond_14
    move-object/from16 v15, v23

    const-string v12, "#EXT-X-SKIP"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    const-wide/16 v47, 0x1

    if-eqz v12, :cond_1c

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w:Ljava/util/regex/Pattern;

    invoke-static {v2, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v2

    if-eqz v1, :cond_15

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_15

    const/4 v12, 0x1

    goto :goto_8

    :cond_15
    const/4 v12, 0x0

    :goto_8
    invoke-static {v12}, Landroidx/media3/common/util/a;->g(Z)V

    invoke-static/range {p1 .. p1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/exoplayer/hls/playlist/c;

    move-object/from16 v23, v15

    iget-wide v14, v12, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    sub-long v14, v31, v14

    long-to-int v12, v14

    add-int/2addr v2, v12

    if-ltz v12, :cond_1b

    iget-object v14, v1, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-gt v2, v14, :cond_1b

    move-wide/from16 v14, v84

    :goto_9
    if-ge v12, v2, :cond_1a

    iget-object v13, v1, Landroidx/media3/exoplayer/hls/playlist/c;->r:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/exoplayer/hls/playlist/c$f;

    move-object/from16 v58, v9

    move-object/from16 v95, v10

    iget-wide v9, v1, Landroidx/media3/exoplayer/hls/playlist/c;->k:J

    cmp-long v9, v31, v9

    if-eqz v9, :cond_16

    iget v9, v1, Landroidx/media3/exoplayer/hls/playlist/c;->j:I

    sub-int v9, v9, v30

    iget v10, v13, Landroidx/media3/exoplayer/hls/playlist/c$g;->d:I

    add-int/2addr v9, v10

    invoke-virtual {v13, v14, v15, v9}, Landroidx/media3/exoplayer/hls/playlist/c$f;->b(JI)Landroidx/media3/exoplayer/hls/playlist/c$f;

    move-result-object v13

    :cond_16
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v9, v13, Landroidx/media3/exoplayer/hls/playlist/c$g;->c:J

    add-long/2addr v14, v9

    iget-wide v9, v13, Landroidx/media3/exoplayer/hls/playlist/c$g;->j:J

    const-wide/16 v45, -0x1

    cmp-long v43, v9, v45

    if-eqz v43, :cond_17

    iget-wide v0, v13, Landroidx/media3/exoplayer/hls/playlist/c$g;->i:J

    add-long v41, v0, v9

    :cond_17
    iget v0, v13, Landroidx/media3/exoplayer/hls/playlist/c$g;->d:I

    iget-object v1, v13, Landroidx/media3/exoplayer/hls/playlist/c$g;->b:Landroidx/media3/exoplayer/hls/playlist/c$f;

    iget-object v9, v13, Landroidx/media3/exoplayer/hls/playlist/c$g;->f:Landroidx/media3/common/DrmInitData;

    iget-object v10, v13, Landroidx/media3/exoplayer/hls/playlist/c$g;->g:Ljava/lang/String;

    move/from16 v43, v0

    iget-object v0, v13, Landroidx/media3/exoplayer/hls/playlist/c$g;->h:Ljava/lang/String;

    move-object/from16 v45, v1

    if-eqz v0, :cond_18

    invoke-static/range {v86 .. v87}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    :cond_18
    iget-object v0, v13, Landroidx/media3/exoplayer/hls/playlist/c$g;->h:Ljava/lang/String;

    move-object/from16 v94, v0

    :cond_19
    add-long v86, v86, v47

    const/4 v0, 0x1

    add-int/2addr v12, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v13, v10

    move-wide/from16 v53, v14

    move/from16 v83, v43

    move-object/from16 v89, v45

    move-object/from16 v10, v95

    move-object/from16 v43, v9

    move-object/from16 v9, v58

    goto :goto_9

    :cond_1a
    move-object/from16 v58, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v78, v13

    move-wide/from16 v84, v14

    move-object/from16 v15, v81

    move-object/from16 v81, v94

    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_1b
    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;

    invoke-direct {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$DeltaUpdateException;-><init>()V

    throw v0

    :cond_1c
    move-object/from16 v58, v9

    move-object/from16 v95, v10

    move-object/from16 v23, v15

    const-string v0, "#EXT-X-KEY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->K:Ljava/util/regex/Pattern;

    invoke-static {v2, v0, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->L:Ljava/util/regex/Pattern;

    const-string v9, "identity"

    invoke-static {v2, v1, v9, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    const-string v10, "NONE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-virtual {v11}, Ljava/util/TreeMap;->clear()V

    move-object/from16 v0, v22

    move-object v10, v0

    move-object/from16 v43, v10

    goto :goto_b

    :cond_1d
    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->O:Ljava/util/regex/Pattern;

    invoke-static {v2, v10, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    const-string v1, "AES-128"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    invoke-static {v2, v0, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_1e
    move-object/from16 v0, v22

    goto :goto_b

    :cond_1f
    move-object/from16 v9, v82

    if-nez v9, :cond_20

    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v82

    goto :goto_a

    :cond_20
    move-object/from16 v82, v9

    :goto_a
    invoke-static {v2, v1, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v11, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v22

    move-object/from16 v43, v0

    :goto_b
    move-object/from16 v1, p1

    move-object/from16 v78, v0

    move-object v14, v3

    move-object/from16 v9, v58

    move-object/from16 v15, v81

    const/4 v12, 0x0

    move-object/from16 v0, p0

    :goto_c
    move-object/from16 v81, v10

    move-object/from16 v10, v95

    goto/16 :goto_0

    :cond_21
    move-object/from16 v9, v82

    const-string v0, "#EXT-X-BYTERANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->G:Ljava/util/regex/Pattern;

    invoke-static {v2, v0, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v79

    array-length v1, v0

    const/4 v10, 0x1

    if-le v1, v10, :cond_22

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    move-wide/from16 v41, v0

    :cond_22
    :goto_d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v14, v3

    move-object/from16 v82, v9

    :goto_e
    move-object/from16 v78, v13

    move-object/from16 v9, v58

    move-object/from16 v15, v81

    move-object/from16 v81, v94

    move-object/from16 v10, v95

    goto/16 :goto_5

    :cond_23
    const/4 v10, 0x1

    const-string v0, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x3a

    if-eqz v0, :cond_24

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v14, v3

    move-object/from16 v82, v9

    move/from16 v29, v10

    goto :goto_e

    :cond_24
    const-string v0, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    add-int/lit8 v83, v83, 0x1

    goto :goto_d

    :cond_25
    const-string v0, "#EXT-X-PROGRAM-DATE-TIME"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    cmp-long v0, v27, v18

    if-nez v0, :cond_26

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v10

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/a1;->Z0(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v0

    sub-long v27, v0, v84

    goto :goto_d

    :cond_26
    :goto_f
    move-object v2, v3

    move/from16 v82, v4

    move-object/from16 v60, v8

    move-object v0, v9

    move-object/from16 v14, v58

    move-object/from16 v3, v81

    move-wide/from16 v45, v86

    move-object/from16 v10, v94

    goto/16 :goto_7

    :cond_27
    const-string v0, "#EXT-X-GAP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v14, v3

    move-object/from16 v82, v9

    move-object/from16 v78, v13

    move-object/from16 v9, v58

    move-object/from16 v15, v81

    move-object/from16 v81, v94

    move-object/from16 v10, v95

    const/4 v12, 0x0

    const/16 v57, 0x1

    goto/16 :goto_0

    :cond_28
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v14, v3

    move-object/from16 v82, v9

    move-object/from16 v78, v13

    move-object/from16 v9, v58

    move-object/from16 v15, v81

    move-object/from16 v81, v94

    move-object/from16 v10, v95

    const/4 v12, 0x0

    const/16 v38, 0x1

    goto/16 :goto_0

    :cond_29
    const-string v0, "#EXT-X-ENDLIST"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v14, v3

    move-object/from16 v82, v9

    move-object/from16 v78, v13

    move-object/from16 v9, v58

    move-object/from16 v15, v81

    move-object/from16 v81, v94

    move-object/from16 v10, v95

    const/4 v12, 0x0

    const/16 v39, 0x1

    goto/16 :goto_0

    :cond_2a
    const-string v0, "#EXT-X-RENDITION-REPORT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->D:Ljava/util/regex/Pattern;

    const-wide/16 v14, -0x1

    invoke-static {v2, v0, v14, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v0

    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->E:Ljava/util/regex/Pattern;

    const/4 v12, -0x1

    invoke-static {v2, v10, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    move-result v10

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    invoke-static {v2, v12, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v12, p3

    invoke-static {v12, v2}, Landroidx/media3/common/util/r0;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v14, Landroidx/media3/exoplayer/hls/playlist/c$e;

    invoke-direct {v14, v2, v0, v1, v10}, Landroidx/media3/exoplayer/hls/playlist/c$e;-><init>(Landroid/net/Uri;JI)V

    invoke-interface {v8, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_2b
    move-object/from16 v12, p3

    const-string v0, "#EXT-X-PRELOAD-HINT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    if-eqz v7, :cond_2c

    goto/16 :goto_f

    :cond_2c
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Q:Ljava/util/regex/Pattern;

    invoke-static {v2, v0, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PART"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_f

    :cond_2d
    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    invoke-static {v2, v0, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v61

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->I:Ljava/util/regex/Pattern;

    const-wide/16 v14, -0x1

    invoke-static {v2, v0, v14, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v0

    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->J:Ljava/util/regex/Pattern;

    invoke-static {v2, v10, v14, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u(Ljava/lang/String;Ljava/util/regex/Pattern;J)J

    move-result-wide v73

    move-wide/from16 v14, v86

    move-object/from16 v10, v94

    invoke-static {v14, v15, v13, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    if-nez v43, :cond_2f

    invoke-virtual {v11}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual {v11}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    move-wide/from16 v45, v14

    const/4 v12, 0x0

    new-array v14, v12, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v2, v14}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/media3/common/DrmInitData$SchemeData;

    new-instance v12, Landroidx/media3/common/DrmInitData;

    invoke-direct {v12, v9, v2}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    if-nez v40, :cond_2e

    invoke-static {v9, v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    move-result-object v40

    :cond_2e
    move-object/from16 v43, v12

    :goto_10
    const-wide/16 v14, -0x1

    goto :goto_11

    :cond_2f
    move-wide/from16 v45, v14

    goto :goto_10

    :goto_11
    cmp-long v2, v0, v14

    if-eqz v2, :cond_30

    cmp-long v12, v73, v14

    if-eqz v12, :cond_32

    :cond_30
    new-instance v7, Landroidx/media3/exoplayer/hls/playlist/c$d;

    if-eqz v2, :cond_31

    move-wide/from16 v71, v0

    goto :goto_12

    :cond_31
    move-wide/from16 v71, v18

    :goto_12
    const/16 v76, 0x0

    const/16 v77, 0x1

    const-wide/16 v63, 0x0

    const/16 v75, 0x0

    move-object/from16 v60, v7

    move-object/from16 v62, v89

    move/from16 v65, v83

    move-wide/from16 v66, v53

    move-object/from16 v68, v43

    move-object/from16 v69, v13

    invoke-direct/range {v60 .. v77}, Landroidx/media3/exoplayer/hls/playlist/c$d;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/c$f;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    :cond_32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v14, v3

    move-object/from16 v82, v9

    move-object/from16 v78, v13

    move-wide/from16 v86, v45

    move-object/from16 v9, v58

    move-object/from16 v15, v81

    const/4 v12, 0x0

    goto/16 :goto_c

    :cond_33
    move-wide/from16 v0, v86

    move-object/from16 v10, v94

    const-string v12, "#EXT-X-PART"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3b

    invoke-static {v0, v1, v13, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    invoke-static {v2, v12, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v61

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p:Ljava/util/regex/Pattern;

    invoke-static {v2, v12}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v47

    move-object v15, v7

    move-object v12, v8

    mul-double v7, v47, v45

    double-to-long v7, v7

    move/from16 v82, v4

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Z:Ljava/util/regex/Pattern;

    move-object/from16 v86, v15

    const/4 v15, 0x0

    invoke-static {v2, v4, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v4

    if-eqz v38, :cond_34

    invoke-interface/range {v58 .. v58}, Ljava/util/List;->isEmpty()Z

    move-result v45

    if-eqz v45, :cond_34

    const/16 v45, 0x1

    goto :goto_13

    :cond_34
    move/from16 v45, v15

    :goto_13
    or-int v76, v4, v45

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->a0:Ljava/util/regex/Pattern;

    invoke-static {v2, v4, v15}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v75

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->H:Ljava/util/regex/Pattern;

    invoke-static {v2, v4, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-static {v2, v14}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v4, v2, v15

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    array-length v4, v2

    move-wide/from16 v45, v14

    const/4 v14, 0x1

    if-le v4, v14, :cond_35

    aget-object v2, v2, v14

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v92

    :cond_35
    const-wide/16 v14, -0x1

    goto :goto_14

    :cond_36
    const-wide/16 v14, -0x1

    const-wide/16 v45, -0x1

    :goto_14
    cmp-long v2, v45, v14

    if-nez v2, :cond_37

    move-wide/from16 v92, v18

    :cond_37
    if-nez v43, :cond_39

    invoke-virtual {v11}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    invoke-virtual {v11}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v4

    const/4 v14, 0x0

    new-array v15, v14, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v4, v15}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroidx/media3/common/DrmInitData$SchemeData;

    new-instance v14, Landroidx/media3/common/DrmInitData;

    invoke-direct {v14, v9, v4}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    if-nez v40, :cond_38

    invoke-static {v9, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    move-result-object v40

    :cond_38
    move-object/from16 v43, v14

    :cond_39
    new-instance v4, Landroidx/media3/exoplayer/hls/playlist/c$d;

    move-object/from16 v60, v4

    const/16 v77, 0x0

    move-object/from16 v62, v89

    move-wide/from16 v63, v7

    move/from16 v65, v83

    move-wide/from16 v66, v53

    move-object/from16 v68, v43

    move-object/from16 v69, v13

    move-wide/from16 v71, v92

    move-wide/from16 v73, v45

    invoke-direct/range {v60 .. v77}, Landroidx/media3/exoplayer/hls/playlist/c$d;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/c$f;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    move-object/from16 v14, v58

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v53, v53, v7

    if-eqz v2, :cond_3a

    add-long v92, v92, v45

    :cond_3a
    move-object v8, v12

    move-object/from16 v78, v13

    move-object/from16 v15, v81

    move/from16 v4, v82

    move-object/from16 v7, v86

    const/4 v12, 0x0

    move-wide/from16 v86, v0

    move-object/from16 v82, v9

    move-object/from16 v81, v10

    move-object v9, v14

    move-object/from16 v10, v95

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_3b
    move/from16 v82, v4

    move-object/from16 v86, v7

    move-object v12, v8

    move-object/from16 v14, v58

    const-string v4, "#EXT-X-DATERANGE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->f0:Ljava/util/regex/Pattern;

    move-object/from16 v7, v23

    invoke-static {v2, v4, v7, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "com.apple.hls.interstitial"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->e0:Ljava/util/regex/Pattern;

    invoke-static {v2, v4, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v97

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l0:Ljava/util/regex/Pattern;

    invoke-static {v2, v4, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3c

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v98, v4

    goto :goto_15

    :cond_3c
    move-object/from16 v98, v22

    :goto_15
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m0:Ljava/util/regex/Pattern;

    invoke-static {v2, v4, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3d

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v99, v4

    goto :goto_16

    :cond_3d
    move-object/from16 v99, v22

    :goto_16
    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g0:Ljava/util/regex/Pattern;

    invoke-static {v2, v4, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/media3/common/util/a1;->Z0(Ljava/lang/String;)J

    move-result-wide v47

    invoke-static/range {v47 .. v48}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v100

    sget-object v4, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i0:Ljava/util/regex/Pattern;

    invoke-static {v2, v4, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3e

    invoke-static {v4}, Landroidx/media3/common/util/a1;->Z0(Ljava/lang/String;)J

    move-result-wide v47

    invoke-static/range {v47 .. v48}, Landroidx/media3/common/util/a1;->R0(J)J

    move-result-wide v47

    move-wide/from16 v102, v47

    goto :goto_17

    :cond_3e
    move-wide/from16 v102, v16

    :goto_17
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h0:Ljava/util/regex/Pattern;

    invoke-static {v2, v8, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    const-string v15, ","

    if-eqz v8, :cond_42

    invoke-static {v8, v15}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    move-object/from16 v23, v7

    array-length v7, v8

    move-object/from16 v60, v12

    const/4 v12, 0x0

    :goto_18
    if-ge v12, v7, :cond_43

    aget-object v47, v8, v12

    move/from16 v48, v7

    invoke-virtual/range {v47 .. v47}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v47

    sparse-switch v47, :sswitch_data_0

    move-object/from16 v47, v8

    :goto_19
    const/4 v8, -0x1

    goto :goto_1b

    :sswitch_0
    move-object/from16 v47, v8

    const-string v8, "POST"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    goto :goto_1a

    :cond_3f
    const/4 v8, 0x2

    goto :goto_1b

    :sswitch_1
    move-object/from16 v47, v8

    const-string v8, "ONCE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_40

    goto :goto_1a

    :cond_40
    const/4 v8, 0x1

    goto :goto_1b

    :sswitch_2
    move-object/from16 v47, v8

    const-string v8, "PRE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_41

    :goto_1a
    goto :goto_19

    :cond_41
    const/4 v8, 0x0

    :goto_1b
    packed-switch v8, :pswitch_data_0

    :goto_1c
    const/4 v7, 0x1

    goto :goto_1d

    :pswitch_0
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :goto_1d
    add-int/2addr v12, v7

    move-object/from16 v8, v47

    move/from16 v7, v48

    goto :goto_18

    :cond_42
    move-object/from16 v23, v7

    move-object/from16 v60, v12

    :cond_43
    sget-object v7, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q:Ljava/util/regex/Pattern;

    move-object v12, v9

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-static {v2, v7, v8, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v47

    const-wide/16 v49, 0x0

    cmpl-double v7, v47, v49

    if-ltz v7, :cond_44

    mul-double v8, v47, v45

    double-to-long v7, v8

    move-wide/from16 v104, v7

    goto :goto_1e

    :cond_44
    move-wide/from16 v104, v16

    :goto_1e
    sget-object v7, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j0:Ljava/util/regex/Pattern;

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-static {v2, v7, v8, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v47

    cmpl-double v7, v47, v49

    if-ltz v7, :cond_45

    mul-double v7, v47, v45

    double-to-long v7, v7

    move-wide/from16 v106, v7

    goto :goto_1f

    :cond_45
    move-wide/from16 v106, v16

    :goto_1f
    sget-object v7, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k0:Ljava/util/regex/Pattern;

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v109

    sget-object v7, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n0:Ljava/util/regex/Pattern;

    const-wide/16 v8, 0x1

    invoke-static {v2, v7, v8, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v47

    cmpl-double v7, v47, v8

    if-eqz v7, :cond_46

    mul-double v7, v47, v45

    double-to-long v7, v7

    move-wide/from16 v110, v7

    goto :goto_20

    :cond_46
    move-wide/from16 v110, v16

    :goto_20
    sget-object v7, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->o0:Ljava/util/regex/Pattern;

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-static {v2, v7, v8, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v7

    cmpl-double v9, v7, v49

    if-ltz v9, :cond_47

    mul-double v7, v7, v45

    double-to-long v7, v7

    move-wide/from16 v112, v7

    goto :goto_21

    :cond_47
    move-wide/from16 v112, v16

    :goto_21
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p0:Ljava/util/regex/Pattern;

    invoke-static {v2, v8, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_49

    invoke-static {v8, v15}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    move-object/from16 v55, v12

    const/4 v12, 0x0

    :goto_22
    if-ge v12, v9, :cond_4a

    aget-object v45, v8, v12

    move-object/from16 v46, v8

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move/from16 v45, v9

    const-string v9, "IN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    const-string v9, "OUT"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    :goto_23
    const/4 v8, 0x1

    goto :goto_24

    :cond_48
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :goto_24
    add-int/2addr v12, v8

    move/from16 v9, v45

    move-object/from16 v8, v46

    goto :goto_22

    :cond_49
    move-object/from16 v55, v12

    :cond_4a
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q0:Ljava/util/regex/Pattern;

    invoke-static {v2, v9, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4c

    invoke-static {v9, v15}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v12, v9

    const/4 v15, 0x0

    :goto_25
    if-ge v15, v12, :cond_4c

    aget-object v45, v9, v15

    move-object/from16 v46, v9

    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move/from16 v45, v12

    const-string v12, "JUMP"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4b

    const-string v12, "SKIP"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4b

    :goto_26
    const/4 v9, 0x1

    goto :goto_27

    :cond_4b
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :goto_27
    add-int/2addr v15, v9

    move/from16 v12, v45

    move-object/from16 v9, v46

    goto :goto_25

    :cond_4c
    new-instance v9, Lcom/google/common/collect/ImmutableList$a;

    invoke-direct {v9}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    const/16 v12, 0x11

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s0:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    :goto_28
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v15

    if-eqz v15, :cond_53

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v45

    sparse-switch v45, :sswitch_data_1

    move-object/from16 v45, v12

    :goto_29
    const/4 v12, -0x1

    goto :goto_2b

    :sswitch_3
    move-object/from16 v45, v12

    const-string v12, "X-ASSET-URI="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4d

    goto :goto_2a

    :cond_4d
    const/4 v12, 0x5

    goto :goto_2b

    :sswitch_4
    move-object/from16 v45, v12

    const-string v12, "X-RESUME-OFFSET="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4e

    goto :goto_2a

    :cond_4e
    const/4 v12, 0x4

    goto :goto_2b

    :sswitch_5
    move-object/from16 v45, v12

    const-string v12, "X-RESTRICT="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4f

    goto :goto_2a

    :cond_4f
    const/4 v12, 0x3

    goto :goto_2b

    :sswitch_6
    move-object/from16 v45, v12

    const-string v12, "X-ASSET-LIST="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_50

    goto :goto_2a

    :cond_50
    const/4 v12, 0x2

    goto :goto_2b

    :sswitch_7
    move-object/from16 v45, v12

    const-string v12, "X-PLAYOUT-LIMIT="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_51

    goto :goto_2a

    :cond_51
    const/4 v12, 0x1

    goto :goto_2b

    :sswitch_8
    move-object/from16 v45, v12

    const-string v12, "X-SNAP="

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_52

    :goto_2a
    goto :goto_29

    :cond_52
    const/4 v12, 0x0

    :goto_2b
    packed-switch v12, :pswitch_data_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v46, 0x1

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v61, v3

    const/4 v3, 0x0

    invoke-virtual {v15, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/exoplayer/hls/playlist/c$b;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    goto :goto_2c

    :pswitch_1
    move-object/from16 v61, v3

    :goto_2c
    move-object/from16 v12, v45

    move-object/from16 v3, v61

    goto/16 :goto_28

    :cond_53
    move-object/from16 v61, v3

    if-nez v99, :cond_54

    if-nez v98, :cond_55

    :cond_54
    if-eqz v99, :cond_56

    if-nez v98, :cond_56

    :cond_55
    new-instance v2, Landroidx/media3/exoplayer/hls/playlist/c$c;

    move-object/from16 v96, v2

    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    move-result-object v116

    move-object/from16 v108, v4

    move-object/from16 v114, v7

    move-object/from16 v115, v8

    invoke-direct/range {v96 .. v116}, Landroidx/media3/exoplayer/hls/playlist/c$c;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;JJJJLjava/util/List;ZJJLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v3, v81

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    :cond_56
    move-object/from16 v3, v81

    :cond_57
    :goto_2d
    move-wide/from16 v45, v0

    move-object/from16 v0, v55

    move-object/from16 v2, v61

    goto/16 :goto_34

    :cond_58
    move-object/from16 v61, v3

    move-object/from16 v23, v7

    :goto_2e
    move-object/from16 v55, v9

    move-object/from16 v60, v12

    move-object/from16 v3, v81

    goto :goto_2f

    :cond_59
    move-object/from16 v61, v3

    goto :goto_2e

    :goto_2f
    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_57

    invoke-static {v0, v1, v13, v10}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-long v0, v0, v47

    invoke-static {v2, v5}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->C(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/hls/playlist/c$f;

    const-wide/16 v8, -0x1

    cmp-long v12, v79, v8

    if-nez v12, :cond_5a

    move-wide/from16 v8, v18

    goto :goto_30

    :cond_5a
    if-eqz v88, :cond_5b

    if-nez v89, :cond_5b

    if-nez v7, :cond_5b

    new-instance v7, Landroidx/media3/exoplayer/hls/playlist/c$f;

    const/16 v51, 0x0

    const/16 v52, 0x0

    const-wide/16 v47, 0x0

    move-object/from16 v45, v7

    move-object/from16 v46, v2

    move-wide/from16 v49, v41

    invoke-direct/range {v45 .. v52}, Landroidx/media3/exoplayer/hls/playlist/c$f;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    move-wide/from16 v8, v41

    :goto_30
    if-nez v43, :cond_5c

    invoke-virtual {v11}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5c

    invoke-virtual {v11}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v15

    move-wide/from16 v62, v0

    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/media3/common/DrmInitData$SchemeData;

    invoke-interface {v15, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/common/DrmInitData$SchemeData;

    new-instance v15, Landroidx/media3/common/DrmInitData;

    move-object/from16 v0, v55

    invoke-direct {v15, v0, v1}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    if-nez v40, :cond_5d

    invoke-static {v0, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)Landroidx/media3/common/DrmInitData;

    move-result-object v40

    goto :goto_31

    :cond_5c
    move-wide/from16 v62, v0

    move-object/from16 v0, v55

    move-object/from16 v15, v43

    :cond_5d
    :goto_31
    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/c$f;

    if-eqz v89, :cond_5e

    move-object/from16 v43, v89

    goto :goto_32

    :cond_5e
    move-object/from16 v43, v7

    :goto_32
    move-object/from16 v41, v1

    move-object/from16 v42, v2

    move-wide/from16 v45, v90

    move/from16 v47, v83

    move-wide/from16 v48, v84

    move-object/from16 v50, v15

    move-object/from16 v51, v13

    move-object/from16 v52, v4

    move-wide/from16 v53, v8

    move-wide/from16 v55, v79

    move-object/from16 v58, v14

    invoke-direct/range {v41 .. v58}, Landroidx/media3/exoplayer/hls/playlist/c$f;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/c$f;Ljava/lang/String;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/List;)V

    move-object/from16 v2, v61

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v53, v84, v90

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v12, :cond_5f

    add-long v8, v8, v79

    :cond_5f
    move-wide/from16 v41, v8

    move-object v9, v1

    move-object v14, v2

    move-object/from16 v81, v10

    move-object/from16 v78, v13

    move-object/from16 v43, v15

    move-wide/from16 v90, v18

    move-object/from16 v44, v23

    move-wide/from16 v84, v53

    move-object/from16 v8, v60

    move/from16 v4, v82

    move-object/from16 v7, v86

    move-object/from16 v10, v95

    const/4 v12, 0x0

    const/16 v57, 0x0

    const-wide/16 v79, -0x1

    move-object/from16 v1, p1

    move-object/from16 v82, v0

    move-object v15, v3

    move-wide/from16 v86, v62

    :goto_33
    move-object/from16 v0, p0

    goto/16 :goto_0

    :goto_34
    move-object/from16 v1, p1

    move-object v15, v3

    move-object/from16 v81, v10

    move-object/from16 v78, v13

    move-object v9, v14

    move-object/from16 v8, v60

    move/from16 v4, v82

    move-object/from16 v7, v86

    move-object/from16 v10, v95

    const/4 v12, 0x0

    move-object/from16 v82, v0

    move-object v14, v2

    move-wide/from16 v86, v45

    goto :goto_33

    :cond_60
    move/from16 v82, v4

    move-object/from16 v86, v7

    move-object/from16 v60, v8

    move-object/from16 v95, v10

    move-object v2, v14

    move-object v3, v15

    move-object v14, v9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_35
    invoke-interface/range {v60 .. v60}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_64

    move-object/from16 v4, v60

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/exoplayer/hls/playlist/c$e;

    iget-wide v6, v5, Landroidx/media3/exoplayer/hls/playlist/c$e;->b:J

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    if-nez v10, :cond_61

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    int-to-long v6, v6

    add-long v6, v31, v6

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v6, v10

    :cond_61
    iget v10, v5, Landroidx/media3/exoplayer/hls/playlist/c$e;->c:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_63

    cmp-long v12, v36, v16

    if-eqz v12, :cond_63

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_62

    invoke-static {v2}, Lcom/google/common/collect/g3;->g(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/exoplayer/hls/playlist/c$f;

    iget-object v10, v10, Landroidx/media3/exoplayer/hls/playlist/c$f;->m:Ljava/util/List;

    goto :goto_36

    :cond_62
    move-object v10, v14

    :goto_36
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v12, 0x1

    sub-int/2addr v10, v12

    goto :goto_37

    :cond_63
    const/4 v12, 0x1

    :goto_37
    iget-object v5, v5, Landroidx/media3/exoplayer/hls/playlist/c$e;->a:Landroid/net/Uri;

    new-instance v13, Landroidx/media3/exoplayer/hls/playlist/c$e;

    invoke-direct {v13, v5, v6, v7, v10}, Landroidx/media3/exoplayer/hls/playlist/c$e;-><init>(Landroid/net/Uri;JI)V

    invoke-interface {v0, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/2addr v1, v12

    move-object/from16 v60, v4

    goto :goto_35

    :cond_64
    const/4 v12, 0x1

    if-eqz v86, :cond_65

    move-object/from16 v7, v86

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_65
    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/c;

    cmp-long v4, v27, v18

    if-eqz v4, :cond_66

    move/from16 v78, v12

    goto :goto_38

    :cond_66
    const/16 v78, 0x0

    :goto_38
    move-object v7, v1

    move/from16 v8, v82

    move-object/from16 v58, v14

    move-object/from16 v9, p3

    move-object/from16 v10, v95

    move-wide/from16 v11, v24

    move/from16 v13, v26

    move-wide/from16 v14, v27

    move/from16 v16, v29

    move/from16 v17, v30

    move-wide/from16 v18, v31

    move/from16 v20, v33

    move-wide/from16 v21, v34

    move-wide/from16 v23, v36

    move/from16 v25, v38

    move/from16 v26, v39

    move/from16 v27, v78

    move-object/from16 v28, v40

    move-object/from16 v29, v2

    move-object/from16 v30, v58

    move-object/from16 v31, v59

    move-object/from16 v32, v0

    move-object/from16 v33, v3

    invoke-direct/range {v7 .. v33}, Landroidx/media3/exoplayer/hls/playlist/c;-><init>(ILjava/lang/String;Ljava/util/List;JZJZIJIJJZZZLandroidx/media3/common/DrmInitData;Ljava/util/List;Ljava/util/List;Landroidx/media3/exoplayer/hls/playlist/c$h;Ljava/util/Map;Ljava/util/List;)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13683 -> :sswitch_2
        0x251681 -> :sswitch_1
        0x2590a0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x7f5b7c02 -> :sswitch_8
        -0x8e0f436 -> :sswitch_7
        0x17ad642d -> :sswitch_6
        0x57c501cc -> :sswitch_5
        0x6837ce7f -> :sswitch_4
        0x6c2295e3 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static q(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/d;
    .locals 36

    move-object/from16 v1, p1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    const/16 v17, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;->a()Z

    move-result v18

    const-string v0, "application/x-mpegURL"

    const-string v3, "/"

    if-eqz v18, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;->b()Ljava/lang/String;

    move-result-object v2

    const-string v15, "#EXT"

    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v15, "#EXT-X-I-FRAME-STREAM-INF"

    invoke-virtual {v2, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    const-string v4, "#EXT-X-DEFINE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->S:Ljava/util/regex/Pattern;

    invoke-static {v2, v0, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c0:Ljava/util/regex/Pattern;

    invoke-static {v2, v3, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string v4, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v1, v5

    move-object/from16 v32, v7

    move-object/from16 v31, v8

    move-object/from16 v30, v9

    move-object/from16 v28, v10

    move-object/from16 v33, v12

    move-object/from16 v20, v13

    move-object/from16 v29, v14

    const/16 v16, 0x1

    goto/16 :goto_a

    :cond_2
    const-string v4, "#EXT-X-MEDIA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v4, "#EXT-X-SESSION-KEY"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->L:Ljava/util/regex/Pattern;

    const-string v3, "identity"

    invoke-static {v2, v0, v3, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->K:Ljava/util/regex/Pattern;

    invoke-static {v2, v3, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/media3/common/DrmInitData;

    const/4 v4, 0x1

    new-array v15, v4, [Landroidx/media3/common/DrmInitData$SchemeData;

    const/4 v4, 0x0

    aput-object v0, v15, v4

    invoke-direct {v3, v2, v15}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v4, "#EXT-X-STREAM-INF"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    if-eqz v15, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    move-object v1, v5

    move-object/from16 v32, v7

    move-object/from16 v31, v8

    move-object/from16 v30, v9

    move-object/from16 v28, v10

    move-object/from16 v33, v12

    move-object/from16 v20, v13

    move-object/from16 v29, v14

    goto/16 :goto_a

    :cond_6
    :goto_2
    const-string v4, "CLOSED-CAPTIONS=NONE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    or-int v17, v17, v4

    if-eqz v15, :cond_7

    const/16 v4, 0x4000

    move-object/from16 v20, v13

    goto :goto_3

    :cond_7
    move-object/from16 v20, v13

    const/4 v4, 0x0

    :goto_3
    sget-object v13, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h:Ljava/util/regex/Pattern;

    invoke-static {v2, v13}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v13

    move-object/from16 v28, v10

    sget-object v10, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->c:Ljava/util/regex/Pattern;

    move-object/from16 v29, v14

    const/4 v14, -0x1

    invoke-static {v2, v10, v14}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->t(Ljava/lang/String;Ljava/util/regex/Pattern;I)I

    move-result v10

    sget-object v14, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->j:Ljava/util/regex/Pattern;

    invoke-static {v2, v14, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v30, v9

    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->k:Ljava/util/regex/Pattern;

    invoke-static {v2, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v31, v8

    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->l:Ljava/util/regex/Pattern;

    invoke-static {v2, v8, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v32, v7

    const-string v7, ","

    if-eqz v8, :cond_9

    invoke-static {v8, v7}, Landroidx/media3/common/util/a1;->p1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/16 v19, 0x0

    aget-object v8, v8, v19

    invoke-static {v8, v3}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v8, v3, v19

    move-object/from16 v21, v8

    array-length v8, v3

    move-object/from16 v33, v12

    const/4 v12, 0x1

    if-le v8, v12, :cond_8

    aget-object v3, v3, v12

    move-object v8, v3

    move-object/from16 v34, v5

    move-object/from16 v3, v21

    :goto_4
    const/4 v12, 0x2

    goto :goto_6

    :cond_8
    move-object/from16 v34, v5

    move-object/from16 v3, v21

    :goto_5
    const/4 v8, 0x0

    goto :goto_4

    :cond_9
    move-object/from16 v33, v12

    move-object/from16 v34, v5

    const/4 v3, 0x0

    goto :goto_5

    :goto_6
    invoke-static {v9, v12}, Landroidx/media3/common/util/a1;->S(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5, v3, v8}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    if-eqz v3, :cond_a

    goto :goto_7

    :cond_a
    move-object v3, v5

    :goto_7
    invoke-static {v9, v12}, Landroidx/media3/common/util/a1;->T(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_b
    move-object v9, v3

    :cond_c
    sget-object v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->m:Ljava/util/regex/Pattern;

    invoke-static {v2, v3, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v5, "x"

    invoke-static {v3, v5}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v5, :cond_d

    if-gtz v3, :cond_e

    :cond_d
    const/4 v3, -0x1

    const/4 v5, -0x1

    :cond_e
    sget-object v7, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->n:Ljava/util/regex/Pattern;

    invoke-static {v2, v7, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    goto :goto_8

    :cond_f
    const/high16 v7, -0x40800000    # -1.0f

    :goto_8
    sget-object v8, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->d:Ljava/util/regex/Pattern;

    invoke-static {v2, v8, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->e:Ljava/util/regex/Pattern;

    invoke-static {v2, v12, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    sget-object v14, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->f:Ljava/util/regex/Pattern;

    invoke-static {v2, v14, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v35, v14

    sget-object v14, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g:Ljava/util/regex/Pattern;

    invoke-static {v2, v14, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    if-eqz v15, :cond_10

    sget-object v15, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    invoke-static {v2, v15, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/r0;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_9

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;->a()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->C(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/media3/common/util/r0;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_9
    new-instance v15, Landroidx/media3/common/r$b;

    invoke-direct {v15}, Landroidx/media3/common/r$b;-><init>()V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v15, v1}, Landroidx/media3/common/r$b;->e0(I)Landroidx/media3/common/r$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/media3/common/r$b;->Q(I)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroidx/media3/common/r$b;->p0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroidx/media3/common/r$b;->b0(F)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v23

    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/d$b;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v24, v8

    move-object/from16 v25, v12

    move-object/from16 v26, v35

    move-object/from16 v27, v14

    invoke-direct/range {v21 .. v27}, Landroidx/media3/exoplayer/hls/playlist/d$b;-><init>(Landroid/net/Uri;Landroidx/media3/common/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v34

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    new-instance v2, Landroidx/media3/exoplayer/hls/s$a;

    move-object/from16 v21, v2

    move/from16 v22, v10

    move/from16 v23, v13

    move-object/from16 v24, v8

    move-object/from16 v25, v12

    move-object/from16 v26, v35

    move-object/from16 v27, v14

    invoke-direct/range {v21 .. v27}, Landroidx/media3/exoplayer/hls/s$a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    move-object v5, v1

    move-object/from16 v13, v20

    move-object/from16 v10, v28

    move-object/from16 v14, v29

    move-object/from16 v9, v30

    move-object/from16 v8, v31

    move-object/from16 v7, v32

    move-object/from16 v12, v33

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_12
    const-string v0, "#EXT-X-STREAM-INF must be followed by another line"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_13
    move-object v1, v5

    move-object/from16 v32, v7

    move-object/from16 v31, v8

    move-object/from16 v30, v9

    move-object/from16 v28, v10

    move-object/from16 v33, v12

    move-object/from16 v20, v13

    move-object/from16 v29, v14

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    :goto_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_16

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/exoplayer/hls/playlist/d$b;

    iget-object v8, v7, Landroidx/media3/exoplayer/hls/playlist/d$b;->a:Landroid/net/Uri;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v8, v7, Landroidx/media3/exoplayer/hls/playlist/d$b;->b:Landroidx/media3/common/r;

    iget-object v8, v8, Landroidx/media3/common/r;->l:Landroidx/media3/common/x;

    if-nez v8, :cond_14

    const/4 v8, 0x1

    goto :goto_c

    :cond_14
    const/4 v8, 0x0

    :goto_c
    invoke-static {v8}, Landroidx/media3/common/util/a;->g(Z)V

    new-instance v8, Landroidx/media3/exoplayer/hls/s;

    iget-object v9, v7, Landroidx/media3/exoplayer/hls/playlist/d$b;->a:Landroid/net/Uri;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-static {v9}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    const/4 v10, 0x0

    invoke-direct {v8, v10, v10, v9}, Landroidx/media3/exoplayer/hls/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v9, Landroidx/media3/common/x;

    const/4 v12, 0x1

    new-array v13, v12, [Landroidx/media3/common/x$a;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    invoke-direct {v9, v13}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V

    iget-object v8, v7, Landroidx/media3/exoplayer/hls/playlist/d$b;->b:Landroidx/media3/common/r;

    invoke-virtual {v8}, Landroidx/media3/common/r;->b()Landroidx/media3/common/r$b;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/media3/exoplayer/hls/playlist/d$b;->a(Landroidx/media3/common/r;)Landroidx/media3/exoplayer/hls/playlist/d$b;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_15
    const/4 v10, 0x0

    const/4 v12, 0x1

    :goto_d
    add-int/2addr v5, v12

    goto :goto_b

    :cond_16
    const/4 v10, 0x0

    move-object v1, v10

    move-object v8, v1

    const/4 v2, 0x0

    :goto_e
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_28

    move-object/from16 v5, v33

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    sget-object v9, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->T:Ljava/util/regex/Pattern;

    invoke-static {v7, v9, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    sget-object v12, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->S:Ljava/util/regex/Pattern;

    invoke-static {v7, v12, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroidx/media3/common/r$b;

    invoke-direct {v13}, Landroidx/media3/common/r$b;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/media3/common/r$b;->f0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroidx/media3/common/r$b;->h0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v13

    invoke-virtual {v13, v0}, Landroidx/media3/common/r$b;->U(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v13

    invoke-static {v7}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroidx/media3/common/r$b;->w0(I)Landroidx/media3/common/r$b;

    move-result-object v13

    invoke-static {v7, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->x(Ljava/lang/String;Ljava/util/Map;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroidx/media3/common/r$b;->s0(I)Landroidx/media3/common/r$b;

    move-result-object v13

    sget-object v14, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->R:Ljava/util/regex/Pattern;

    invoke-static {v7, v14, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/media3/common/r$b;->j0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v13

    sget-object v14, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->N:Ljava/util/regex/Pattern;

    invoke-static {v7, v14, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v15, p1

    if-nez v14, :cond_17

    move-object v14, v10

    goto :goto_f

    :cond_17
    invoke-static {v15, v14}, Landroidx/media3/common/util/r0;->f(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    :goto_f
    new-instance v10, Landroidx/media3/common/x;

    move-object/from16 v21, v0

    new-instance v0, Landroidx/media3/exoplayer/hls/s;

    move-object/from16 v33, v5

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v9, v12, v5}, Landroidx/media3/exoplayer/hls/s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 v5, 0x1

    new-array v15, v5, [Landroidx/media3/common/x$a;

    const/4 v5, 0x0

    aput-object v0, v15, v5

    invoke-direct {v10, v15}, Landroidx/media3/common/x;-><init>([Landroidx/media3/common/x$a;)V

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->P:Ljava/util/regex/Pattern;

    invoke-static {v7, v0, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_10
    const/4 v0, -0x1

    goto :goto_11

    :sswitch_0
    const-string v5, "VIDEO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_10

    :cond_18
    const/4 v0, 0x3

    goto :goto_11

    :sswitch_1
    const-string v5, "AUDIO"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_10

    :cond_19
    const/4 v0, 0x2

    goto :goto_11

    :sswitch_2
    const-string v5, "CLOSED-CAPTIONS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_10

    :cond_1a
    const/4 v0, 0x1

    goto :goto_11

    :sswitch_3
    const-string v5, "SUBTITLES"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_10

    :cond_1b
    const/4 v0, 0x0

    :goto_11
    packed-switch v0, :pswitch_data_0

    :goto_12
    move-object/from16 p0, v8

    move-object/from16 v9, v30

    move-object/from16 v8, v31

    move-object/from16 v5, v32

    :goto_13
    const/4 v7, 0x2

    const/4 v15, 0x3

    const/16 v19, 0x0

    goto/16 :goto_19

    :pswitch_0
    invoke-static {v6, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->g(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/d$b;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/d$b;->b:Landroidx/media3/common/r;

    iget-object v5, v0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroidx/media3/common/util/a1;->S(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v7

    invoke-static {v5}, Landroidx/media3/common/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v5

    iget v7, v0, Landroidx/media3/common/r;->v:I

    invoke-virtual {v5, v7}, Landroidx/media3/common/r$b;->B0(I)Landroidx/media3/common/r$b;

    move-result-object v5

    iget v7, v0, Landroidx/media3/common/r;->w:I

    invoke-virtual {v5, v7}, Landroidx/media3/common/r$b;->d0(I)Landroidx/media3/common/r$b;

    move-result-object v5

    iget v0, v0, Landroidx/media3/common/r;->x:F

    invoke-virtual {v5, v0}, Landroidx/media3/common/r$b;->b0(F)Landroidx/media3/common/r$b;

    :cond_1c
    if-nez v14, :cond_1d

    goto :goto_12

    :cond_1d
    invoke-virtual {v13, v10}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/d$a;

    invoke-virtual {v13}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v5

    invoke-direct {v0, v14, v5, v9, v12}, Landroidx/media3/exoplayer/hls/playlist/d$a;-><init>(Landroid/net/Uri;Landroidx/media3/common/r;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v32

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 p0, v8

    move-object/from16 v9, v30

    move-object/from16 v8, v31

    goto :goto_13

    :pswitch_1
    move-object/from16 v5, v32

    invoke-static {v6, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->e(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/d$b;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v15, v0, Landroidx/media3/exoplayer/hls/playlist/d$b;->b:Landroidx/media3/common/r;

    iget-object v15, v15, Landroidx/media3/common/r;->k:Ljava/lang/String;

    move-object/from16 p0, v8

    const/4 v8, 0x1

    invoke-static {v15, v8}, Landroidx/media3/common/util/a1;->S(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    invoke-static {v15}, Landroidx/media3/common/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_14

    :cond_1e
    move-object/from16 p0, v8

    const/4 v8, 0x0

    :goto_14
    sget-object v15, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i:Ljava/util/regex/Pattern;

    invoke-static {v7, v15, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1f

    invoke-static {v7, v3}, Landroidx/media3/common/util/a1;->p1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v19, 0x0

    aget-object v15, v15, v19

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v13, v15}, Landroidx/media3/common/r$b;->R(I)Landroidx/media3/common/r$b;

    const-string v15, "audio/eac3"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_20

    const-string v15, "/JOC"

    invoke-virtual {v7, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    const-string v7, "ec+3"

    invoke-virtual {v13, v7}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    const-string v8, "audio/eac3-joc"

    goto :goto_15

    :cond_1f
    const/16 v19, 0x0

    :cond_20
    :goto_15
    invoke-virtual {v13, v8}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    if-eqz v14, :cond_22

    invoke-virtual {v13, v10}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/d$a;

    invoke-virtual {v13}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v7

    invoke-direct {v0, v14, v7, v9, v12}, Landroidx/media3/exoplayer/hls/playlist/d$a;-><init>(Landroid/net/Uri;Landroidx/media3/common/r;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v31

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    move-object/from16 v9, v30

    const/4 v7, 0x2

    const/4 v15, 0x3

    goto/16 :goto_19

    :cond_22
    move-object/from16 v8, v31

    if-eqz v0, :cond_21

    invoke-virtual {v13}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v0

    move-object/from16 v9, v30

    const/4 v7, 0x2

    :goto_16
    const/4 v10, 0x1

    const/4 v15, 0x3

    goto/16 :goto_1a

    :pswitch_2
    move-object/from16 p0, v8

    move-object/from16 v8, v31

    move-object/from16 v5, v32

    const/16 v19, 0x0

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->V:Ljava/util/regex/Pattern;

    invoke-static {v7, v0, v11}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->A(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v7, "CC"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v9, "application/cea-608"

    goto :goto_17

    :cond_23
    const/4 v7, 0x2

    const/4 v9, 0x7

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v9, "application/cea-708"

    :goto_17
    if-nez v1, :cond_24

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_24
    invoke-virtual {v13, v9}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroidx/media3/common/r$b;->O(I)Landroidx/media3/common/r$b;

    invoke-virtual {v13}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v9, v30

    goto :goto_16

    :pswitch_3
    move-object/from16 p0, v8

    move-object/from16 v8, v31

    move-object/from16 v5, v32

    const/4 v7, 0x2

    const/16 v19, 0x0

    invoke-static {v6, v9}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->f(Ljava/util/ArrayList;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/d$b;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, v0, Landroidx/media3/exoplayer/hls/playlist/d$b;->b:Landroidx/media3/common/r;

    iget-object v0, v0, Landroidx/media3/common/r;->k:Ljava/lang/String;

    const/4 v15, 0x3

    invoke-static {v0, v15}, Landroidx/media3/common/util/a1;->S(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/media3/common/r$b;->S(Ljava/lang/String;)Landroidx/media3/common/r$b;

    invoke-static {v0}, Landroidx/media3/common/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_25
    const/4 v15, 0x3

    const/4 v0, 0x0

    :goto_18
    if-nez v0, :cond_26

    const-string v0, "text/vtt"

    :cond_26
    invoke-virtual {v13, v0}, Landroidx/media3/common/r$b;->u0(Ljava/lang/String;)Landroidx/media3/common/r$b;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroidx/media3/common/r$b;->n0(Landroidx/media3/common/x;)Landroidx/media3/common/r$b;

    if-eqz v14, :cond_27

    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/d$a;

    invoke-virtual {v13}, Landroidx/media3/common/r$b;->N()Landroidx/media3/common/r;

    move-result-object v10

    invoke-direct {v0, v14, v10, v9, v12}, Landroidx/media3/exoplayer/hls/playlist/d$a;-><init>(Landroid/net/Uri;Landroidx/media3/common/r;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v9, v30

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_27
    move-object/from16 v9, v30

    const-string v0, "HlsPlaylistParser"

    const-string v10, "EXT-X-MEDIA tag with missing mandatory URI attribute: skipping"

    invoke-static {v0, v10}, Landroidx/media3/common/util/u;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    move-object/from16 v0, p0

    const/4 v10, 0x1

    :goto_1a
    add-int/2addr v2, v10

    move-object/from16 v32, v5

    move-object/from16 v31, v8

    move-object/from16 v30, v9

    const/4 v10, 0x0

    move-object v8, v0

    move-object/from16 v0, v21

    goto/16 :goto_e

    :cond_28
    move-object/from16 p0, v8

    move-object/from16 v9, v30

    move-object/from16 v8, v31

    move-object/from16 v5, v32

    if-eqz v17, :cond_29

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v10, v0

    goto :goto_1b

    :cond_29
    move-object v10, v1

    :goto_1b
    new-instance v13, Landroidx/media3/exoplayer/hls/playlist/d;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    move-object v3, v4

    move-object v4, v5

    move-object v5, v8

    move-object v6, v9

    move-object/from16 v7, v28

    move-object/from16 v8, p0

    move-object v9, v10

    move/from16 v10, v16

    move-object/from16 v12, v20

    invoke-direct/range {v0 .. v12}, Landroidx/media3/exoplayer/hls/playlist/d;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/media3/common/r;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V

    return-object v13

    nop

    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_3
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .locals 0

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "YES"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private static s(Ljava/lang/String;Ljava/util/regex/Pattern;D)D
    .locals 0

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method private static t(Ljava/lang/String;Ljava/util/regex/Pattern;I)I
    .locals 0

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private static u(Ljava/lang/String;Ljava/util/regex/Pattern;J)J
    .locals 0

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method private static v(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/lang/String;

    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2, p3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->C(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method private static w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static x(Ljava/lang/String;Ljava/util/Map;)I
    .locals 1

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->U:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->w(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const-string p1, ","

    invoke-static {p0, p1}, Landroidx/media3/common/util/a1;->o1(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string p1, "public.accessibility.describes-video"

    invoke-static {p0, p1}, Landroidx/media3/common/util/a1;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v0, 0x200

    :cond_1
    const-string p1, "public.accessibility.transcribes-spoken-dialog"

    invoke-static {p0, p1}, Landroidx/media3/common/util/a1;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    or-int/lit16 v0, v0, 0x1000

    :cond_2
    const-string p1, "public.accessibility.describes-music-and-sound"

    invoke-static {p0, p1}, Landroidx/media3/common/util/a1;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    or-int/lit16 v0, v0, 0x400

    :cond_3
    const-string p1, "public.easy-to-read"

    invoke-static {p0, p1}, Landroidx/media3/common/util/a1;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    or-int/lit16 v0, v0, 0x2000

    :cond_4
    return v0
.end method

.method private static y(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->X:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v0

    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->Y:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    sget-object v2, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->W:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    return v0
.end method

.method private static z(Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/c$h;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->u:Ljava/util/regex/Pattern;

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v4

    cmpl-double v1, v4, v2

    const-wide v6, 0x412e848000000000L    # 1000000.0

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_0

    move-wide v11, v8

    goto :goto_0

    :cond_0
    mul-double/2addr v4, v6

    double-to-long v4, v4

    move-wide v11, v4

    :goto_0
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->v:Ljava/util/regex/Pattern;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v13

    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->x:Ljava/util/regex/Pattern;

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v14

    cmpl-double v1, v14, v2

    if-nez v1, :cond_1

    move-wide v14, v8

    goto :goto_1

    :cond_1
    mul-double/2addr v14, v6

    double-to-long v14, v14

    :goto_1
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->y:Ljava/util/regex/Pattern;

    invoke-static {v0, v1, v2, v3}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->s(Ljava/lang/String;Ljava/util/regex/Pattern;D)D

    move-result-wide v16

    cmpl-double v1, v16, v2

    if-nez v1, :cond_2

    :goto_2
    move-wide/from16 v16, v8

    goto :goto_3

    :cond_2
    mul-double v1, v16, v6

    double-to-long v8, v1

    goto :goto_2

    :goto_3
    sget-object v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->z:Ljava/util/regex/Pattern;

    invoke-static {v0, v1, v4}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->r(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v18

    new-instance v0, Landroidx/media3/exoplayer/hls/playlist/c$h;

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Landroidx/media3/exoplayer/hls/playlist/c$h;-><init>(JZJJZ)V

    return-object v0
.end method


# virtual methods
.method public i(Landroid/net/Uri;Ljava/io/InputStream;)Lc2/d;
    .locals 4

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    :try_start_0
    invoke-static {v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->a(Ljava/io/BufferedReader;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "#EXT-X-STREAM-INF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;

    invoke-direct {v1, p2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->q(Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/d;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroidx/media3/common/util/a1;->m(Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :try_start_1
    const-string v3, "#EXT-X-TARGETDURATION"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-MEDIA-SEQUENCE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXTINF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-KEY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-BYTERANGE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-DISCONTINUITY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-DISCONTINUITY-SEQUENCE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "#EXT-X-ENDLIST"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->a:Landroidx/media3/exoplayer/hls/playlist/d;

    iget-object v2, p0, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->b:Landroidx/media3/exoplayer/hls/playlist/c;

    new-instance v3, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;

    invoke-direct {v3, p2, v0}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, v3, p1}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->p(Landroidx/media3/exoplayer/hls/playlist/d;Landroidx/media3/exoplayer/hls/playlist/c;Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser$a;Ljava/lang/String;)Landroidx/media3/exoplayer/hls/playlist/c;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroidx/media3/common/util/a1;->m(Ljava/io/Closeable;)V

    return-object p1

    :cond_4
    invoke-static {v0}, Landroidx/media3/common/util/a1;->m(Ljava/io/Closeable;)V

    const-string p1, "Failed to parse the playlist, could not identify any tags."

    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1

    :cond_5
    :try_start_2
    const-string p1, "Input does not start with the #EXTM3U header."

    invoke-static {p1, v2}, Landroidx/media3/common/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {v0}, Landroidx/media3/common/util/a1;->m(Ljava/io/Closeable;)V

    throw p1
.end method

.method public bridge synthetic parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/media3/exoplayer/hls/playlist/HlsPlaylistParser;->i(Landroid/net/Uri;Ljava/io/InputStream;)Lc2/d;

    move-result-object p1

    return-object p1
.end method
