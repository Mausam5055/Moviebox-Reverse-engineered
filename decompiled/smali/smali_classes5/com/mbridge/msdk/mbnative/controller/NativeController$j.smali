.class Lcom/mbridge/msdk/mbnative/controller/NativeController$j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mbridge/msdk/foundation/same/task/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/mbnative/controller/NativeController;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/view/View;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/mbnative/controller/NativeController$s;

.field final synthetic b:Lcom/mbridge/msdk/mbnative/controller/NativeController;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/mbnative/controller/NativeController;Lcom/mbridge/msdk/mbnative/controller/NativeController$s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$j;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    iput-object p2, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$j;->a:Lcom/mbridge/msdk/mbnative/controller/NativeController$s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/foundation/same/task/a$b;)V
    .locals 1

    sget-object v0, Lcom/mbridge/msdk/foundation/same/task/a$b;->e:Lcom/mbridge/msdk/foundation/same/task/a$b;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$j;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->o(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$j;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->o(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$j;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->o(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$j;->a:Lcom/mbridge/msdk/mbnative/controller/NativeController$s;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$j;->b:Lcom/mbridge/msdk/mbnative/controller/NativeController;

    invoke-static {p1}, Lcom/mbridge/msdk/mbnative/controller/NativeController;->o(Lcom/mbridge/msdk/mbnative/controller/NativeController;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/mbridge/msdk/mbnative/controller/NativeController$j;->a:Lcom/mbridge/msdk/mbnative/controller/NativeController$s;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
