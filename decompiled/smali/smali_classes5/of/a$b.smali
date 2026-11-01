.class Lof/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lgf/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lof/a;->y([B)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/ByteArrayOutputStream;

.field final synthetic b:Lof/a;


# direct methods
.method constructor <init>(Lof/a;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    iput-object p1, p0, Lof/a$b;->b:Lof/a;

    iput-object p2, p0, Lof/a$b;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public writeByte(I)V
    .locals 1

    iget-object v0, p0, Lof/a$b;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method
