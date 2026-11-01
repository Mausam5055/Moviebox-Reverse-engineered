.class Lcom/transsion/http/impl/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/http/impl/BitmapCallback;->m(I[BLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/transsion/http/impl/BitmapCallback;


# direct methods
.method constructor <init>(Lcom/transsion/http/impl/BitmapCallback;ILjava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/http/impl/c;->c:Lcom/transsion/http/impl/BitmapCallback;

    iput p2, p0, Lcom/transsion/http/impl/c;->a:I

    iput-object p3, p0, Lcom/transsion/http/impl/c;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/http/impl/c;->c:Lcom/transsion/http/impl/BitmapCallback;

    iget v1, p0, Lcom/transsion/http/impl/c;->a:I

    iget-object v2, p0, Lcom/transsion/http/impl/c;->b:Ljava/lang/Throwable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/transsion/http/impl/BitmapCallback;->y(ILandroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    return-void
.end method
