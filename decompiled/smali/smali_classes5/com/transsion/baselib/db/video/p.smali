.class public final synthetic Lcom/transsion/baselib/db/video/p;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/baselib/db/video/p;->a:J

    iput p3, p0, Lcom/transsion/baselib/db/video/p;->b:I

    iput-object p4, p0, Lcom/transsion/baselib/db/video/p;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-wide v0, p0, Lcom/transsion/baselib/db/video/p;->a:J

    iget v2, p0, Lcom/transsion/baselib/db/video/p;->b:I

    iget-object v3, p0, Lcom/transsion/baselib/db/video/p;->c:Ljava/lang/String;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/baselib/db/video/q;->k(JILjava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
