.class public Lcom/pgl/ssdk/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pgl/ssdk/d$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/pgl/ssdk/o;Lcom/pgl/ssdk/r;)Lcom/pgl/ssdk/d$a;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pgl/ssdk/b;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/pgl/ssdk/r;->a()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/pgl/ssdk/r;->c()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p1}, Lcom/pgl/ssdk/r;->e()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_5

    const-wide/16 v2, 0x20

    cmp-long p1, v0, v2

    if-ltz p1, :cond_4

    const-wide/16 v2, 0x18

    sub-long v2, v0, v2

    const/16 p1, 0x18

    invoke-interface {p0, v2, v3, p1}, Lcom/pgl/ssdk/o;->a(JI)Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    const-wide v6, 0x20676953204b5041L

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    const/16 v4, 0x10

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v4

    const-wide v6, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-ltz p1, :cond_2

    const-wide/32 v7, 0x7ffffff7

    cmp-long p1, v5, v7

    if-gtz p1, :cond_2

    const-wide/16 v7, 0x8

    add-long/2addr v7, v5

    long-to-int p1, v7

    int-to-long v7, p1

    sub-long/2addr v0, v7

    const-wide/16 v9, 0x0

    cmp-long p1, v0, v9

    if-ltz p1, :cond_1

    invoke-interface {p0, v0, v1, v3}, Lcom/pgl/ssdk/o;->a(JI)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    cmp-long p1, v2, v5

    if-nez p1, :cond_0

    new-instance p1, Lcom/pgl/ssdk/d$a;

    invoke-interface {p0, v0, v1, v7, v8}, Lcom/pgl/ssdk/o;->a(JJ)Lcom/pgl/ssdk/o;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/pgl/ssdk/d$a;-><init>(JLcom/pgl/ssdk/o;)V

    return-object p1

    :cond_0
    new-instance p0, Lcom/pgl/ssdk/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "APK Signing Block sizes in header and footer do not match: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " vs "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pgl/ssdk/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/pgl/ssdk/b;

    const-string p1, "APK Signing Block offset out of range: "

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pgl/ssdk/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/pgl/ssdk/b;

    const-string p1, "APK Signing Block size out of range: "

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pgl/ssdk/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lcom/pgl/ssdk/b;

    const-string p1, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {p0, p1}, Lcom/pgl/ssdk/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/pgl/ssdk/b;

    const-string p1, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pgl/ssdk/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lcom/pgl/ssdk/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ZIP Central Directory is not immediately followed by End of Central Directory. CD end: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", EoCD start: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/pgl/ssdk/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/pgl/ssdk/o;)Lcom/pgl/ssdk/r;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pgl/ssdk/q;
        }
    .end annotation

    invoke-static {p0}, Lcom/pgl/ssdk/n;->a(Lcom/pgl/ssdk/o;)Lcom/pgl/ssdk/m;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/pgl/ssdk/m;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lcom/pgl/ssdk/m;->b()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {v9}, Lcom/pgl/ssdk/n;->c(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    cmp-long p0, v2, v7

    if-gtz p0, :cond_1

    invoke-static {v9}, Lcom/pgl/ssdk/n;->d(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    add-long v0, v2, v4

    cmp-long p0, v0, v7

    if-gtz p0, :cond_0

    invoke-static {v9}, Lcom/pgl/ssdk/n;->e(Ljava/nio/ByteBuffer;)I

    move-result v6

    new-instance p0, Lcom/pgl/ssdk/r;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/pgl/ssdk/r;-><init>(JJIJLjava/nio/ByteBuffer;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/pgl/ssdk/q;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ZIP Central Directory overlaps with End of Central Directory. CD end: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", EoCD start: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pgl/ssdk/q;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/pgl/ssdk/q;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZIP Central Directory start offset out of range: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ". ZIP End of Central Directory offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pgl/ssdk/q;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lcom/pgl/ssdk/q;

    const-string v0, "ZIP End of Central Directory record not found"

    invoke-direct {p0, v0}, Lcom/pgl/ssdk/q;-><init>(Ljava/lang/String;)V

    throw p0
.end method
