.class public Lcv/g;
.super Lcv/e;


# instance fields
.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcv/e;-><init>(Ljava/lang/String;JLjava/util/List;)V

    iput-object p2, p0, Lcv/g;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected e()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcv/g;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcv/g;->d:Ljava/lang/String;

    return-object v0
.end method
