.class public final Lxf/d;
.super Lxf/c;


# instance fields
.field private final a:[B

.field private final b:I

.field private final c:I

.field private final d:Ljava/nio/ByteOrder;

.field private e:I


# direct methods
.method constructor <init>([BIILjava/nio/ByteOrder;)V
    .locals 0

    invoke-direct {p0}, Lxf/c;-><init>()V

    iput-object p1, p0, Lxf/d;->a:[B

    iput p2, p0, Lxf/d;->b:I

    iput p3, p0, Lxf/d;->c:I

    iput-object p4, p0, Lxf/d;->d:Ljava/nio/ByteOrder;

    return-void
.end method

.method public static e([BIILjava/nio/ByteOrder;)Lxf/c;
    .locals 1

    new-instance v0, Lxf/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lxf/d;-><init>([BIILjava/nio/ByteOrder;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 3

    iget-object v0, p0, Lxf/d;->a:[B

    iget v1, p0, Lxf/d;->b:I

    iget v2, p0, Lxf/d;->e:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lxf/d;->d:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Lxf/e;->a([BILjava/nio/ByteOrder;)I

    move-result v0

    iget v1, p0, Lxf/d;->e:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lxf/d;->e:I

    return v0
.end method

.method public b()S
    .locals 3

    iget-object v0, p0, Lxf/d;->a:[B

    iget v1, p0, Lxf/d;->b:I

    iget v2, p0, Lxf/d;->e:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lxf/d;->d:Ljava/nio/ByteOrder;

    invoke-static {v0, v1, v2}, Lxf/e;->b([BILjava/nio/ByteOrder;)S

    move-result v0

    iget v1, p0, Lxf/d;->e:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lxf/d;->e:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lxf/d;->e:I

    return-void
.end method

.method public d(I)V
    .locals 1

    iget v0, p0, Lxf/d;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lxf/d;->e:I

    return-void
.end method
