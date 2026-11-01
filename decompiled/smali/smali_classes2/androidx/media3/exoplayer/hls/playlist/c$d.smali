.class public final Landroidx/media3/exoplayer/hls/playlist/c$d;
.super Landroidx/media3/exoplayer/hls/playlist/c$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/hls/playlist/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final l:Z

.field public final m:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/c$f;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    move/from16 v15, p15

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Landroidx/media3/exoplayer/hls/playlist/c$g;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/c$f;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZLandroidx/media3/exoplayer/hls/playlist/c$a;)V

    move/from16 v1, p16

    iput-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$d;->l:Z

    move/from16 v1, p17

    iput-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$d;->m:Z

    return-void
.end method


# virtual methods
.method public b(JI)Landroidx/media3/exoplayer/hls/playlist/c$d;
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move/from16 v6, p3

    new-instance v19, Landroidx/media3/exoplayer/hls/playlist/c$d;

    move-object/from16 v1, v19

    iget-object v2, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->a:Ljava/lang/String;

    iget-object v3, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->b:Landroidx/media3/exoplayer/hls/playlist/c$f;

    iget-wide v4, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->c:J

    iget-object v9, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->f:Landroidx/media3/common/DrmInitData;

    iget-object v10, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->g:Ljava/lang/String;

    iget-object v11, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->h:Ljava/lang/String;

    iget-wide v12, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->i:J

    iget-wide v14, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->j:J

    move-object/from16 p1, v1

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$g;->k:Z

    move/from16 v16, v1

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$d;->l:Z

    move/from16 v17, v1

    iget-boolean v1, v0, Landroidx/media3/exoplayer/hls/playlist/c$d;->m:Z

    move/from16 v18, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v18}, Landroidx/media3/exoplayer/hls/playlist/c$d;-><init>(Ljava/lang/String;Landroidx/media3/exoplayer/hls/playlist/c$f;JIJLandroidx/media3/common/DrmInitData;Ljava/lang/String;Ljava/lang/String;JJZZZ)V

    return-object v19
.end method
