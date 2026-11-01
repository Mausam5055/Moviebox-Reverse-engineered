.class public Lcom/transsion/transfer/androidasync/a0;
.super Ljava/lang/Object;


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V
    .locals 4

    const/4 v0, 0x0

    :cond_0
    invoke-interface {p0}, Lcom/transsion/transfer/androidasync/p;->isPaused()Z

    move-result v1

    const-string v2, "handler: "

    if-nez v1, :cond_2

    invoke-interface {p0}, Lcom/transsion/transfer/androidasync/p;->I()Lbv/d;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0, p0, p1}, Lbv/d;->F(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/ByteBufferList;)V

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v3

    if-ne v1, v3, :cond_0

    invoke-interface {p0}, Lcom/transsion/transfer/androidasync/p;->I()Lbv/d;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/transsion/transfer/androidasync/p;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    sget-boolean p0, Lcom/transsion/transfer/androidasync/a0;->a:Z

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "mDataHandler failed to consume data, yet remains the mDataHandler."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->C()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/transsion/transfer/androidasync/p;->isPaused()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emitter: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;->B()V

    :cond_3
    return-void
.end method

.method public static b(Lbv/a;Ljava/lang/Exception;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lbv/a;->g(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static c(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/s;Lbv/a;)V
    .locals 1

    new-instance v0, Lcom/transsion/transfer/androidasync/a0$f;

    invoke-direct {v0, p1}, Lcom/transsion/transfer/androidasync/a0$f;-><init>(Lcom/transsion/transfer/androidasync/s;)V

    invoke-interface {p0, v0}, Lcom/transsion/transfer/androidasync/p;->t(Lbv/d;)V

    new-instance v0, Lcom/transsion/transfer/androidasync/a0$g;

    invoke-direct {v0, p0}, Lcom/transsion/transfer/androidasync/a0$g;-><init>(Lcom/transsion/transfer/androidasync/p;)V

    invoke-interface {p1, v0}, Lcom/transsion/transfer/androidasync/s;->o(Lbv/j;)V

    new-instance v0, Lcom/transsion/transfer/androidasync/a0$h;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/transfer/androidasync/a0$h;-><init>(Lcom/transsion/transfer/androidasync/p;Lcom/transsion/transfer/androidasync/s;Lbv/a;)V

    invoke-interface {p0, v0}, Lcom/transsion/transfer/androidasync/p;->s(Lbv/a;)V

    new-instance p0, Lcom/transsion/transfer/androidasync/a0$i;

    invoke-direct {p0, v0}, Lcom/transsion/transfer/androidasync/a0$i;-><init>(Lbv/a;)V

    invoke-interface {p1, p0}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    return-void
.end method

.method public static d(Ljava/io/InputStream;JLcom/transsion/transfer/androidasync/s;Lbv/a;)V
    .locals 7

    new-instance v6, Lcom/transsion/transfer/androidasync/a0$b;

    invoke-direct {v6, p4}, Lcom/transsion/transfer/androidasync/a0$b;-><init>(Lbv/a;)V

    new-instance p4, Lcom/transsion/transfer/androidasync/a0$c;

    move-object v0, p4

    move-object v1, p3

    move-object v2, p0

    move-wide v3, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/transsion/transfer/androidasync/a0$c;-><init>(Lcom/transsion/transfer/androidasync/s;Ljava/io/InputStream;JLbv/a;)V

    invoke-interface {p3, p4}, Lcom/transsion/transfer/androidasync/s;->o(Lbv/j;)V

    invoke-interface {p3, v6}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    invoke-interface {p4}, Lbv/j;->a()V

    return-void
.end method

.method public static e(Ljava/io/InputStream;JLcom/transsion/transfer/androidasync/s;Lbv/a;Lbv/e;)V
    .locals 8

    new-instance v7, Lcom/transsion/transfer/androidasync/a0$d;

    invoke-direct {v7, p4}, Lcom/transsion/transfer/androidasync/a0$d;-><init>(Lbv/a;)V

    new-instance p4, Lcom/transsion/transfer/androidasync/a0$e;

    move-object v0, p4

    move-object v1, p3

    move-object v2, p0

    move-wide v3, p1

    move-object v5, v7

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/transsion/transfer/androidasync/a0$e;-><init>(Lcom/transsion/transfer/androidasync/s;Ljava/io/InputStream;JLbv/a;Lbv/e;)V

    invoke-interface {p3, p4}, Lcom/transsion/transfer/androidasync/s;->o(Lbv/j;)V

    invoke-interface {p3, v7}, Lcom/transsion/transfer/androidasync/s;->p(Lbv/a;)V

    invoke-interface {p4}, Lbv/j;->a()V

    return-void
.end method

.method public static f(Ljava/io/InputStream;Lcom/transsion/transfer/androidasync/s;Lbv/a;)V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    invoke-static {p0, v0, v1, p1, p2}, Lcom/transsion/transfer/androidasync/a0;->d(Ljava/io/InputStream;JLcom/transsion/transfer/androidasync/s;Lbv/a;)V

    return-void
.end method

.method public static g(Lcom/transsion/transfer/androidasync/s;Lcom/transsion/transfer/androidasync/ByteBufferList;Lbv/a;)V
    .locals 1

    new-instance v0, Lcom/transsion/transfer/androidasync/a0$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/transsion/transfer/androidasync/a0$a;-><init>(Lcom/transsion/transfer/androidasync/s;Lcom/transsion/transfer/androidasync/ByteBufferList;Lbv/a;)V

    invoke-interface {p0, v0}, Lcom/transsion/transfer/androidasync/s;->o(Lbv/j;)V

    invoke-interface {v0}, Lbv/j;->a()V

    return-void
.end method

.method public static h(Lcom/transsion/transfer/androidasync/s;[BLbv/a;)V
    .locals 1

    array-length v0, p1

    invoke-static {v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->t(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance p1, Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-direct {p1}, Lcom/transsion/transfer/androidasync/ByteBufferList;-><init>()V

    invoke-virtual {p1, v0}, Lcom/transsion/transfer/androidasync/ByteBufferList;->a(Ljava/nio/ByteBuffer;)Lcom/transsion/transfer/androidasync/ByteBufferList;

    invoke-static {p0, p1, p2}, Lcom/transsion/transfer/androidasync/a0;->g(Lcom/transsion/transfer/androidasync/s;Lcom/transsion/transfer/androidasync/ByteBufferList;Lbv/a;)V

    return-void
.end method
