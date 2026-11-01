.class Lcom/transsion/push/utils/m$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/transsion/push/utils/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/push/utils/m;->b(ILjava/util/List;Lcom/transsion/push/utils/m$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lcom/transsion/push/utils/m$d;


# direct methods
.method constructor <init>(Ljava/util/HashMap;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/transsion/push/utils/m$d;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/push/utils/m$a;->a:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/transsion/push/utils/m$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p3, p0, Lcom/transsion/push/utils/m$a;->c:Lcom/transsion/push/utils/m$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/push/utils/m$a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/transsion/push/utils/m$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/push/utils/m$a;->c:Lcom/transsion/push/utils/m$d;

    iget-object p2, p0, Lcom/transsion/push/utils/m$a;->a:Ljava/util/HashMap;

    invoke-interface {p1, p2}, Lcom/transsion/push/utils/m$d;->a(Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method
