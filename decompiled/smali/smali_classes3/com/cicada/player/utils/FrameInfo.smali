.class public Lcom/cicada/player/utils/FrameInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cicada/player/utils/FrameInfo$PixelFormat;,
        Lcom/cicada/player/utils/FrameInfo$SampleFormat;,
        Lcom/cicada/player/utils/FrameInfo$Rational;
    }
.end annotation


# static fields
.field public static final FrameType_audio:I = 0x2

.field public static final FrameType_unknow:I = 0x0

.field public static final FrameType_video:I = 0x1


# instance fields
.field public audio_channel_layout:J

.field public audio_channels:I

.field public audio_data:[[B

.field public audio_data_addr:[J

.field public audio_data_addr_lineSize:I

.field public audio_format:I

.field public audio_nb_samples:I

.field public audio_sample_rate:I

.field public duration:J

.field public frameType:I

.field public key:Z

.field public pts:J

.field public sei_data:[B

.field public sei_type:I

.field public timePosition:J

.field public video_colorRange:I

.field public video_colorSpace:I

.field public video_crop_bottom:I

.field public video_crop_left:I

.field public video_crop_right:I

.field public video_crop_top:I

.field public video_dar:D

.field public video_data:[[B

.field public video_data_addr:[J

.field public video_data_addr_lineSize:[I

.field public video_format:I

.field public video_glContext:J

.field public video_height:I

.field public video_rotate:I

.field public video_texture2D_id:[I

.field public video_textureOES_id:I

.field public video_textureOES_matrix:[F

.field public video_width:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data:[[B

    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data_addr:[J

    const/4 v1, 0x0

    iput v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data_addr_lineSize:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/cicada/player/utils/FrameInfo;->video_glContext:J

    const/4 v2, -0x1

    iput v2, p0, Lcom/cicada/player/utils/FrameInfo;->video_textureOES_id:I

    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->video_textureOES_matrix:[F

    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->video_data:[[B

    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->video_data_addr:[J

    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->video_data_addr_lineSize:[I

    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->video_texture2D_id:[I

    iput v1, p0, Lcom/cicada/player/utils/FrameInfo;->sei_type:I

    iput-object v0, p0, Lcom/cicada/player/utils/FrameInfo;->sei_data:[B

    return-void
.end method

.method private setAudioData([[B)V
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data:[[B

    return-void
.end method

.method private setAudioDataAddr([J)V
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data_addr:[J

    return-void
.end method

.method private setSEIData(I[B)V
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iput p1, p0, Lcom/cicada/player/utils/FrameInfo;->sei_type:I

    iput-object p2, p0, Lcom/cicada/player/utils/FrameInfo;->sei_data:[B

    return-void
.end method

.method private setVideoData([[B)V
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->video_data:[[B

    return-void
.end method

.method private setVideoDataAddr([J)V
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->video_data_addr:[J

    return-void
.end method

.method private setVideoDataAddrLineSize([I)V
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->video_data_addr_lineSize:[I

    return-void
.end method

.method private setVideoTextureOESMatrix([F)V
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->video_textureOES_matrix:[F

    return-void
.end method

.method private setVideo_texture2D_id([I)V
    .locals 0
    .annotation runtime Lcom/cicada/player/utils/NativeUsed;
    .end annotation

    iput-object p1, p0, Lcom/cicada/player/utils/FrameInfo;->video_texture2D_id:[I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrameInfo{frameType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->frameType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cicada/player/utils/FrameInfo;->pts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cicada/player/utils/FrameInfo;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/cicada/player/utils/FrameInfo;->key:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cicada/player/utils/FrameInfo;->timePosition:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", audio_format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audio_nb_samples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_nb_samples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audio_channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_channels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audio_sample_rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_sample_rate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", audio_channel_layout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_channel_layout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", audio_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->audio_data:[[B

    const-string v2, "null"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video_format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_format:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_rotate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_rotate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_crop_top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_crop_top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_crop_bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_crop_bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_crop_left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_crop_left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_crop_right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_crop_right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_colorRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_colorRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_colorSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_colorSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_glContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/cicada/player/utils/FrameInfo;->video_glContext:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", video_textureOES_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_textureOES_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", video_textureOES_matrix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_textureOES_matrix:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", video_data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_data:[[B

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", video_data_addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_data_addr:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", video_texture2D_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_texture2D_id:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", video_dar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cicada/player/utils/FrameInfo;->video_dar:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
