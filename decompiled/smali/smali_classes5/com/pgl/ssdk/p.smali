.class public abstract Lcom/pgl/ssdk/p;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/RandomAccessFile;JJ)Lcom/pgl/ssdk/o;
    .locals 0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/pgl/ssdk/p;->a(Ljava/nio/channels/FileChannel;JJ)Lcom/pgl/ssdk/o;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/nio/channels/FileChannel;JJ)Lcom/pgl/ssdk/o;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/pgl/ssdk/l;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/pgl/ssdk/l;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    return-object v6
.end method
