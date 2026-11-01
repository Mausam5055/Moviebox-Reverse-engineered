.class public final Lcom/transsion/mpush/core/db/PushDatabase$a;
.super Ly3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/mpush/core/db/PushDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Ly3/c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public a(La4/d;)V
    .locals 3

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/transsion/mpush/core/db/PushDatabase;->p:Lcom/transsion/mpush/core/db/PushDatabase$b;

    const-string v1, "msg_standard"

    const-string v2, "push_time"

    invoke-static {v0, p1, v1, v2}, Lcom/transsion/mpush/core/db/PushDatabase$b;->a(Lcom/transsion/mpush/core/db/PushDatabase$b;La4/d;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALTER TABLE msg_standard ADD COLUMN push_time TEXT"

    invoke-interface {p1, v0}, La4/d;->E(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
