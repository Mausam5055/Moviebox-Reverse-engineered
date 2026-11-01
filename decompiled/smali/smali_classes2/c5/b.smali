.class public Lc5/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/ws/rs/ext/MessageBodyReader;
.implements Ljavax/ws/rs/ext/MessageBodyWriter;


# static fields
.field public static final f:[Ljava/lang/Class;

.field public static final g:[Ljava/lang/Class;


# instance fields
.field protected a:Ljava/nio/charset/Charset;

.field protected b:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

.field protected c:[La5/h1;

.field private d:Lb5/a;

.field private e:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Ljava/io/InputStream;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-class v4, Ljava/io/Reader;

    const/4 v5, 0x1

    aput-object v4, v2, v5

    sput-object v2, Lc5/b;->f:[Ljava/lang/Class;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v0, v2, v3

    const-class v0, Ljava/io/OutputStream;

    aput-object v0, v2, v5

    const-class v0, Ljava/io/Writer;

    aput-object v0, v2, v1

    const-class v0, Ljavax/ws/rs/core/StreamingOutput;

    const/4 v1, 0x3

    aput-object v0, v2, v1

    const-class v0, Ljavax/ws/rs/core/Response;

    const/4 v1, 0x4

    aput-object v0, v2, v1

    sput-object v2, Lc5/b;->g:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lc5/b;->a:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iput-object v1, p0, Lc5/b;->b:[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    new-array v0, v0, [La5/h1;

    iput-object v0, p0, Lc5/b;->c:[La5/h1;

    new-instance v0, Lb5/a;

    invoke-direct {v0}, Lb5/a;-><init>()V

    iput-object v0, p0, Lc5/b;->d:Lb5/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lc5/b;->e:[Ljava/lang/Class;

    return-void
.end method
