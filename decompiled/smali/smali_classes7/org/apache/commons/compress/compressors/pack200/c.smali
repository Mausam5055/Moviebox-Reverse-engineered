.class Lorg/apache/commons/compress/compressors/pack200/c;
.super Lorg/apache/commons/compress/compressors/pack200/b;


# instance fields
.field private final b:Ljava/io/File;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/pack200/b;-><init>()V

    const-string v0, "commons-compress"

    const-string v1, "packtemp"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/pack200/c;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    invoke-static {v0}, Ld7/b;->a(Ljava/io/File;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v1}, Lokio/e;->a(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method
