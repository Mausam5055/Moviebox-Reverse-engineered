.class Lof/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lgf/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lof/a;->y([B)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/ByteArrayInputStream;

.field final synthetic b:Lof/a;


# direct methods
.method constructor <init>(Lof/a;Ljava/io/ByteArrayInputStream;)V
    .locals 0

    iput-object p1, p0, Lof/a$a;->b:Lof/a;

    iput-object p2, p0, Lof/a$a;->a:Ljava/io/ByteArrayInputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readByte()B
    .locals 1

    iget-object v0, p0, Lof/a$a;->a:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method
