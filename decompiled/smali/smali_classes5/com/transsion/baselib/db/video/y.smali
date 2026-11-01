.class public final synthetic Lcom/transsion/baselib/db/video/y;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/transsion/baselib/db/video/y;->a:J

    iput-object p3, p0, Lcom/transsion/baselib/db/video/y;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/transsion/baselib/db/video/y;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-wide v0, p0, Lcom/transsion/baselib/db/video/y;->a:J

    iget-object v2, p0, Lcom/transsion/baselib/db/video/y;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/baselib/db/video/y;->c:Ljava/lang/String;

    check-cast p1, Lz3/b;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/transsion/baselib/db/video/n0;->x(JLjava/lang/String;Ljava/lang/String;Lz3/b;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
