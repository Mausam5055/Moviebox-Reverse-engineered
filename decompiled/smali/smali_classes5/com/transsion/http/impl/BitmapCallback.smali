.class public abstract Lcom/transsion/http/impl/BitmapCallback;
.super Lcom/transsion/http/impl/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/http/impl/q;-><init>()V

    return-void
.end method

.method static synthetic w(Lcom/transsion/http/impl/BitmapCallback;[B)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/http/impl/BitmapCallback;->x([B)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private x([B)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcm/a;->f(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public m(I[BLjava/lang/Throwable;)V
    .locals 0

    new-instance p2, Lcom/transsion/http/impl/c;

    invoke-direct {p2, p0, p1, p3}, Lcom/transsion/http/impl/c;-><init>(Lcom/transsion/http/impl/BitmapCallback;ILjava/lang/Throwable;)V

    invoke-virtual {p0, p2}, Lcom/transsion/http/impl/q;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s(I[B)V
    .locals 1

    new-instance v0, Lcom/transsion/http/impl/b;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/http/impl/b;-><init>(Lcom/transsion/http/impl/BitmapCallback;[BI)V

    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->k()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/transsion/http/impl/q;->j()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public abstract y(ILandroid/graphics/Bitmap;Ljava/lang/Throwable;)V
.end method

.method public abstract z(ILandroid/graphics/Bitmap;)V
.end method
