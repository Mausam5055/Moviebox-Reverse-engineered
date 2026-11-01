.class Lcom/transsion/compressor/image/h$a$a;
.super Lcom/transsion/compressor/image/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/compressor/image/h$a;->l(Ljava/lang/String;)Lcom/transsion/compressor/image/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/transsion/compressor/image/h$a;


# direct methods
.method constructor <init>(Lcom/transsion/compressor/image/h$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/compressor/image/h$a$a;->c:Lcom/transsion/compressor/image/h$a;

    iput-object p2, p0, Lcom/transsion/compressor/image/h$a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/compressor/image/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 2

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/transsion/compressor/image/h$a$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/compressor/image/h$a$a;->b:Ljava/lang/String;

    return-object v0
.end method
