.class public final synthetic Lmn/l;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lmn/o;

.field public final synthetic b:Lcom/transsion/mpush/api/PermanentPushMessage;


# direct methods
.method public synthetic constructor <init>(Lmn/o;Lcom/transsion/mpush/api/PermanentPushMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmn/l;->a:Lmn/o;

    iput-object p2, p0, Lmn/l;->b:Lcom/transsion/mpush/api/PermanentPushMessage;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmn/l;->a:Lmn/o;

    iget-object v1, p0, Lmn/l;->b:Lcom/transsion/mpush/api/PermanentPushMessage;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, p1}, Lmn/o;->f(Lmn/o;Lcom/transsion/mpush/api/PermanentPushMessage;Lz3/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
