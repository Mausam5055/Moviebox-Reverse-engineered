.class public final synthetic Lcom/transsion/mpush/core/fcm/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/mpush/core/fcm/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/transsion/mpush/core/fcm/l;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/mpush/core/fcm/l;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/mpush/core/fcm/l;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, p1}, Lcom/transsion/mpush/core/fcm/m;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
