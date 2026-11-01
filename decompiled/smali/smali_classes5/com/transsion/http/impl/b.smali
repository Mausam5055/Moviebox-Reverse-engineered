.class Lcom/transsion/http/impl/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/BitmapCallback;->s(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:I

.field final synthetic c:Lcom/transsion/http/impl/BitmapCallback;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/BitmapCallback;[BI)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/http/impl/b;->c:Lcom/transsion/http/impl/BitmapCallback;

    iput-object p2, p0, Lcom/transsion/http/impl/b;->a:[B

    iput p3, p0, Lcom/transsion/http/impl/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/http/impl/b;->c:Lcom/transsion/http/impl/BitmapCallback;

    iget-object v1, p0, Lcom/transsion/http/impl/b;->a:[B

    invoke-static {v0, v1}, Lcom/transsion/http/impl/BitmapCallback;->w(Lcom/transsion/http/impl/BitmapCallback;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/http/impl/b;->c:Lcom/transsion/http/impl/BitmapCallback;

    new-instance v2, Lcom/transsion/http/impl/a;

    invoke-direct {v2, p0, v0}, Lcom/transsion/http/impl/a;-><init>(Lcom/transsion/http/impl/b;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/transsion/http/impl/q;->h(Ljava/lang/Runnable;)V

    return-void
.end method
