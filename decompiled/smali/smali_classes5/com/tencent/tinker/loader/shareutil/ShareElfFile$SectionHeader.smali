.class public Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tinker/loader/shareutil/ShareElfFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SectionHeader"
.end annotation


# instance fields
.field public final shAddr:J

.field public final shAddrAlign:J

.field public final shEntSize:J

.field public final shFlags:J

.field public final shInfo:I

.field public final shLink:I

.field public final shName:I

.field public shNameStr:Ljava/lang/String;

.field public final shOffset:J

.field public final shSize:J

.field public final shType:I


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shName:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shType:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shFlags:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shAddr:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shOffset:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shSize:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shLink:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shInfo:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shAddrAlign:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shEntSize:J

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected elf class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shName:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shType:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shFlags:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shAddr:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shOffset:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shSize:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shLink:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iput p2, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shInfo:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shAddrAlign:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shEntSize:J

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;->shNameStr:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;ILcom/tencent/tinker/loader/shareutil/ShareElfFile$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/tencent/tinker/loader/shareutil/ShareElfFile$SectionHeader;-><init>(Ljava/nio/ByteBuffer;I)V

    return-void
.end method
