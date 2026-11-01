.class public final synthetic Lcom/transsion/compressor/image/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/transsion/compressor/image/h;

.field public final synthetic b:Lcom/transsion/compressor/image/d;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/compressor/image/h;Lcom/transsion/compressor/image/d;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/compressor/image/g;->a:Lcom/transsion/compressor/image/h;

    iput-object p2, p0, Lcom/transsion/compressor/image/g;->b:Lcom/transsion/compressor/image/d;

    iput-object p3, p0, Lcom/transsion/compressor/image/g;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/compressor/image/g;->a:Lcom/transsion/compressor/image/h;

    iget-object v1, p0, Lcom/transsion/compressor/image/g;->b:Lcom/transsion/compressor/image/d;

    iget-object v2, p0, Lcom/transsion/compressor/image/g;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/transsion/compressor/image/h;->a(Lcom/transsion/compressor/image/h;Lcom/transsion/compressor/image/d;Landroid/content/Context;)V

    return-void
.end method
