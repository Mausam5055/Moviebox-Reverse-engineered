.class public final synthetic Lcom/transsion/room/helper/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lcom/transsion/room/helper/e;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/room/helper/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/room/helper/d;->a:Lcom/transsion/room/helper/e;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/room/helper/d;->a:Lcom/transsion/room/helper/e;

    invoke-static {v0, p1}, Lcom/transsion/room/helper/e;->e(Lcom/transsion/room/helper/e;Ljava/lang/Exception;)V

    return-void
.end method
