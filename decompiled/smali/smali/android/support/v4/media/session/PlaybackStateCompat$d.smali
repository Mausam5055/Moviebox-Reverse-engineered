.class public final Landroid/support/v4/media/session/PlaybackStateCompat$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/List;

.field private b:I

.field private c:J

.field private d:J

.field private e:F

.field private f:J

.field private g:I

.field private h:Ljava/lang/CharSequence;

.field private i:J

.field private j:J

.field private k:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->a:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->j:J

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->a:Ljava/util/List;

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->j:J

    iget v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    iput v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->b:I

    iget-wide v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mPosition:J

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->c:J

    iget v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mSpeed:F

    iput v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->e:F

    iget-wide v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mUpdateTime:J

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->i:J

    iget-wide v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mBufferedPosition:J

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->d:J

    iget-wide v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    iput-wide v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->f:J

    iget v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorCode:I

    iput v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->g:I

    iget-object v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mErrorMessage:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->h:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mCustomActions:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-wide v0, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActiveItemId:J

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->j:J

    iget-object p1, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mExtras:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->k:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 21

    move-object/from16 v0, p0

    new-instance v18, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object/from16 v1, v18

    iget v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->b:I

    iget-wide v3, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->c:J

    iget-wide v5, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->d:J

    iget v7, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->e:F

    iget-wide v8, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->f:J

    iget v10, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->g:I

    iget-object v11, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->h:Ljava/lang/CharSequence;

    iget-wide v12, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->i:J

    iget-object v14, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->a:Ljava/util/List;

    move-object/from16 v19, v1

    move/from16 v20, v2

    iget-wide v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->j:J

    move-wide v15, v1

    iget-object v1, v0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->k:Landroid/os/Bundle;

    move-object/from16 v17, v1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct/range {v1 .. v17}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    return-object v18
.end method

.method public b(J)Landroid/support/v4/media/session/PlaybackStateCompat$d;
    .locals 0

    iput-wide p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->f:J

    return-object p0
.end method

.method public c(IJF)Landroid/support/v4/media/session/PlaybackStateCompat$d;
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/media/session/PlaybackStateCompat$d;->d(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$d;

    move-result-object p1

    return-object p1
.end method

.method public d(IJFJ)Landroid/support/v4/media/session/PlaybackStateCompat$d;
    .locals 0

    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->b:I

    iput-wide p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->c:J

    iput-wide p5, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->i:J

    iput p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat$d;->e:F

    return-object p0
.end method
