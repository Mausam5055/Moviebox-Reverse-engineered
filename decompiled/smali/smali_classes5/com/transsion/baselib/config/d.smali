.class public final synthetic Lcom/transsion/baselib/config/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/transsion/baselib/config/e;

.field public final synthetic b:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/baselib/config/e;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/baselib/config/d;->a:Lcom/transsion/baselib/config/e;

    iput-object p2, p0, Lcom/transsion/baselib/config/d;->b:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/baselib/config/d;->a:Lcom/transsion/baselib/config/e;

    iget-object v1, p0, Lcom/transsion/baselib/config/d;->b:Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p1}, Lcom/transsion/baselib/config/e;->b(Lcom/transsion/baselib/config/e;Lkotlin/jvm/functions/Function2;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
